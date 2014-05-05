#pragma once


class InputChannel
{
  PointCurveFilter<POINT_CURVE_FILTER_NUM_POINTS> _pointCurveFilter;
  ExpoFilter                                      _expoFilter;
  LinearFilter                                    _linearFilter;
  
  float _currentValue;
  float _adcValue;
  
  struct {
    bool bipolar;
  } _config;
  
public:  
  InputChannel()
  : _currentValue(0.0f)
  {
    reset();
  }
  
  void reset()
  {
    _config.bipolar = false;
    _expoFilter.reset();
    _pointCurveFilter.reset();
  }
  
  float map(float v) const
  {
    float result = v;
    result = _expoFilter.map(result, _config.bipolar);
    result = _pointCurveFilter.map(result);
    result = _linearFilter.map(result, _config.bipolar);
    
    return result;
  }
  
  void setBipolar(bool bipolar)
  {
    _config.bipolar = bipolar;  
  }
  
  bool isBipolar() 
  {
    return _config.bipolar;  
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
