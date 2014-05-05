#pragma once

namespace XYWidget
{

  void draw(int x, int y, int w, int h, const TInputChannels& inChannels, int channelX, int channelY )
  {
    palette.bgColor.apply();
    
    GD.LineWidth(1 * 16);
    GD.Begin(RECTS);
    GD.Vertex2ii(x, y);
    GD.Vertex2ii(x+w, y+h);

    GD.ColorRGB(0xFFFFFF);
    GD.PointSize(16 * 5);
    GD.Begin(POINTS);
    GD.Vertex2f( (x + ((inChannels.channelValue(channelX)) * (float)w))*16.0f, (y + ((1.0-inChannels.channelValue(channelY)) * (float)h))*16.0f);

  }


}
