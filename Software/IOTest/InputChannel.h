#pragma once

class FivePointCurveFilter
{
public:
  struct {
    float points[5];
    bool enabled;
  } _config;
  
  FivePointCurveFilter()
  {
    reset();
  }
  
  void reset()
  {
    _config.points[0] = 0.0f;
    _config.points[1] = 0.25f;
    _config.points[2] = 0.5f;
    _config.points[3] = 0.75f;
    _config.points[4] = 1.0f;
    
    _config.enabled = false;
  }
  
  float map(float v) const
  {
    if(_config.enabled == false)
      return v;
      
    if(v < 0.25f)
    {
      float x = v*4.0f; // Bring it to 0->1
      return (_config.points[1] - _config.points[0]) * x + _config.points[0];
    }
    else if(v < 0.5f)
    {
      float x = (v-0.25f)*4.0f; // Bring it to 0->1
      return (_config.points[2] - _config.points[1]) * x + _config.points[1];
    }
    else if(v < 0.75f)
    {
      float x = (v-0.5f)*4.0f; // Bring it to 0->1
      return (_config.points[3] - _config.points[2]) * x + _config.points[2];
    }

    float x = (v-0.75f)*4.0f; // Bring it to 0->1
    return (_config.points[4] - _config.points[3]) * x + _config.points[3];
  }
};

class InputChannel
{
  FivePointCurveFilter _pointCurveFilter;
  ExpoFilter _expoFilter;
  
  float _currentValue;
  float _adcValue;
  
  struct {
    bool unipolar;
  } _config;
  
public:  
  InputChannel()
  : _currentValue(0.0f)
  {
    reset();
  }
  
  void reset()
  {
    _config.unipolar = false;
    _expoFilter.reset();
    _pointCurveFilter.reset();
  }
  
  float map(float v) const
  {
    float result = v;
    result = _expoFilter.map(result, _config.unipolar);
    result = _pointCurveFilter.map(result);
    
    return result;
  }
  
  void setUnipolar(bool unipolar)
  {
    _config.unipolar = unipolar;  
  }
  
  bool isUnipolar() 
  {
    return _config.unipolar;  
  }
  
  void setADCValue(float adcValue)
  {
    _adcValue = adcValue;
    _currentValue = map(adcValue);
  }
  
  float value()
  {
    return _currentValue;
  }
  
  float adcValue()
  {
    return _adcValue; 
  }
 
};
