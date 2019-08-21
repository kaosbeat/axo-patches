<patch-1.0 appVersion="1.0.12">
   <obj type="disp/chart p" uuid="58f42040a894006a5f73ed8cb8d0bd45481b28cd" name="chart_1" x="420" y="28">
      <params/>
      <attribs/>
   </obj>
   <obj type="disp/dial p" uuid="44fd18b562e434b3230441681132dbeabb15cdc5" name="dial_1" x="294" y="42">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/in/analog" uuid="1c0c845ed2d7e06ae5f377ba13d9d09f4747ac87" name="analog_1" x="112" y="56">
      <params/>
      <attribs>
         <combo attributeName="channel" selection="PA0 (ADC1_IN0)"/>
      </attribs>
   </obj>
   <obj type="disp/bool" uuid="a0ee71d48208b71752cbb8c05e55145106ef3946" name="bool_1" x="700" y="98">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/in/analog" uuid="1c0c845ed2d7e06ae5f377ba13d9d09f4747ac87" name="analog_2" x="112" y="168">
      <params/>
      <attribs>
         <combo attributeName="channel" selection="PA1 (ADC1_IN1)"/>
      </attribs>
   </obj>
   <obj type="disp/dial p" uuid="44fd18b562e434b3230441681132dbeabb15cdc5" name="dial_2" x="294" y="168">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/in/analog" uuid="1c0c845ed2d7e06ae5f377ba13d9d09f4747ac87" name="analog_3" x="112" y="280">
      <params/>
      <attribs>
         <combo attributeName="channel" selection="PA2 (ADC1_IN2)"/>
      </attribs>
   </obj>
   <obj type="disp/dial p" uuid="44fd18b562e434b3230441681132dbeabb15cdc5" name="dial_3" x="294" y="280">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/in/analog" uuid="1c0c845ed2d7e06ae5f377ba13d9d09f4747ac87" name="analog_4" x="112" y="406">
      <params/>
      <attribs>
         <combo attributeName="channel" selection="PA3 (ADC1_IN3)"/>
      </attribs>
   </obj>
   <obj type="disp/dial p" uuid="44fd18b562e434b3230441681132dbeabb15cdc5" name="dial_4" x="294" y="406">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="analog_1" outlet="out"/>
         <dest obj="dial_1" inlet="in"/>
      </net>
      <net>
         <source obj="analog_2" outlet="out"/>
         <dest obj="dial_2" inlet="in"/>
      </net>
      <net>
         <source obj="analog_3" outlet="out"/>
         <dest obj="dial_3" inlet="in"/>
      </net>
      <net>
         <source obj="analog_4" outlet="out"/>
         <dest obj="dial_4" inlet="in"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>no</subpatchmode>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>304</x>
      <y>102</y>
      <width>994</width>
      <height>709</height>
   </windowPos>
</patch-1.0>