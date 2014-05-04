#pragma once


namespace ChannelMeter
{
  void draw(int x, int y, int w, int h, const InputChannels<NUM_INCHANNELS>& channels, byte channelId)
  {
    GD.ColorRGB(0x000000);
    GD.LineWidth(w/2 * 16);
    GD.Begin(LINES);
    GD.Vertex2ii(x+w/2, y);
    GD.Vertex2ii(x+w/2, y+h);

    int vh = h-(channels.channelValue(channelId)*h);
    int vAh = h-(channels.channel(channelId)->adcValue()*h);


    GD.ColorRGB(0xFFFFFF);
    GD.LineWidth((w-1)/2 * 16);
    
    GD.Begin(LINES);
    
    if(channels.channel(channelId)->isUnipolar())
    {
      if(vh < h/2)
      {
        GD.Vertex2ii(x+w/2, y + vh);
        GD.Vertex2ii(x+w/2, y+h/2);  
      }
      else
      {
        GD.Vertex2ii(x+w/2, y + h/2);
        GD.Vertex2ii(x+w/2, y+vh);  
      }
        
    }
    else
    {
      GD.Vertex2ii(x+w/2, y + vh);
      GD.Vertex2ii(x+w/2, y+h);  
    }

    GD.ColorRGB(0xFF0000);
    GD.ColorA(90);
    GD.LineWidth((w-5)/2 * 16);
    GD.Begin(LINES);
    
    if(channels.channel(channelId)->isUnipolar())
    {
      if(vAh < h/2)
      {
        GD.Vertex2ii(x+w/2, y + vAh);
        GD.Vertex2ii(x+w/2, y+h/2);  
      }
      else
      {
        GD.Vertex2ii(x+w/2, y + h/2);
        GD.Vertex2ii(x+w/2, y+vAh);  
      }
    }
    else
    {
      GD.Vertex2ii(x+w/2, y + vAh);
      GD.Vertex2ii(x+w/2, y+h);  
    } 
    
    GD.ColorA(255);
    
  }
  
  
}
