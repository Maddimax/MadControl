#pragma once


namespace ExpoWidget
{
  void draw(int x, int y, int w, int h, float expo)
  {
    GD.Begin(LINE_STRIP);
        
    for(int i=0;i<w;i+=4)
    {
      float xd = (((float)(i)/(float)w)*2.0)-1.0;
      
      float ylin = (xd*(1.0-expo));
      
      int xe = i-50;
      float e;
      
      if(xe < 0)
        e = -powLUT[49-i];
      else
        e = powLUT[xe];
        
      float yexp = e*expo;
      
      float yd = ((yexp + ylin)+1.0)/2.0;
      
      GD.Vertex2f( (x+i)*16, ((yd*(float)h)+y)*16.0f);
    } 
    
    GD.Vertex2ii( w+x, h+y );
   
  } 
  
  
}
