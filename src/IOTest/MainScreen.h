#pragma once

#include "Channel.h"

namespace MainScreen
{
  void loop()
  {
    // put your main code here, to run repeatedly:
    GD.cmd_gradient(0, 0,   0, 480, 480, 0x7F7F7F);  
   
    for(int i=0;i<channels.numberOfChannels();i++)
    {
      GD.Tag(i+1); 
      GD.cmd_progress( 10 + i*10, 136,
                      5, 126,
                      OPT_FLAT,
                      channels.channel(i)->value()*1024.0f, 1024);
                        
    }
    
    
    if( GD.inputs.tag >= 1 && GD.inputs.tag <= 1+channels.numberOfChannels())
    {
      ExpoWidget::draw(0, 0, 100, 100, channels.channel(GD.inputs.tag-1)->value());
    }
    
    
    //ExpoWidget::draw(100, 0, 100, 100, channels.channel(1)->value());
    
  }  
}
