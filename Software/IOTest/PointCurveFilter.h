#pragma once

template<int kNumPoints>
class PointCurveFilter
{
  float _pointDist;


  struct {
    float points[kNumPoints];
    bool enabled;
  } _config;

public:
  PointCurveFilter()
  {
    _pointDist = 1.0f/(float)(kNumPoints-1);
    
    reset();
  }

  void reset()
  {
    for(int i=0;i<kNumPoints;i++)
    {
      _config.points[i] = (float)i*_pointDist;
    }
  }
  
  void setPoint(int point, float v)
  {
    _config.points[point] = v;
  }
  
  void setEnabled(bool enabled)
  {
    _config.enabled = enabled;
  }

  float map(float v) const
  {
    if(!_config.enabled)
      return v;

    float x = v;

    for(int i=0;i<kNumPoints-2;i++)
    {
      if(x <= _pointDist)
      {
        x *= (float)(kNumPoints-1);
        return (_config.points[i+1] - _config.points[i]) * x + _config.points[i];
      }
      x -= _pointDist;
    }

    x *= (float)(kNumPoints-1);
    return (_config.points[kNumPoints-1] - _config.points[kNumPoints-2]) * x + _config.points[kNumPoints-2];
  }
};
