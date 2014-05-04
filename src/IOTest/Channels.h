#pragma once

#define CHANNEL_CALIBRATION_MAGIC 0xA0


template<byte numChannels>
class Channels
{
public:
  Channels(LTC2309* ltc2309)
   : _ltc2309(ltc2309)  
  {
    _calibrated = (EEPROM.read(25) == CHANNEL_CALIBRATION_MAGIC);
    
    for(int i=0;i<numChannels;i++)
    {
      _channel[i] = new Channel(_ltc2309, i);
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
  
  Channel* channel(byte id) { return _channel[id]; }
  
protected:  
  Channel* _channel[numChannels];
  
  bool      _isCalibrating;
  bool     _calibrated;
  LTC2309* _ltc2309;
};
