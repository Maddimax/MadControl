#pragma once


namespace ChannelWidget
{
  void draw(int x, int y, int w, int h, const InputChannels<NUM_INCHANNELS>& channels, byte channelId)
  {
    GD.ColorRGB(0x0);
    GD.LineWidth(1 * 16);
    GD.Begin(RECTS);
    GD.Vertex2ii(x, y);
    GD.Vertex2ii(x+w, y+h);

    GD.ColorRGB(0xFFFFFF);
    GD.Begin(LINE_STRIP);
    
    int w1 = w-1;
    int h1 = h-1;
        
    for(int i=0;i<w;i+=3)
    {
      float xd = ((float)(i)/(float)w1);    
      float yd = channels.mapValueForChannel(xd, channelId);
      
      GD.Vertex2f( (x+i)*16, ((float)h -((yd*(float)h)+(float)y))*16.0f);
    }

    GD.Vertex2f( w*16, 0*16.0f);

    float yd = channels.channelValue(channelId);
    
    GD.PointSize(16 * 5);
    GD.Begin(POINTS);
    GD.Vertex2f(x + (channels.channel(channelId)->adcValue()*(float)w)*16.0, (h-(y+ (yd*(float)h)))*16.0f);
  } 
}
