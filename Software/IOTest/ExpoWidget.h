#pragma once


namespace ExpoWidget
{
  void draw(int x, int y, int w, int h, float expo, float v=0.0)
  {
    GD.ColorRGB(0x0);
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
      float yd = PowLut::unipolarInterpolatedPow3(xd, expo);
      
      GD.Vertex2f( (x+i)*16, ((float)h -((yd*(float)h)+(float)y))*16.0f);
    }

    GD.Vertex2f( w*16, 0*16.0f);

    float yd = PowLut::unipolarInterpolatedPow3(v, expo);

    
    GD.PointSize(16 * 5);
    GD.Begin(POINTS);
    GD.Vertex2f(x + (v*(float)w)*16.0, (h-(y+ (yd*(float)h)))*16.0f);
  } 
}
