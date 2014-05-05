#pragma once


namespace ChannelWidget
{
  void draw(int x, int y, int w, int h, const TInputChannels& channels, byte channelId)
  {
    palette.bgColor.apply();
    
    GD.LineWidth(1 * 16);
    GD.Begin(RECTS);
    GD.Vertex2ii(x, y);
    GD.Vertex2ii(x+w, y+h);

    GD.ColorRGB(0xFFFFFF);
    GD.Begin(LINE_STRIP);
    
    int w1 = w-1;
    int h1 = h-1;
        
    for(int i=0;i<w;i+=5)
    {
      float xd = ((float)(i)/(float)w1);    
      float yd = channels.mapValueForChannel(xd, channelId);
      
      GD.Vertex2f( (x+i)*16, ((float)y+((float)h -(yd*(float)h)))*16.0f);
    }
    
    float xd = 1.0;    
    float yd = channels.mapValueForChannel(xd, channelId);

    GD.Vertex2f( (x+w)*16, ((float)y+((float)h -(yd*(float)h)))*16.0f);

    yd = channels.channelValue(channelId);
    GD.ColorA(150);
    GD.PointSize(16 * 5);
    GD.Begin(POINTS);
    GD.Vertex2f((x + (channels.channel(channelId)->adcValue()*(float)w))*16.0, (y+(h- (yd*(float)h)))*16.0f);
    
    GD.ColorA(255);
  } 
}
