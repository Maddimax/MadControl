#pragma once

class LTC2309
{
public:
  struct ChannelConfig {
    ChannelConfig(byte v=0) : value(v) { } 
    union
    {
      byte value;
      struct {
        byte unused                    : 2;
        byte sleepOrNap                : 1;
        byte unipolarOrBipolar         : 1;
        byte channelSelect0            : 1;
        byte channelSelect1            : 1;
        byte oddOrSign                 : 1;
        byte singleEndedOrDifferential : 1;
      } bits;
    };
  };
  
  struct Value {
   union
   {
     uint16_t value;
     struct {
       byte b[2];
     } bytes;
    };
#ifdef LTC2309_CALC_FLOAT
    float floatValue;
#endif
  };
  
public:
  LTC2309(uint8_t address=0x8)
    : _adress(address)
  {
  
  }
#ifdef LTC2309_CALC_FLOAT
  void calibrate(uint16_t minCode, uint16_t maxCode, float minVoltage, float maxVoltage)
  {
    float temp_offset;
    _voltageScalar = (maxVoltage-minVoltage)/((float)(maxCode - minCode)); //! 1) Calculate the LSB
    temp_offset = (minVoltage/ _voltageScalar) - minCode;                                               //! 2) Calculate Unipolar offset
    temp_offset = (temp_offset > (floor(temp_offset) + 0.5)) ? ceil(temp_offset) : floor(temp_offset);    //! 3) Round
    _voltageOffsetCode = (int32_t)temp_offset;                                                          //! 4) Cast as int32_t    
  }
#endif
  
  Value readUnipolarSingleEnded(byte channel)
  {    
    Value result;
    
    ChannelConfig conf;
    conf.bits.singleEndedOrDifferential = 1;
    conf.bits.oddOrSign = channel & 0x1;
    conf.bits.channelSelect1 = (channel & 0x4) >> 2;
    conf.bits.channelSelect0 = (channel & 0x2) >> 1;
    conf.bits.unipolarOrBipolar = 1;
    conf.bits.sleepOrNap = 0; // Nap mode
    
    Wire.beginTransmission(_adress);
    Wire.write(conf.value);
    Wire.endTransmission();
    
    Wire.requestFrom(_adress, (uint8_t)2);
    
    result.bytes.b[1] = Wire.read();  
    result.bytes.b[0] = Wire.read();
    
    result.value >>= 4;
    
#ifdef LTC2309_CALC_FLOAT
    result.floatValue = (float)(result.value+_voltageOffsetCode)*_voltageScalar;
#endif

    //result.value = conf.value;
     
    return result;
  }



protected:
  uint8_t _adress;
#ifdef LTC2309_CALC_FLOAT
  float _voltageScalar;
  int16_t _voltageOffsetCode;
#endif  
  
};
