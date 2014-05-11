#pragma once

//////////////////////CONFIGURATION///////////////////////////////
#define default_servo_value 1500  //set the default servo value
#define PPM_FrLen 22500  //set the PPM frame length in microseconds (1ms = 1000µs)
#define PPM_PulseLen 300  //set the pulse length
#define onState 1  //set polarity of the pulses: 1 is positive, 0 is negative
//////////////////////////////////////////////////////////////////

namespace PPMGen
{
  int s_ppmValues[NUM_TX_CHANNELS];
  
  void begin()
  {
    //initiallize default ppm values
    for(int i=0; i<NUM_TX_CHANNELS; i++){
      s_ppmValues[i]= default_servo_value;
    }
    
    pinMode(PPM_OUT_PIN, OUTPUT);
    digitalWrite(PPM_OUT_PIN, !onState);  //set the PPM signal pin to the default state (off)
    
    cli();
    TCCR1A = 0; // set entire TCCR1 register to 0
    TCCR1B = 0;
    
    OCR1A = 100;  // compare match register, change this
    TCCR1B |= (1 << WGM12);  // turn on CTC mode
    TCCR1B |= (1 << CS11);  // 8 prescaler: 0,5 microseconds at 16mhz
    TIMSK1 |= (1 << OCIE1A); // enable timer compare interrupt
    sei();
  }
  
  void setPPMValue(byte channelNumber, int value)
  {
    s_ppmValues[channelNumber] = value;
  }
  
  void setPPMValue(byte channelNumber, float value)
  {
    int v = (value*(float)(PPM_MAX_VALUE - PPM_MIN_VALUE)) + PPM_MIN_VALUE;
    setPPMValue(channelNumber, v); 
  }
  
  
}


ISR(TIMER1_COMPA_vect){  //leave this alone
  static boolean state = true;
  
  TCNT1 = 0;
  
  if(state) {  //start pulse
    digitalWrite(PPM_OUT_PIN, onState);
    OCR1A = PPM_PulseLen * 2;
    state = false;
    
  }
  else{  //end pulse and calculate when to start the next pulse
    static byte cur_chan_numb;
    static unsigned int calc_rest;
  
    digitalWrite(PPM_OUT_PIN, !onState);
    state = true;

    if(cur_chan_numb >= NUM_TX_CHANNELS){
    //digitalWrite(9, HIGH);
      cur_chan_numb = 0;
      calc_rest = calc_rest + PPM_PulseLen;// 
      OCR1A = (PPM_FrLen - calc_rest) * 2;
      calc_rest = 0;
    }
    else{
    //digitalWrite(9, LOW);
      OCR1A = (PPMGen::s_ppmValues[cur_chan_numb] - PPM_PulseLen) * 2;
      calc_rest = calc_rest + PPMGen::s_ppmValues[cur_chan_numb];
      cur_chan_numb++;
    }     
  }
}
