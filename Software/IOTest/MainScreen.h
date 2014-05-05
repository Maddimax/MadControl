#pragma once

namespace MainScreen
{
  Button::State setupButton(9);
  Button::State backButton(10);
  Button::State calibrateButton(11);

  byte selectedChannel = 0;

  enum 
  {
    Default,
    Setup,  
  } view;
  
  void showDefault()
  { 
    for(int i=0;i<NUM_INCHANNELS;i++)
    {
      GD.Tag(i+1); 
      ChannelMeter::draw( 10 + i*15, 136,
                          10, 126,
                          inChannels, i);
                        
    }

    GD.Tag(100);    
    for(int i=0;i<NUM_INCHANNELS;i++)
    {
      ChannelWidget::draw(10+i*55, 10, 50, 50, inChannels, i);
    }
    
    XYWidget::draw(100, 100, 100, 100, inChannels, 1, 0);

    Button::draw(475-65, 267-28, 65, 28, 27, "Setup", setupButton);
    Button::process(setupButton);
    
    if(setupButton.pressed)
    {
      // TODO: Goto setup
      view = Setup;
      setupButton.reset();
    }

  }
  
  void showSetup()
  {
    Button::draw(5, 5, 60, 28, 27, "Back", backButton);
    Button::draw(70, 5, 80, 28, 27, "Calibrate", calibrateButton);
    
    
    
    
    Button::process(backButton);
    Button::process(calibrateButton);
    
    if(calibrateButton.pressed)
    {
      adcChannels.enableCalibration(true);
      calibrateButton.reset();  
    }
    
    if(backButton.pressed)
    {
      // TODO: Goto setup
      view = Default;
      backButton.reset();
    }
    
    
    
  }
  
  void loop()
  {
    GD.ClearColorRGB(0x000000);
    // put your main code here, to run repeatedly:
    GD.Clear();
    
    if(view == Setup)
      showSetup();
    else if(view == Default)
      showDefault();
      

  }  
  
}
