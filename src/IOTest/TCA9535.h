#pragma once

namespace {
  // Registers
  const int kInPort0   = 0x00;
  const int kInPort1   = 0x01;
  const int kOutPort0  = 0x02;
  const int kOutPort1  = 0x03;
  const int kPolInv0   = 0x04;
  const int kPolInv1   = 0x05;
  const int kConfPort0 = 0x06;
  const int kConfPort1 = 0x07;  
  
}

class TCA9535
{
  struct Int {
    Int(TCA9535* target)
    : _target(target) {}
    
    void operator()()
    {
      _target->readInputs();  
    }
    TCA9535* _target;
  };
public:
  struct Register
  {
    Register(int v=0) { value = v; }
    union
    {
      byte value;
      struct {
        byte pin0 : 1;
        byte pin1 : 1;
        byte pin2 : 1;
        byte pin3 : 1;
        byte pin4 : 1;
        byte pin5 : 1;
        byte pin6 : 1;
        byte pin7 : 1;
      } pins;
    };
  };
  
public:
  TCA9535(uint8_t address)
    : _adress(address)
  {
  }
  
  void begin()
  {
    _inRegister[0] = readRegister(kInPort0);
    _inRegister[1] = readRegister(kInPort1);
    
    _outRegister[0] = readRegister(kOutPort0);
    _outRegister[1] = readRegister(kOutPort1);

    _configurationRegister[0] = readRegister(kConfPort0);
    _configurationRegister[1] = readRegister(kConfPort1);

    _polarityInversionRegister[0] = readRegister(kPolInv0);
    _polarityInversionRegister[1] = readRegister(kPolInv1);
  }

  void readInputs()
  {
    _inRegister[0] = readRegister(kInPort0);
    _inRegister[1] = readRegister(kInPort1);    
  }
  
  void writeOutputs()
  {
    writeRegister(kOutPort0, _outRegister[0]);
    writeRegister(kOutPort1, _outRegister[1]);
  }
  
  void writeConfiguration()
  {
    writeRegister(kConfPort0, _configurationRegister[0]);
    writeRegister(kConfPort1, _configurationRegister[1]);
    readInputs();
  }
  
  void writePolarityInversion()
  {
    writeRegister(kPolInv0, _polarityInversionRegister[0]);
    writeRegister(kPolInv1, _polarityInversionRegister[1]);
    readInputs();
  }  
  
public:
  inline const Register& in(byte port) const { return _inRegister[port]; }
  inline const Register& out(byte port) { return _outRegister[port]; }
  
  inline Register& configuration(byte port) { return _configurationRegister[port]; }
  inline Register& polarityInversion(byte port) { return _polarityInversionRegister[port]; }

  
protected:
  Register readRegister(int reg)
  {
    Wire.beginTransmission(_adress);
    Wire.write(reg);
    Wire.endTransmission();
    
    Wire.requestFrom(_adress, (uint8_t)1);
    
    return (Register)Wire.read();  
  }
  
  void writeRegister(int reg, const Register& r)
  {
    Wire.beginTransmission(_adress);
    Wire.write(reg);
    Wire.write(r.value);
    Wire.endTransmission();    
  }
  
protected:
  Register _inRegister[2];
  Register _outRegister[2];
  Register _configurationRegister[2];
  Register _polarityInversionRegister[2];
  
  uint8_t _adress;
};

namespace {
  static int s_changeCount;
  static int s_oldCount;
  static int s_makeSure; 
}

namespace InterruptHelper
{
  static void isr()
  {
    s_changeCount++;
  }
  
  static void begin(unsigned int pin)
  {
    s_changeCount = 0;
    s_oldCount = 0;
    s_makeSure = 0;
    
    pinMode(pin, INPUT);
    digitalWrite(pin, HIGH);

    PCintPort::attachInterrupt(pin, InterruptHelper::isr, CHANGE);       
  }
  
  static bool wasTriggered()
  {
    bool b = s_oldCount != s_changeCount;
    s_oldCount = s_changeCount;
    
    if(!b)
    {
      if(s_makeSure > 40)
      {
        s_makeSure = 0;
        return true;  
      }
      s_makeSure++;
    }
    
    return b;
  }
  
  static int dbgChangeCount() { return s_changeCount; }
  
  static void process(TCA9535* target)
  {
    if(wasTriggered())
      target->readInputs();
  }
  

};
