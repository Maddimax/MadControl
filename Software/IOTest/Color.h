#pragma once

struct Color
{
  Color(uint8_t r, uint8_t g, uint8_t b, uint8_t a = 255)
  {
    rgba.r = r;
    rgba.g = g;
    rgba.b = b;
    rgba.a = a;
  }
  
  union
  {
    struct
    {
      uint8_t r;
      uint8_t g;
      uint8_t b;
      uint8_t a; 
    } rgba;
    
    struct
    {
      uint32_t rgb : 24;
      uint8_t alpha : 8;
    } hex;
  };
  
  void apply()
  {
    GD.ColorRGB(hex.rgb);
    GD.ColorA(hex.alpha); 
  }
};
