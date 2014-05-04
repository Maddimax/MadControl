#pragma once



class Output
{
public:
  Output(byte id, const char* name)
  : _id(id)
  , _name(name)
  , _value(0.0f)
  {
  
  }
  
  const char* name()
  {
    return _name; 
  }
  
  void setValue(float value)
  {
    _value = value;  
  }
  
  float value() { return _value; }
  
  
protected:
  byte _id;
  const char* _name;
  float _value;
};
