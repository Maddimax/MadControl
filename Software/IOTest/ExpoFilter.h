#pragma once

class ExpoFilter
{
public:
  struct {
    bool enabled;
    float expoAmount;
  } _config;

  ExpoFilter()
  {
    reset();   
  }
  
  void reset()
  {
    _config.enabled = false;
    _config.expoAmount = 0.0f;
  }
  
  void enable(bool enable)
  {
    _config.enabled = enable; 
  }
  
  void setExpoAmount(float expoAmount)
  {
    _config.expoAmount = expoAmount; 
  }
  
  float map(float v, bool bipolar) const
  {
    if(!_config.enabled)
      return v;
    
    if(bipolar)
      return PowLut::bipolarInterpolatedPow3(v, _config.expoAmount);

    return PowLut::interpolatedPow3(v, _config.expoAmount);
  }
};
