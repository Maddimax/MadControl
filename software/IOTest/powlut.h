#pragma once

#include "powlut_table.h"


namespace PowLut
{
  float pow3(float x)
  {
    int16_t idx = (x*511.0f);
    uint16_t i = min(511, max(0, abs(idx)));
    
    if(idx < 0)
      return - (pgm_read_float_near(sp_pow3LUT + i) );
    return (pgm_read_float_near(sp_pow3LUT + i) );
  }
  
  float interpolatedPow3(float x, float expoStrength)
  {
    float e = pow3(x) * expoStrength;
    
    return e + (1.0-expoStrength)*x;  
  }
  
  float unipolarInterpolatedPow3(float x, float expoStrength)
  {
    return ((interpolatedPow3(x*2.0-1.0, expoStrength))+1.0)/2.0;
  }
}
