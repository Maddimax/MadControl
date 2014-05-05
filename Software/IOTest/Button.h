#pragma once



namespace Button
{
  struct State {
    State(byte _tag) 
    : isDown(false)
    , wasDown(false)
    , pressed(false)
    , tag(_tag) 
    { }
    
    void reset()
    {
      isDown = false;
      wasDown = false;
      pressed = false; 
    }
    
    bool isDown : 1;
    bool wasDown : 1;
    bool pressed : 1;
    byte tag;
  };
  
  const int cornerRadius = 3;
  
  

  void draw(int x, int y, int w, int h, byte font, const char* text, const Button::State& state) 
  {
    GD.Tag(state.tag);
    
    GD.ColorRGB(state.isDown ? 0x7F7F7F : 0xFFFFFF);
    GD.LineWidth(cornerRadius * 16);
    GD.Begin(RECTS);
    GD.Vertex2ii(x+cornerRadius, y+cornerRadius);
    GD.Vertex2ii(x+w-cornerRadius, y+h-cornerRadius);

    GD.ColorRGB(0x0);
    GD.cmd_text(w/2 + x , h/2 + y, font, OPT_CENTER, text);
  }
  
  void process(Button::State& state)
  {
    if(GD.inputs.tag == state.tag)
    {
      state.isDown = true;
      state.wasDown = true;
    }
    else if(state.isDown == false && state.wasDown == true)
    {
      state.pressed = true;
    }
    else
    {
      state.isDown = false;  
    }
  }



};
