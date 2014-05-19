#pragma once

#include "LTC2309.h"


class ADCChannel
{
  struct {
    //! ADC Calibration
    uint16_t minCode;
    uint16_t maxCode;
    bool     invert;
  } _config;
  
public:
  ADCChannel(LTC2309* ltc2309, byte id) 
   : _ltc2309(ltc2309)
   , _id(id)
   , _doCalibration(false)
  {
    reset();
    _config.invert = false;
  }
  
  void reset()
  {
    _config.minCode = 0xFFFF;
    _config.maxCode = 0x0000;
  }
  
  void update()
  {
    LTC2309::Value v;
    v = _ltc2309->readUnipolarSingleEnded(adcChannelRemap[_id]);
    
    if(_doCalibration)
    {
      _config.minCode = min(_config.minCode, v.value);
      _config.maxCode = max(_config.maxCode, v.value);
    }
    
    _adcCode = min(_config.maxCode , max(_config.minCode, v.value));
    
    _vOut = (float)(_adcCode - _config.minCode)/(float)(_config.maxCode - _config.minCode);
  }
  
  float value() const
  {
    return _config.invert ? 1.0-_vOut : _vOut; 
  }
  
  void enableCalibration(bool e)
  {
    if(e)
      reset();
      
    _doCalibration = e;
  }
  
  void save() const
  {
    int startAddress = 26 + (sizeof(_config)*_id);
    byte* pConfig = (byte*)&_config;    
    
    for(int i=0;i<sizeof(_config);i++)
    {
      EEPROM.write(startAddress+i, *(pConfig+i));
    }    
  }
  
  void load()
  {
    int startAddress = 26 + (sizeof(_config)*_id);
    byte* pConfig = (byte*)&_config;    
    
    for(int i=0;i<sizeof(_config);i++)
    {
      *(pConfig+i) = EEPROM.read(startAddress+i);
    }
  }
  
  int resolution() const
  {
    return _config.maxCode - _config.minCode; 
  }
  
protected:
  byte _id;
  LTC2309* _ltc2309;
  
protected:
  float _vIn;
  float _vOut;
  uint16_t _adcCode;
  
  //! For the adc calibration
protected:
  
  bool _doCalibration;


};
