#pragma once

namespace Vsense
{

  float getInputVoltage()
  {
    int v = analogRead(VSENSE_PIN);
    
    // For perfect R1&R2 and 5V AREF
    float volts = (((float)v/1024.0f)*5.0f)*2.0f;
   
    return volts;
  } 
  
  
}
