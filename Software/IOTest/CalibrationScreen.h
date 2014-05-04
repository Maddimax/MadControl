#pragma once


namespace CalibrationScreen
{
  const int kBtnId(1);
  bool wasDown(false);
  
  void loop()
  {
    // put your main code here, to run repeatedly:
    GD.cmd_gradient(0, 0,   0, 480, 480, 0x7F7F7F);  
  
  
    GD.cmd_text(240, 15, 30, OPT_CENTER, "Calibrating, move all sticks");
    GD.cmd_text(240, 47, 30, OPT_CENTER, "to their extremes ...");

    int maxRes = 0;
    int minRes = 0xFFF;
   
    for(int i=0;i<adcChannels.numberOfChannels();i++)
    {
      maxRes = max(maxRes, adcChannels.channel(i)->resolution());
      minRes = min(minRes, adcChannels.channel(i)->resolution());
      
        GD.cmd_progress( 10 + i*10, 136,
                        5, 126,
                        OPT_FLAT,
                        adcChannels.channel(i)->value()*1024.0f, 1024);
                        
    }

    bool isDown = false;
    
    switch (GD.inputs.tag) 
    {
    case kBtnId:
      isDown = true; 
      break;
    }
    
    if(!isDown && wasDown)
      adcChannels.enableCalibration(false);
    
    if(isDown != wasDown)
      wasDown = isDown;
    
    GD.Tag(kBtnId);
    GD.cmd_button(240-35, 272-50, 70, 40, 28, isDown ? OPT_FLAT : 0, "Done");


    char msg[128];
    
    sprintf(msg, "Res: %i=>%i", minRes, maxRes);
    
    GD.cmd_text(240, 100, 30, OPT_CENTER, msg);


  }  
  
  
  
  
  
}
