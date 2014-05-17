#include <EEPROM.h>
#include <SPI.h>
#include <GD2.h>
#include <Wire.h>

#include <PinChangeInt.h>
#include <PinChangeIntConfig.h>

#include "TCA9535.h"
#include "LTC2309.h"

#include "powlut.h"

#include "Color.h"


#include "ExpoFilter.h"
#include "PointCurveFilter.h"
#include "LinearFilter.h"

const int kAddr9535 = 0x20;
const int kAddr2309 = 0x08;

#define NUM_INCHANNELS 5
#define NUM_TX_CHANNELS 8

#define PPM_OUT_PIN 13
#define PPM_MIN_VALUE 1000
#define PPM_MAX_VALUE 2024

#define VSENSE_PIN A3

#define CHANNEL_CALIBRATION_MAGIC NUM_INCHANNELS + 0xA0
#define POINT_CURVE_FILTER_NUM_POINTS 7

#include "PPMGen.h"
#include "Vsense.h"

#include "ADCChannel.h"
#include "ADCChannels.h"


#include "InputChannel.h"
#include "InputChannels.h"

TCA9535 digiIo(kAddr9535);
LTC2309 analogIn(kAddr2309);

TADCChannels adcChannels(&analogIn);
TInputChannels inChannels;

struct Palette
{
  Color bgColor;
  Color text;
};

Palette palette = {
  Color( 128, 128, 128, 255 ),
  Color( 255, 255, 255, 255 )
};


#include "ChannelWidget.h"
#include "ChannelMeter.h"
#include "XYWidget.h"
#include "Button.h"

#include "MainScreen.h"
#include "CalibrationScreen.h"



/////////////////////////////////////////////////////////
// EEPROM Layout:
// 0-24 => Gameduino Calibration
// 25 => 0xA0 if channels are calibrated
// 26-xx => Channel data

void setup() {

  // put your setup code here, to run once:
  Serial.begin(115200);
  Wire.begin();
  
  PPMGen::begin();

#ifdef LTC2309_CALC_FLOAT
  analogIn.calibrate(0x64A, 0xa9F, 0.0, 1.0);
#endif

  digiIo.begin();

  digiIo.configuration(0).value = 0x00;
  digiIo.configuration(1).value = 0x01;
  digiIo.writeConfiguration();

  InterruptHelper::begin(A15);

  for(int i=1;i<4;i++)
  {
    inChannels.channel(i)->setBipolar(true);
    inChannels.channel(i)->expoFilter()->setEnabled(true);
    inChannels.channel(i)->expoFilter()->setAmount(0.5);
  }

  inChannels.channel(2)->expoFilter()->setEnabled(false);
  inChannels.channel(2)->pointCurveFilter()->setEnabled(true);
  inChannels.channel(2)->pointCurveFilter()->setPoint(0, 0.1);
  inChannels.channel(2)->pointCurveFilter()->setPoint(1, 0.25);
  inChannels.channel(2)->pointCurveFilter()->setPoint(2, 0.7);
  inChannels.channel(2)->pointCurveFilter()->setPoint(3, 0.8);
  inChannels.channel(2)->pointCurveFilter()->setPoint(4, 0.9);


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
  adcChannels.update();
  inChannels.updateFromAdc(adcChannels);

  inChannels.globalExpo()->setEnabled(true);
  inChannels.globalExpo()->setAmount( inChannels.channel(4)->value() );
  
  
  PPMGen::setPPMValue(1, inChannels.channelValue(0));

  GD.get_inputs();

  if(adcChannels.isCalibrating())
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

  palette.text.apply();
  GD.cmd_number(480-30,0, 26, 0, 1000.0/dur);
  
  char vMsg[20];
  
  float volts = Vsense::getInputVoltage();
  
  int i = floor(volts);
  volts -= (float)i;
  int r = (int)(volts*10.0f);
  
  sprintf(vMsg, "%i.%iv", i, r);
  
  GD.cmd_text(480-30, 32, 26, 0, vMsg);

  GD.swap();

  i++;


}
