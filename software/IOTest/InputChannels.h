#pragma once


template<int kNumChannels>
class InputChannels
{
  InputChannel* _channel[kNumChannels];
  
  ExpoFilter _globalExpo;
  
public:
  InputChannels()
  {
    for(int i=0;i<kNumChannels;i++)
    {
      _channel[i] = new InputChannel();
    }
  }
  
  ExpoFilter* globalExpo()
  {
    return &_globalExpo; 
  }
  
  float mapValueForChannel(float v, byte id) const
  {
    float result = v;
    result = _globalExpo.map(result, _channel[id]->isUnipolar());
    result = _channel[id]->map(result);
    return result;
  }
  
  float channelValue(byte id) const
  {
    float result = _channel[id]->adcValue();
    result = _globalExpo.map(result, _channel[id]->isUnipolar());
    result = _channel[id]->map(result);
    
    return result;
  }
  
  InputChannel* channel(byte id) const
  {
    return _channel[id]; 
  }
  
  void updateFromAdc(const ADCChannels<kNumChannels>& adcChannels)
  {
    for(int i=0;i<kNumChannels;i++)
    {
      _channel[i]->setADCValue(adcChannels.channel(i)->value());  
    }
  }
  
  
  
  
  
};
