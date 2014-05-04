#pragma once

#define CHANNEL_CALIBRATION_MAGIC 0xA1


template<byte numChannels>
class ADCChannels
{
public:
  ADCChannels(LTC2309* ltc2309)
   : _ltc2309(ltc2309)  
  {
    _calibrated = (EEPROM.read(25) == CHANNEL_CALIBRATION_MAGIC);
    
    for(int i=0;i<numChannels;i++)
    {
      _channel[i] = new ADCChannel(_ltc2309, i);
      if(_calibrated)
        _channel[i]->load();
    }
    
    if(!_calibrated)
      enableCalibration(true);
  }
  
  void update()
  {
    for(int i=0;i<numChannels;i++)
    {
      _channel[i]->update();
    }     
  }
  
  void save()
  {
    EEPROM.write(25, CHANNEL_CALIBRATION_MAGIC);
    for(int i=0;i<numChannels;i++)
    {
      _channel[i]->save();
    }        
  }
  
  void enableCalibration(bool e)
  {
    _isCalibrating = e;
    
    for(int i=0;i<numChannels;i++)
    {
      _channel[i]->enableCalibration(e);
    }
    
    if(!e)
      save();  
  }
  
  bool isCalibrating()
  {
    return _isCalibrating; 
  }
  
  byte numberOfChannels() { return numChannels; }
  
  ADCChannel* channel(byte id) { return _channel[id]; }
  
protected:  
  ADCChannel* _channel[numChannels];
  
  bool      _isCalibrating;
  bool     _calibrated;
  LTC2309* _ltc2309;
};
