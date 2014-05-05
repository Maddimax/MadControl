#pragma once


class LinearFilter // What some call Dual-rate
{
  struct 
  {
    bool enabled;
    float amount;
  } _config;

public:
  LinearFilter()
  {
    reset();
  }

  void reset()
  {
    _config.enabled = false;
    _config.amount = 1.0f;
  }

  void setEnabled(bool enabled)
  {
    _config.enabled = enabled;
  }

  void setAmount(float amount)
  {
    _config.amount = amount;
  }

  float map(float v, bool bipolar) const
  {
    if(!_config.enabled)
      return v;

    if(bipolar)
    {
      v = v * 2.0f - 1.0f;
      v *= 1.0-_config.amount;
      v = (v + 1.0f) / 2.0f;

      return v;
    }

    return v*(1.0-_config.amount);
  }
};
