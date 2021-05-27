<patch-1.0 appVersion="1.0.12">
   <obj type="gpio/i2c/config" uuid="b095a33e56de5fcd23740a7d983bc0bafb315d81" name="config_1" x="70" y="0">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet string" uuid="6c562c1a7890cccf18fa7327d8baa476d0926cd8" name="S1_L1" x="210" y="126">
      <params/>
      <attribs/>
   </obj>
   <obj type="tiar/HW/OLED128x64nice" uuid="5bde8c3d-fe37-40b3-848e-edb113767bc8" name="OLED128x64nice_1" x="574" y="154">
      <params/>
      <attribs>
         <objref attributeName="scope" obj="scope_1"/>
         <combo attributeName="type" selection="SH1106"/>
         <combo attributeName="I2CADDR" selection="0x3D"/>
      </attribs>
   </obj>
   <obj type="patch/inlet string" uuid="6c562c1a7890cccf18fa7327d8baa476d0926cd8" name="S1_L2" x="210" y="168">
      <params/>
      <attribs/>
   </obj>
   <obj type="tiar/disp/scope" uuid="0991142e-58fa-47e6-9f89-32da05f9fe41" name="scope_1" x="378" y="182">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet string" uuid="6c562c1a7890cccf18fa7327d8baa476d0926cd8" name="S1_L3" x="210" y="210">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet string" uuid="6c562c1a7890cccf18fa7327d8baa476d0926cd8" name="S1_L4" x="210" y="252">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet i" uuid="f11927f00c59219df0c50f73056aa19f125540b7" name="S1mode" x="238" y="294">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="top" x="1722" y="308">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet a" uuid="b577fe41e0a6bc7b5502ce33cb8a3129e2e28ee5" name="scope1" x="238" y="336">
      <params/>
      <attribs/>
   </obj>
   <obj type="tiar/HW/OLED128x64nice" uuid="5bde8c3d-fe37-40b3-848e-edb113767bc8" name="OLED128x64nice_2" x="574" y="336">
      <params/>
      <attribs>
         <objref attributeName="scope" obj="scope_2"/>
         <combo attributeName="type" selection="SH1106"/>
         <combo attributeName="I2CADDR" selection="0x3C"/>
      </attribs>
   </obj>
   <obj type="gpio/in/analog" uuid="1c0c845ed2d7e06ae5f377ba13d9d09f4747ac87" name="analog_6" x="896" y="336">
      <params/>
      <attribs>
         <combo attributeName="channel" selection="PA5 (ADC1_IN5)"/>
      </attribs>
   </obj>
   <comment type="patch/comment" x="1106" y="350" text="top"/>
   <comment type="patch/comment" x="1330" y="350" text="toggle 1"/>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="bottom" x="1722" y="350">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/in/digital" uuid="f59f139e8da912742832dc541157f20f30b7ac1b" name="digital_5" x="1106" y="364">
      <params/>
      <attribs>
         <combo attributeName="pad" selection="PA6"/>
         <combo attributeName="mode" selection="pulldown"/>
      </attribs>
   </obj>
   <obj type="disp/bool" uuid="a0ee71d48208b71752cbb8c05e55145106ef3946" name="bool_13" x="1190" y="364">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/in/digital" uuid="f59f139e8da912742832dc541157f20f30b7ac1b" name="digital_7" x="1330" y="364">
      <params/>
      <attribs>
         <combo attributeName="pad" selection="PB6"/>
         <combo attributeName="mode" selection="pulldown"/>
      </attribs>
   </obj>
   <obj type="disp/bool" uuid="a0ee71d48208b71752cbb8c05e55145106ef3946" name="bool_15" x="1414" y="364">
      <params/>
      <attribs/>
   </obj>
   <obj type="disp/dial p" uuid="44fd18b562e434b3230441681132dbeabb15cdc5" name="dial_6" x="952" y="392">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet string" uuid="6c562c1a7890cccf18fa7327d8baa476d0926cd8" name="S2_L1" x="210" y="406">
      <params/>
      <attribs/>
   </obj>
   <obj type="tiar/disp/scope" uuid="0991142e-58fa-47e6-9f89-32da05f9fe41" name="scope_2" x="378" y="406">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="toggle 1" x="1722" y="420">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet string" uuid="6c562c1a7890cccf18fa7327d8baa476d0926cd8" name="S2_L2" x="210" y="448">
      <params/>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="1106" y="448" text="bottom"/>
   <obj type="gpio/in/analog" uuid="1c0c845ed2d7e06ae5f377ba13d9d09f4747ac87" name="analog_5" x="798" y="462">
      <params/>
      <attribs>
         <combo attributeName="channel" selection="PA4 (ADC1_IN4)"/>
      </attribs>
   </obj>
   <obj type="gpio/in/digital" uuid="f59f139e8da912742832dc541157f20f30b7ac1b" name="digital_6" x="1106" y="462">
      <params/>
      <attribs>
         <combo attributeName="pad" selection="PA7"/>
         <combo attributeName="mode" selection="pulldown"/>
      </attribs>
   </obj>
   <obj type="disp/bool" uuid="a0ee71d48208b71752cbb8c05e55145106ef3946" name="bool_14" x="1190" y="462">
      <params/>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="1330" y="462" text="toggle 2"/>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="toggle 2" x="1722" y="462">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/in/digital" uuid="f59f139e8da912742832dc541157f20f30b7ac1b" name="digital_8" x="1330" y="476">
      <params/>
      <attribs>
         <combo attributeName="pad" selection="PC1"/>
         <combo attributeName="mode" selection="pulldown"/>
      </attribs>
   </obj>
   <obj type="disp/bool" uuid="a0ee71d48208b71752cbb8c05e55145106ef3946" name="bool_16" x="1414" y="476">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet string" uuid="6c562c1a7890cccf18fa7327d8baa476d0926cd8" name="S2_L3" x="210" y="490">
      <params/>
      <attribs/>
   </obj>
   <obj type="disp/dial p" uuid="44fd18b562e434b3230441681132dbeabb15cdc5" name="dial_5" x="854" y="518">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet string" uuid="6c562c1a7890cccf18fa7327d8baa476d0926cd8" name="S2_L4" x="210" y="532">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="dial 1" x="1722" y="560">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet i" uuid="f11927f00c59219df0c50f73056aa19f125540b7" name="S2mode" x="238" y="574">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/in/analog" uuid="1c0c845ed2d7e06ae5f377ba13d9d09f4747ac87" name="analog_1" x="994" y="588">
      <params/>
      <attribs>
         <combo attributeName="channel" selection="PC0 (ADC1_IN10)"/>
      </attribs>
   </obj>
   <obj type="gpio/in/analog" uuid="1c0c845ed2d7e06ae5f377ba13d9d09f4747ac87" name="analog_2" x="1148" y="588">
      <params/>
      <attribs>
         <combo attributeName="channel" selection="PA2 (ADC1_IN2)"/>
      </attribs>
   </obj>
   <obj type="gpio/in/analog" uuid="1c0c845ed2d7e06ae5f377ba13d9d09f4747ac87" name="analog_3" x="1330" y="588">
      <params/>
      <attribs>
         <combo attributeName="channel" selection="PC2 (ADC1_IN12)"/>
      </attribs>
   </obj>
   <obj type="gpio/in/analog" uuid="1c0c845ed2d7e06ae5f377ba13d9d09f4747ac87" name="analog_4" x="1498" y="588">
      <params/>
      <attribs>
         <combo attributeName="channel" selection="PC3 (ADC1_IN13)"/>
      </attribs>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="dial 2" x="1722" y="602">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet a" uuid="b577fe41e0a6bc7b5502ce33cb8a3129e2e28ee5" name="scope2" x="238" y="616">
      <params/>
      <attribs/>
   </obj>
   <obj type="disp/dial p" uuid="44fd18b562e434b3230441681132dbeabb15cdc5" name="dial_1" x="1050" y="644">
      <params/>
      <attribs/>
   </obj>
   <obj type="disp/dial p" uuid="44fd18b562e434b3230441681132dbeabb15cdc5" name="dial_2" x="1204" y="644">
      <params/>
      <attribs/>
   </obj>
   <obj type="disp/dial p" uuid="44fd18b562e434b3230441681132dbeabb15cdc5" name="dial_3" x="1386" y="644">
      <params/>
      <attribs/>
   </obj>
   <obj type="disp/dial p" uuid="44fd18b562e434b3230441681132dbeabb15cdc5" name="dial_4" x="1554" y="644">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="dial 3" x="1722" y="644">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="dial 4" x="1722" y="686">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="dial 5" x="1722" y="728">
      <params/>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="588" y="742" text="forward"/>
   <obj type="gpio/in/digital" uuid="f59f139e8da912742832dc541157f20f30b7ac1b" name="digital_1" x="588" y="756">
      <params/>
      <attribs>
         <combo attributeName="pad" selection="PA0"/>
         <combo attributeName="mode" selection="pulldown"/>
      </attribs>
   </obj>
   <comment type="patch/comment" x="1176" y="756" text="button 2"/>
   <comment type="patch/comment" x="1526" y="756" text="button 4"/>
   <obj type="disp/bool" uuid="a0ee71d48208b71752cbb8c05e55145106ef3946" name="bool_9" x="672" y="770">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/in/digital" uuid="f59f139e8da912742832dc541157f20f30b7ac1b" name="digital_10" x="1176" y="770">
      <params/>
      <attribs>
         <combo attributeName="pad" selection="PB1"/>
         <combo attributeName="mode" selection="pulldown"/>
      </attribs>
   </obj>
   <obj type="disp/bool" uuid="a0ee71d48208b71752cbb8c05e55145106ef3946" name="bool_18" x="1260" y="770">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/in/digital" uuid="f59f139e8da912742832dc541157f20f30b7ac1b" name="digital_12" x="1526" y="770">
      <params/>
      <attribs>
         <combo attributeName="pad" selection="PC5"/>
         <combo attributeName="mode" selection="pulldown"/>
      </attribs>
   </obj>
   <obj type="disp/bool" uuid="a0ee71d48208b71752cbb8c05e55145106ef3946" name="bool_20" x="1610" y="770">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="dial 6" x="1722" y="770">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="button 1" x="1722" y="826">
      <params/>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="490" y="840" text="down"/>
   <comment type="patch/comment" x="686" y="840" text="up"/>
   <comment type="patch/comment" x="1008" y="840" text="button 1"/>
   <comment type="patch/comment" x="1344" y="840" text="button 3"/>
   <obj type="gpio/in/digital" uuid="f59f139e8da912742832dc541157f20f30b7ac1b" name="digital_4" x="490" y="854">
      <params/>
      <attribs>
         <combo attributeName="pad" selection="PB7"/>
         <combo attributeName="mode" selection="pulldown"/>
      </attribs>
   </obj>
   <obj type="disp/bool" uuid="a0ee71d48208b71752cbb8c05e55145106ef3946" name="bool_12" x="574" y="854">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/in/digital" uuid="f59f139e8da912742832dc541157f20f30b7ac1b" name="digital_2" x="686" y="854">
      <params/>
      <attribs>
         <combo attributeName="pad" selection="PA3"/>
         <combo attributeName="mode" selection="pulldown"/>
      </attribs>
   </obj>
   <obj type="disp/bool" uuid="a0ee71d48208b71752cbb8c05e55145106ef3946" name="bool_10" x="770" y="854">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/in/digital" uuid="f59f139e8da912742832dc541157f20f30b7ac1b" name="digital_9" x="1008" y="854">
      <params/>
      <attribs>
         <combo attributeName="pad" selection="PB0"/>
         <combo attributeName="mode" selection="pulldown"/>
      </attribs>
   </obj>
   <obj type="disp/bool" uuid="a0ee71d48208b71752cbb8c05e55145106ef3946" name="bool_17" x="1092" y="854">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/in/digital" uuid="f59f139e8da912742832dc541157f20f30b7ac1b" name="digital_11" x="1344" y="854">
      <params/>
      <attribs>
         <combo attributeName="pad" selection="PC4"/>
         <combo attributeName="mode" selection="pulldown"/>
      </attribs>
   </obj>
   <obj type="disp/bool" uuid="a0ee71d48208b71752cbb8c05e55145106ef3946" name="bool_19" x="1428" y="854">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="button 2" x="1722" y="868">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="button 3" x="1722" y="910">
      <params/>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="602" y="938" text="back"/>
   <obj type="gpio/in/digital" uuid="f59f139e8da912742832dc541157f20f30b7ac1b" name="digital_3" x="602" y="952">
      <params/>
      <attribs>
         <combo attributeName="pad" selection="PA1"/>
         <combo attributeName="mode" selection="pulldown"/>
      </attribs>
   </obj>
   <obj type="disp/bool" uuid="a0ee71d48208b71752cbb8c05e55145106ef3946" name="bool_11" x="686" y="952">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="button 4" x="1722" y="952">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="forward" x="1722" y="1036">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="backward" x="1722" y="1078">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="up" x="1722" y="1120">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="down" x="1722" y="1162">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="digital_1" outlet="out"/>
         <dest obj="bool_9" inlet="in"/>
         <dest obj="forward" inlet="outlet"/>
      </net>
      <net>
         <source obj="digital_2" outlet="out"/>
         <dest obj="bool_10" inlet="in"/>
         <dest obj="up" inlet="outlet"/>
      </net>
      <net>
         <source obj="digital_3" outlet="out"/>
         <dest obj="bool_11" inlet="in"/>
         <dest obj="backward" inlet="outlet"/>
      </net>
      <net>
         <source obj="digital_4" outlet="out"/>
         <dest obj="bool_12" inlet="in"/>
         <dest obj="down" inlet="outlet"/>
      </net>
      <net>
         <source obj="analog_1" outlet="out"/>
         <dest obj="dial_1" inlet="in"/>
         <dest obj="dial 1" inlet="outlet"/>
      </net>
      <net>
         <source obj="analog_2" outlet="out"/>
         <dest obj="dial_2" inlet="in"/>
         <dest obj="dial 2" inlet="outlet"/>
      </net>
      <net>
         <source obj="analog_3" outlet="out"/>
         <dest obj="dial_3" inlet="in"/>
         <dest obj="dial 3" inlet="outlet"/>
      </net>
      <net>
         <source obj="analog_4" outlet="out"/>
         <dest obj="dial_4" inlet="in"/>
         <dest obj="dial 4" inlet="outlet"/>
      </net>
      <net>
         <source obj="digital_5" outlet="out"/>
         <dest obj="bool_13" inlet="in"/>
         <dest obj="top" inlet="outlet"/>
      </net>
      <net>
         <source obj="digital_7" outlet="out"/>
         <dest obj="bool_15" inlet="in"/>
         <dest obj="toggle 1" inlet="outlet"/>
      </net>
      <net>
         <source obj="digital_8" outlet="out"/>
         <dest obj="bool_16" inlet="in"/>
         <dest obj="toggle 2" inlet="outlet"/>
      </net>
      <net>
         <source obj="digital_9" outlet="out"/>
         <dest obj="bool_17" inlet="in"/>
         <dest obj="button 1" inlet="outlet"/>
      </net>
      <net>
         <source obj="digital_10" outlet="out"/>
         <dest obj="bool_18" inlet="in"/>
         <dest obj="button 2" inlet="outlet"/>
      </net>
      <net>
         <source obj="digital_11" outlet="out"/>
         <dest obj="bool_19" inlet="in"/>
         <dest obj="button 3" inlet="outlet"/>
      </net>
      <net>
         <source obj="digital_12" outlet="out"/>
         <dest obj="bool_20" inlet="in"/>
         <dest obj="button 4" inlet="outlet"/>
      </net>
      <net>
         <source obj="digital_6" outlet="out"/>
         <dest obj="bottom" inlet="outlet"/>
         <dest obj="bool_14" inlet="in"/>
      </net>
      <net>
         <source obj="analog_5" outlet="out"/>
         <dest obj="dial_5" inlet="in"/>
         <dest obj="dial 5" inlet="outlet"/>
      </net>
      <net>
         <source obj="analog_6" outlet="out"/>
         <dest obj="dial_6" inlet="in"/>
         <dest obj="dial 6" inlet="outlet"/>
      </net>
      <net>
         <source obj="scope1" outlet="inlet"/>
         <dest obj="scope_1" inlet="in"/>
      </net>
      <net>
         <source obj="S1_L1" outlet="inlet"/>
         <dest obj="OLED128x64nice_1" inlet="line1"/>
      </net>
      <net>
         <source obj="S1_L2" outlet="inlet"/>
         <dest obj="OLED128x64nice_1" inlet="line2"/>
      </net>
      <net>
         <source obj="S1_L3" outlet="inlet"/>
         <dest obj="OLED128x64nice_1" inlet="line3"/>
      </net>
      <net>
         <source obj="S1_L4" outlet="inlet"/>
         <dest obj="OLED128x64nice_1" inlet="line4"/>
      </net>
      <net>
         <source obj="S2_L1" outlet="inlet"/>
         <dest obj="OLED128x64nice_2" inlet="line1"/>
      </net>
      <net>
         <source obj="S2_L2" outlet="inlet"/>
         <dest obj="OLED128x64nice_2" inlet="line2"/>
      </net>
      <net>
         <source obj="S2_L3" outlet="inlet"/>
         <dest obj="OLED128x64nice_2" inlet="line3"/>
      </net>
      <net>
         <source obj="S2_L4" outlet="inlet"/>
         <dest obj="OLED128x64nice_2" inlet="line4"/>
      </net>
      <net>
         <source obj="S1mode" outlet="inlet"/>
         <dest obj="OLED128x64nice_1" inlet="mode"/>
      </net>
      <net>
         <source obj="S2mode" outlet="inlet"/>
         <dest obj="OLED128x64nice_2" inlet="mode"/>
      </net>
      <net>
         <source obj="scope2" outlet="inlet"/>
         <dest obj="scope_2" inlet="in"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>no</subpatchmode>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>43</x>
      <y>41</y>
      <width>1877</width>
      <height>1159</height>
   </windowPos>
</patch-1.0>