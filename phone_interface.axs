<patch-1.0 appVersion="1.0.12">
   <obj type="gpio/spi/config" uuid="d3e75d8a02e2ccabbbc2af3bc2fcdb8ea65a6133" name="spi.begin_1" x="112" y="42">
      <params/>
      <attribs>
         <combo attributeName="clock_polarity" selection="0 when idle"/>
         <combo attributeName="clock_phase" selection="first clock transition is the first data capture edge"/>
         <combo attributeName="baudrate" selection="FPCLK/128"/>
         <combo attributeName="format" selection="LSB first"/>
      </attribs>
   </obj>
   <comment type="patch/comment" x="980" y="112" text="top"/>
   <comment type="patch/comment" x="1204" y="112" text="toggle 1"/>
   <obj type="gpio/in/digital" uuid="f59f139e8da912742832dc541157f20f30b7ac1b" name="digital_5" x="980" y="126">
      <params/>
      <attribs>
         <combo attributeName="pad" selection="PB8"/>
         <combo attributeName="mode" selection="pulldown"/>
      </attribs>
   </obj>
   <obj type="disp/bool" uuid="a0ee71d48208b71752cbb8c05e55145106ef3946" name="bool_13" x="1064" y="126">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/in/digital" uuid="f59f139e8da912742832dc541157f20f30b7ac1b" name="digital_7" x="1204" y="126">
      <params/>
      <attribs>
         <combo attributeName="pad" selection="PB6"/>
         <combo attributeName="mode" selection="pulldown"/>
      </attribs>
   </obj>
   <obj type="disp/bool" uuid="a0ee71d48208b71752cbb8c05e55145106ef3946" name="bool_15" x="1288" y="126">
      <params/>
      <attribs/>
   </obj>
   <obj type="disp/bool" uuid="a0ee71d48208b71752cbb8c05e55145106ef3946" name="bool_1" x="294" y="154">
      <params/>
      <attribs/>
   </obj>
   <obj type="disp/bool" uuid="a0ee71d48208b71752cbb8c05e55145106ef3946" name="bool_2" x="364" y="154">
      <params/>
      <attribs/>
   </obj>
   <obj type="disp/bool" uuid="a0ee71d48208b71752cbb8c05e55145106ef3946" name="bool_3" x="434" y="154">
      <params/>
      <attribs/>
   </obj>
   <obj type="disp/bool" uuid="a0ee71d48208b71752cbb8c05e55145106ef3946" name="bool_4" x="504" y="154">
      <params/>
      <attribs/>
   </obj>
   <obj type="disp/bool" uuid="a0ee71d48208b71752cbb8c05e55145106ef3946" name="bool_5" x="574" y="154">
      <params/>
      <attribs/>
   </obj>
   <obj type="disp/bool" uuid="a0ee71d48208b71752cbb8c05e55145106ef3946" name="bool_6" x="644" y="154">
      <params/>
      <attribs/>
   </obj>
   <obj type="disp/bool" uuid="a0ee71d48208b71752cbb8c05e55145106ef3946" name="bool_7" x="714" y="154">
      <params/>
      <attribs/>
   </obj>
   <obj type="disp/bool" uuid="a0ee71d48208b71752cbb8c05e55145106ef3946" name="bool_8" x="784" y="154">
      <params/>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="980" y="210" text="bottom"/>
   <obj type="gpio/in/digital" uuid="f59f139e8da912742832dc541157f20f30b7ac1b" name="digital_6" x="980" y="224">
      <params/>
      <attribs>
         <combo attributeName="pad" selection="PB9"/>
         <combo attributeName="mode" selection="pulldown"/>
      </attribs>
   </obj>
   <obj type="disp/bool" uuid="a0ee71d48208b71752cbb8c05e55145106ef3946" name="bool_14" x="1064" y="224">
      <params/>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="1204" y="224" text="toggle 2"/>
   <obj type="gpio/in/digital" uuid="f59f139e8da912742832dc541157f20f30b7ac1b" name="digital_8" x="1204" y="238">
      <params/>
      <attribs>
         <combo attributeName="pad" selection="PB7"/>
         <combo attributeName="mode" selection="pulldown"/>
      </attribs>
   </obj>
   <obj type="disp/bool" uuid="a0ee71d48208b71752cbb8c05e55145106ef3946" name="bool_16" x="1288" y="238">
      <params/>
      <attribs/>
   </obj>
   <obj type="jv/lkm1638/lkm1638-display-toggle-leds" uuid="4468253eabf3e6db740cd1ac7df53f6e093ec943" name="lkm1638-display-toggle-led_1" x="140" y="280">
      <params/>
      <attribs>
         <table attributeName="display" table="portable"/>
      </attribs>
   </obj>
   <obj type="gpio/in/analog" uuid="1c0c845ed2d7e06ae5f377ba13d9d09f4747ac87" name="analog_1" x="868" y="350">
      <params/>
      <attribs>
         <combo attributeName="channel" selection="PC0 (ADC1_IN10)"/>
      </attribs>
   </obj>
   <obj type="gpio/in/analog" uuid="1c0c845ed2d7e06ae5f377ba13d9d09f4747ac87" name="analog_2" x="1022" y="350">
      <params/>
      <attribs>
         <combo attributeName="channel" selection="PC1 (ADC1_IN11)"/>
      </attribs>
   </obj>
   <obj type="gpio/in/analog" uuid="1c0c845ed2d7e06ae5f377ba13d9d09f4747ac87" name="analog_3" x="1204" y="350">
      <params/>
      <attribs>
         <combo attributeName="channel" selection="PC2 (ADC1_IN12)"/>
      </attribs>
   </obj>
   <obj type="gpio/in/analog" uuid="1c0c845ed2d7e06ae5f377ba13d9d09f4747ac87" name="analog_4" x="1372" y="350">
      <params/>
      <attribs>
         <combo attributeName="channel" selection="PC3 (ADC1_IN13)"/>
      </attribs>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="dial 1" x="1596" y="350">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="dial 2" x="1596" y="392">
      <params/>
      <attribs/>
   </obj>
   <obj type="disp/dial p" uuid="44fd18b562e434b3230441681132dbeabb15cdc5" name="dial_1" x="924" y="406">
      <params/>
      <attribs/>
   </obj>
   <obj type="disp/dial p" uuid="44fd18b562e434b3230441681132dbeabb15cdc5" name="dial_2" x="1078" y="406">
      <params/>
      <attribs/>
   </obj>
   <obj type="disp/dial p" uuid="44fd18b562e434b3230441681132dbeabb15cdc5" name="dial_3" x="1260" y="406">
      <params/>
      <attribs/>
   </obj>
   <obj type="disp/dial p" uuid="44fd18b562e434b3230441681132dbeabb15cdc5" name="dial_4" x="1428" y="406">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="dial 3" x="1596" y="434">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="dial 4" x="1596" y="476">
      <params/>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="462" y="504" text="forward"/>
   <obj type="gpio/in/digital" uuid="f59f139e8da912742832dc541157f20f30b7ac1b" name="digital_1" x="462" y="518">
      <params/>
      <attribs>
         <combo attributeName="pad" selection="PA0"/>
         <combo attributeName="mode" selection="pulldown"/>
      </attribs>
   </obj>
   <comment type="patch/comment" x="1050" y="518" text="button 2"/>
   <comment type="patch/comment" x="1400" y="518" text="button 4"/>
   <obj type="disp/bool" uuid="a0ee71d48208b71752cbb8c05e55145106ef3946" name="bool_9" x="546" y="532">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/in/digital" uuid="f59f139e8da912742832dc541157f20f30b7ac1b" name="digital_10" x="1050" y="532">
      <params/>
      <attribs>
         <combo attributeName="pad" selection="PB1"/>
         <combo attributeName="mode" selection="pulldown"/>
      </attribs>
   </obj>
   <obj type="disp/bool" uuid="a0ee71d48208b71752cbb8c05e55145106ef3946" name="bool_18" x="1134" y="532">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/in/digital" uuid="f59f139e8da912742832dc541157f20f30b7ac1b" name="digital_12" x="1400" y="532">
      <params/>
      <attribs>
         <combo attributeName="pad" selection="PC5"/>
         <combo attributeName="mode" selection="pulldown"/>
      </attribs>
   </obj>
   <obj type="disp/bool" uuid="a0ee71d48208b71752cbb8c05e55145106ef3946" name="bool_20" x="1484" y="532">
      <params/>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="364" y="602" text="down"/>
   <comment type="patch/comment" x="560" y="602" text="up"/>
   <comment type="patch/comment" x="882" y="602" text="button 1"/>
   <comment type="patch/comment" x="1218" y="602" text="button 3"/>
   <obj type="gpio/in/digital" uuid="f59f139e8da912742832dc541157f20f30b7ac1b" name="digital_4" x="364" y="616">
      <params/>
      <attribs>
         <combo attributeName="pad" selection="PA2"/>
         <combo attributeName="mode" selection="pulldown"/>
      </attribs>
   </obj>
   <obj type="disp/bool" uuid="a0ee71d48208b71752cbb8c05e55145106ef3946" name="bool_12" x="448" y="616">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/in/digital" uuid="f59f139e8da912742832dc541157f20f30b7ac1b" name="digital_2" x="560" y="616">
      <params/>
      <attribs>
         <combo attributeName="pad" selection="PA3"/>
         <combo attributeName="mode" selection="pulldown"/>
      </attribs>
   </obj>
   <obj type="disp/bool" uuid="a0ee71d48208b71752cbb8c05e55145106ef3946" name="bool_10" x="644" y="616">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/in/digital" uuid="f59f139e8da912742832dc541157f20f30b7ac1b" name="digital_9" x="882" y="616">
      <params/>
      <attribs>
         <combo attributeName="pad" selection="PB0"/>
         <combo attributeName="mode" selection="pulldown"/>
      </attribs>
   </obj>
   <obj type="disp/bool" uuid="a0ee71d48208b71752cbb8c05e55145106ef3946" name="bool_17" x="966" y="616">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/in/digital" uuid="f59f139e8da912742832dc541157f20f30b7ac1b" name="digital_11" x="1218" y="616">
      <params/>
      <attribs>
         <combo attributeName="pad" selection="PC4"/>
         <combo attributeName="mode" selection="pulldown"/>
      </attribs>
   </obj>
   <obj type="disp/bool" uuid="a0ee71d48208b71752cbb8c05e55145106ef3946" name="bool_19" x="1302" y="616">
      <params/>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="476" y="700" text="back"/>
   <obj type="gpio/in/digital" uuid="f59f139e8da912742832dc541157f20f30b7ac1b" name="digital_3" x="476" y="714">
      <params/>
      <attribs>
         <combo attributeName="pad" selection="PA1"/>
         <combo attributeName="mode" selection="pulldown"/>
      </attribs>
   </obj>
   <obj type="disp/bool" uuid="a0ee71d48208b71752cbb8c05e55145106ef3946" name="bool_11" x="560" y="714">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="lkm1638-display-toggle-led_1" outlet="toggle1"/>
         <dest obj="bool_1" inlet="in"/>
      </net>
      <net>
         <source obj="lkm1638-display-toggle-led_1" outlet="toggle2"/>
         <dest obj="bool_2" inlet="in"/>
      </net>
      <net>
         <source obj="lkm1638-display-toggle-led_1" outlet="toggle3"/>
         <dest obj="bool_3" inlet="in"/>
      </net>
      <net>
         <source obj="lkm1638-display-toggle-led_1" outlet="toggle4"/>
         <dest obj="bool_4" inlet="in"/>
      </net>
      <net>
         <source obj="lkm1638-display-toggle-led_1" outlet="toggle5"/>
         <dest obj="bool_5" inlet="in"/>
      </net>
      <net>
         <source obj="lkm1638-display-toggle-led_1" outlet="toggle6"/>
         <dest obj="bool_6" inlet="in"/>
      </net>
      <net>
         <source obj="lkm1638-display-toggle-led_1" outlet="toggle7"/>
         <dest obj="bool_7" inlet="in"/>
      </net>
      <net>
         <source obj="lkm1638-display-toggle-led_1" outlet="toggle8"/>
         <dest obj="bool_8" inlet="in"/>
      </net>
      <net>
         <source obj="digital_1" outlet="out"/>
         <dest obj="bool_9" inlet="in"/>
      </net>
      <net>
         <source obj="digital_2" outlet="out"/>
         <dest obj="bool_10" inlet="in"/>
      </net>
      <net>
         <source obj="digital_3" outlet="out"/>
         <dest obj="bool_11" inlet="in"/>
      </net>
      <net>
         <source obj="digital_4" outlet="out"/>
         <dest obj="bool_12" inlet="in"/>
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
      </net>
      <net>
         <source obj="digital_6" outlet="out"/>
         <dest obj="bool_14" inlet="in"/>
      </net>
      <net>
         <source obj="digital_7" outlet="out"/>
         <dest obj="bool_15" inlet="in"/>
      </net>
      <net>
         <source obj="digital_8" outlet="out"/>
         <dest obj="bool_16" inlet="in"/>
      </net>
      <net>
         <source obj="digital_9" outlet="out"/>
         <dest obj="bool_17" inlet="in"/>
      </net>
      <net>
         <source obj="digital_10" outlet="out"/>
         <dest obj="bool_18" inlet="in"/>
      </net>
      <net>
         <source obj="digital_11" outlet="out"/>
         <dest obj="bool_19" inlet="in"/>
      </net>
      <net>
         <source obj="digital_12" outlet="out"/>
         <dest obj="bool_20" inlet="in"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>no</subpatchmode>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>-1832</x>
      <y>749</y>
      <width>1920</width>
      <height>1177</height>
   </windowPos>
</patch-1.0>