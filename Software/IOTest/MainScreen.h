#pragma once

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
      ChannelMeter::draw( 10 + i*15, 136,
                          10, 126,
                          inChannels, i);
                        
    }

    
    if( GD.inputs.tag >= 1 && GD.inputs.tag <= 1+adcChannels.numberOfChannels())
    {
      selectedChannel = GD.inputs.tag-1;
    }
        
    GD.Tag(100);    
    ChannelWidget::draw(0, 0, 100, 100, inChannels, selectedChannel);
  }  
}
