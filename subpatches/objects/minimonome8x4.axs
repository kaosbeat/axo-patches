<patch-1.0 appVersion="1.0.12">
   <obj type="gpio/serial/config" uuid="8ec617bbe7b552a58656442e87513d8b4c69833a" name="config_1" x="56" y="98">
      <params/>
      <attribs>
         <combo attributeName="baudrate" selection="115200"/>
      </attribs>
   </obj>
   <obj type="disp/i" uuid="5e35fd0c62d81e70017289250cf28edd26e19e4a" name="i_1" x="378" y="140">
      <params/>
      <attribs/>
   </obj>
   <obj type="script/script2" uuid="d39e743cf47c9221f4e99c133430148cf74c68c5" name="script2_1" x="56" y="154">
      <params/>
      <attribs>
         <text attributeName="script">
            <sText><![CDATA[uint8_t StatusToMsgLength(uint8_t t){
  switch(t) {
  case 0x0:
  case 0x1:
  case 0x2:
  case 0x3:
  case 0x4:
  case 0x5:
  case 0x6:
  case 0x7:
    return 0;
  case 0x8:
  case 0x9:
  case 0xa:
  case 0xb:
    return 3;
  case 0xc:
  case 0xd:
    return 2;
  case 0xe:
    return 3;
  default:
    return -1;
  }
}

uint8_t SysToMsgLength(uint8_t t){
    switch(t) {
  case 0x0:
    return -1; // 0xf0=sysex start. may vary
  case 0x1:
    return 2; // 0xf1=MIDI Time Code. 2 bytes
  case 0x2:
    return 3; // 0xf2=MIDI Song position. 3 bytes
  case 0x3:
    return 2; // 0xf3=MIDI Song Select. 2 bytes.
  case 0x4:
    return 1; // 0xf4=undefined
  case 0x5:
    return 1; // 0xf5=undefined
  case 0x6:
    return 1; // 0xf6=TUNE Request
  case 0x7:
    return 1; // 0xf7=sysex end.
  case 0x8:
    return 1; // 0xf8=timing clock. 1 byte
  case 0x9:
    return 1; // 0xf9=proposed measure end?
  case 0xa:
    return 1; // 0xfa=start. 1 byte
  case 0xb:
    return 1; // 0xfb=continue. 1 byte
  case 0xc:
    return 1; // 0xfc=stop. 1 byte
  case 0xd:
    return 1; // 0xfd=undefined
  case 0xe:
    return 1; // 0xfe=active sensing. 1 byte
  case 0xf:
  default:
    return 3; // 0xff= not reset, but a META-EVENT, which is always 3 bytes
  }
}


unsigned char MidiByte0;
unsigned char MidiByte1;
unsigned char MidiByte2;
unsigned char MidiCurData;
unsigned char MidiNumData;

void setup(){
  MidiNumData = 0;
  MidiCurData = 0;
}


void MidiInByteHandler(uint8_t data) {
  int8_t len;
  if (data & 0x80) {
    len = StatusToMsgLength(data >> 4);
    if (len == -1) {
      len = SysToMsgLength(data - 0xF0);
    }
    if (len == 1) {
      MidiInMsgHandler(MIDI_DEVICE_DIGITAL_X1,1,data,0,0);
    } else {
      MidiByte0 = data;
      MidiNumData = len - 1;
      MidiCurData = 0;
    }
  }
  else // not a status byte
  {
    if (MidiCurData == 0) {
      MidiByte1 = data;
      if (MidiNumData == 1) {
        // 2 byte message complete
        MidiInMsgHandler(MIDI_DEVICE_DIGITAL_X1,1,MidiByte0, MidiByte1, 0);
        MidiCurData = 0;
      }
      else
        MidiCurData++;
    }
    else if (MidiCurData == 1) {
      MidiByte2 = data;
      if (MidiNumData == 2) {
        MidiInMsgHandler(MIDI_DEVICE_DIGITAL_X1,1,MidiByte0, MidiByte1, MidiByte2);
        MidiCurData = 0;
      }
    }
  }
}

void loop(){
    char ch = sdGet(&SD2);
    MidiInByteHandler(ch);  
}]]></sText>
         </text>
      </attribs>
   </obj>
   <obj type="ctrl/i" uuid="a3786816db6ea5bc6ac4193a5cccdb2c83b83496" name="i_3" x="238" y="224">
      <params>
         <int32 name="value" value="127"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/==" uuid="deaf0d36642c57876c4101e86f8a0b6a06021ab2" name="==_2" x="336" y="224">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet i" uuid="aae2176b26209e34e4fdeba5edb1ace82d178655" name="outlet_1" x="476" y="224">
      <params/>
      <attribs/>
   </obj>
   <obj type="disp/i" uuid="5e35fd0c62d81e70017289250cf28edd26e19e4a" name="dispI_1" x="168" y="266">
      <params/>
      <attribs/>
   </obj>
   <obj type="midi/in/cc i any" uuid="a5a8957c081888a8175ecd4630479533958e488b" name="ctlini_any_2" x="56" y="280">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/i" uuid="a3786816db6ea5bc6ac4193a5cccdb2c83b83496" name="i_4" x="238" y="280">
      <params>
         <int32 name="value" value="0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/==" uuid="deaf0d36642c57876c4101e86f8a0b6a06021ab2" name="==_3" x="336" y="280">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet i" uuid="aae2176b26209e34e4fdeba5edb1ace82d178655" name="outlet_2" x="476" y="280">
      <params/>
      <attribs/>
   </obj>
   <obj type="disp/i" uuid="5e35fd0c62d81e70017289250cf28edd26e19e4a" name="dispI_2" x="168" y="294">
      <params/>
      <attribs/>
   </obj>
   <obj type="disp/i" uuid="5e35fd0c62d81e70017289250cf28edd26e19e4a" name="dispI_3" x="168" y="322">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet i" uuid="aae2176b26209e34e4fdeba5edb1ace82d178655" name="outlet_3" x="476" y="336">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/divremc" uuid="fd7d945542e16344358136d7e22cffd5be704260" name="divremc_1" x="210" y="378">
      <params/>
      <attribs>
         <spinner attributeName="denominator" value="8"/>
      </attribs>
   </obj>
   <obj type="disp/i" uuid="5e35fd0c62d81e70017289250cf28edd26e19e4a" name="i_2" x="392" y="406">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="ctlini_any_2" outlet="value"/>
         <dest obj="dispI_1" inlet="in"/>
         <dest obj="==_2" inlet="in2"/>
         <dest obj="==_3" inlet="in2"/>
         <dest obj="outlet_1" inlet="outlet"/>
      </net>
      <net>
         <source obj="ctlini_any_2" outlet="cc"/>
         <dest obj="dispI_2" inlet="in"/>
         <dest obj="divremc_1" inlet="a"/>
         <dest obj="outlet_2" inlet="outlet"/>
      </net>
      <net>
         <source obj="ctlini_any_2" outlet="channel"/>
         <dest obj="dispI_3" inlet="in"/>
         <dest obj="outlet_3" inlet="outlet"/>
      </net>
      <net>
         <source obj="divremc_1" outlet="rem"/>
         <dest obj="i_2" inlet="in"/>
      </net>
      <net>
         <source obj="i_3" outlet="out"/>
         <dest obj="==_2" inlet="in1"/>
      </net>
      <net>
         <source obj="i_4" outlet="out"/>
         <dest obj="==_3" inlet="in1"/>
      </net>
      <net>
         <source obj="divremc_1" outlet="div"/>
         <dest obj="i_1" inlet="in"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>no</subpatchmode>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>241</x>
      <y>145</y>
      <width>628</width>
      <height>681</height>
   </windowPos>
</patch-1.0>