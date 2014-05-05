#pragma once

#include "powlut_table.h"




namespace PowLut
{
  float pow3(float x)
  {
    int16_t idx = (x*powlut_numValuesf);
    uint16_t i = idx; //min(powlut_numValues, max(0, idx));
    
    return (pgm_read_float_near(sp_pow3LUT + i) );
  }
  
  float pow3Mirrored(float x)
  {
    int16_t idx = (x*powlut_numValuesf);
    uint16_t i = idx; //min(powlut_numValues, max(0, idx));
    
    return (pgm_read_float_near(sp_pow3LUTMirrored + i) );
  }
  
  float interpolatedPow3(float x, float expoStrength)
  {
    float e = pow3(x) * expoStrength;
    
    return e + ((1.0f-expoStrength)*x);  
  }
  
  float bipolarInterpolatedPow3(float x, float expoStrength)
  {
    float e = pow3Mirrored(x) * (expoStrength);
    
    return e + ((1.0f-expoStrength)*x); 
  }
}
