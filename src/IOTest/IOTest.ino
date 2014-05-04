//#define LTC2309_CALC_FLOAT

#include <EEPROM.h>
#include <SPI.h>
#include <GD2.h>
#include <Wire.h>
#include "structs.h"
#include <PinChangeInt.h>
#include <PinChangeIntConfig.h>

#include "TCA9535.h"
#include "LTC2309.h"

#include "Channel.h"
#include "Channels.h"

const int kAddr9535 = 0x20;
const int kAddr2309 = 0x08;

TCA9535 digiIo(kAddr9535);
LTC2309 analogIn(kAddr2309);
Channels<3> channels(&analogIn);

float powLUT[50];

#include "ExpoWidget.h"
#include "MainScreen.h"
#include "CalibrationScreen.h"



/////////////////////////////////////////////////////////
// EEPROM Layout:
// 0-24 => Gameduino Calibration
// 25 => 0xA0 if channels are calibrated
// 26-xx => Channel data



void setup() {
  
  for(int i=0;i<50;i++)
  {
    float x = (float)i/50.0;
    powLUT[i] = pow(x, 3.0f);
  }
  
  // put your setup code here, to run once:  
  Serial.begin(115200);
  Wire.begin();
  
#ifdef LTC2309_CALC_FLOAT
  analogIn.calibrate(0x64A, 0xa9F, 0.0, 1.0);
#endif

  digiIo.begin();

  digiIo.configuration(0).value = 0x00;
  digiIo.configuration(1).value = 0x01;
  digiIo.writeConfiguration();
  
  InterruptHelper::begin(A15);
  
  GD.begin();
}

int i=0;

uint16_t s_currentScreen = 0; 
float dur = 0.0f;

unsigned long lastTime = millis();

void loop() {

  unsigned long newTime = millis();
  
  dur = (dur*0.9f) + ((float)(newTime - lastTime)*0.1f);
  
  lastTime = newTime;
  
  InterruptHelper::process(&digiIo);
  channels.update();
  
  GD.get_inputs();
  
  if(channels.isCalibrating())
  {
    CalibrationScreen::loop();
  }
  else
  {
    if(s_currentScreen == 0)
    {
      MainScreen::loop();  
    }
  }
  
  GD.cmd_number(480-30,0, 26, 0, 1000.0/dur);


  GD.swap();
  
  
/*  char p1Msg[20];
  char p2Msg[20];
  char p3Msg[20];


 
  
  sprintf(p1Msg, "Port 0: %i%i%i%i%i%i%i%i", 
               digiIo.in(0).pins.pin0==1,
               digiIo.in(0).pins.pin1==1,
               digiIo.in(0).pins.pin2==1,
               digiIo.in(0).pins.pin3==1,
               digiIo.in(0).pins.pin4==1,
               digiIo.in(0).pins.pin5==1,
               digiIo.in(0).pins.pin6==1,
               digiIo.in(0).pins.pin7==1
               );
  sprintf(p2Msg, "Port 1: %i%i%i%i%i%i%i%i", 
               digiIo.in(1).pins.pin0==1,
               digiIo.in(1).pins.pin1==1,
               digiIo.in(1).pins.pin2==1,
               digiIo.in(1).pins.pin3==1,
               digiIo.in(1).pins.pin4==1,
               digiIo.in(1).pins.pin5==1,
               digiIo.in(1).pins.pin6==1,
               digiIo.in(1).pins.pin7==1
               );
  // 480x272
 
  char msg[20];
  
  sprintf(msg, "%i: %i", i, InterruptHelper::dbgChangeCount());

  GD.get_inputs();
  
  // put your main code here, to run repeatedly:
  GD.cmd_gradient(0, 0,   0, 480, 480, 0x7F7F7F);
   
  
  GD.ColorRGB(0xFFFFFF);
  GD.Tag(255);
  GD.cmd_text(0, 30, 30, 0, p1Msg);
  GD.cmd_text(0, 62, 30, 0, p2Msg);
  GD.cmd_text(0, 94, 30, 0, p3Msg);
  GD.cmd_text(0, 126, 30, 0, msg);
  
  
  GD.Begin(RECTS);
  GD.Vertex2ii(480-100, 0);
  GD.Vertex2ii(480, 100);
/*
  int x = (int)(v0.floatValue*100.0f);
  int y = (int)(v1.floatValue*100.0f);

  GD.ColorRGB(0);
  GD.PointSize(16*5);
  GD.Begin(POINTS);
  GD.Vertex2ii(y+(480-100), x);
  */  
  
  
  i++;
  
  
}
