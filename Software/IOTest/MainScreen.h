#pragma once

#include "Channel.h"

namespace MainScreen
{
  byte selectedChannel = 0;
  void loop()
  {
    // put your main code here, to run repeatedly:
    GD.cmd_gradient(0, 0,   0, 480, 480, 0x7F7F7F);  
   
    for(int i=0;i<adcChannels.numberOfChannels();i++)
    {
      GD.Tag(i+1); 
      GD.cmd_progress( 10 + i*10, 136,
                      5, 126,
                      OPT_FLAT,
                      adcChannels.channel(i)->value()*1024.0f, 1024);
                        
    }

    
    if( GD.inputs.tag >= 1 && GD.inputs.tag <= 1+adcChannels.numberOfChannels())
    {
      selectedChannel = GD.inputs.tag-1;
    }
        
    GD.Tag(100);    
    ExpoWidget::draw(0, 0, 100, 100, adcChannels.channel(0)->value(), adcChannels.channel(1)->value());
  }  
}
