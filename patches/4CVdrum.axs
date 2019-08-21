<patch-1.0 appVersion="1.0.12">
   <obj type="disp/dial p" uuid="44fd18b562e434b3230441681132dbeabb15cdc5" name="dial_1" x="294" y="42">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/&lt;c" uuid="852c84e7bd967ee4a44cc553fcf6e3fc9d8b92c4" name="&lt;c_1" x="392" y="42">
      <params>
         <frac32.u.map name="c" value="17.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="disp/chart p" uuid="58f42040a894006a5f73ed8cb8d0bd45481b28cd" name="chart_1" x="616" y="42">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/in/analog" uuid="1c0c845ed2d7e06ae5f377ba13d9d09f4747ac87" name="analog_1" x="112" y="56">
      <params/>
      <attribs>
         <combo attributeName="channel" selection="PA0 (ADC1_IN0)"/>
      </attribs>
   </obj>
   <obj type="disp/bool" uuid="a0ee71d48208b71752cbb8c05e55145106ef3946" name="bool_1" x="742" y="84">
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
   <obj type="midi/in/cc any" uuid="eca13eae3f7625f3ca80cadd19a90de033698aa" name="cc_1" x="532" y="476">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/==" uuid="d80966871d5328696da567bba03c3fa83060f08d" name="==_1" x="728" y="490">
      <params/>
      <attribs/>
   </obj>
   <obj type="wave/play fn" uuid="25910f7130532e4934eed3cf2a934324790d0f00" name="play_1" x="854" y="490">
      <params/>
      <attribs>
         <file attributeName="fn" file="./kicks/808-Kick06n.raw"/>
      </attribs>
   </obj>
   <obj type="disp/dial p" uuid="44fd18b562e434b3230441681132dbeabb15cdc5" name="dial_5" x="1134" y="490">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="dial_6" x="630" y="504">
      <params>
         <frac32.u.map name="value" value="19.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/==" uuid="d80966871d5328696da567bba03c3fa83060f08d" name="==_2" x="728" y="588">
      <params/>
      <attribs/>
   </obj>
   <obj type="wave/play fn" uuid="25910f7130532e4934eed3cf2a934324790d0f00" name="play_2" x="854" y="588">
      <params/>
      <attribs>
         <file attributeName="fn" file="./kicks/808-Kicks02.raw"/>
      </attribs>
   </obj>
   <obj type="mix/mix 6 g" uuid="2dd642dee5072357722740c850699b79b8da3008" name="mix_1" x="1218" y="588">
      <params>
         <frac32.u.map name="gain1" value="32.5">
            <presets/>
         </frac32.u.map>
         <frac32.u.map name="gain2" value="32.5">
            <presets/>
         </frac32.u.map>
         <frac32.u.map name="gain3" value="32.5"/>
         <frac32.u.map name="gain4" value="33.0">
            <presets/>
         </frac32.u.map>
         <frac32.u.map name="gain5" value="32.5">
            <presets/>
         </frac32.u.map>
         <frac32.u.map name="gain6" value="33.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="dial_7" x="630" y="602">
      <params>
         <frac32.u.map name="value" value="14.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="audio/out left" uuid="b11a3c09b2fdd575ea8212f2ce7743d5269253b1" name="out_2" x="1344" y="658">
      <params/>
      <attribs/>
   </obj>
   <obj type="wave/play fn" uuid="25910f7130532e4934eed3cf2a934324790d0f00" name="play_3" x="854" y="686">
      <params/>
      <attribs>
         <file attributeName="fn" file="snares/808-Snare10.raw"/>
      </attribs>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="dial_8" x="630" y="700">
      <params>
         <frac32.u.map name="value" value="51.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/==" uuid="d80966871d5328696da567bba03c3fa83060f08d" name="==_3" x="728" y="700">
      <params/>
      <attribs/>
   </obj>
   <obj type="wave/play fn" uuid="25910f7130532e4934eed3cf2a934324790d0f00" name="play_4" x="854" y="784">
      <params/>
      <attribs>
         <file attributeName="fn" file="hihats/808-HiHats06.raw"/>
      </attribs>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="dial_9" x="630" y="798">
      <params>
         <frac32.u.map name="value" value="33.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/==" uuid="d80966871d5328696da567bba03c3fa83060f08d" name="==_4" x="728" y="798">
      <params/>
      <attribs/>
   </obj>
   <obj type="rbrt/midi/in/monitor" uuid="64b3d36e-97ab-4b18-91f7-ff611e14fd7a" name="monitor_1" x="1092" y="798">
      <params/>
      <attribs/>
   </obj>
   <obj type="wave/play fn" uuid="25910f7130532e4934eed3cf2a934324790d0f00" name="play_5" x="854" y="882">
      <params/>
      <attribs>
         <file attributeName="fn" file="hihats/808-OpenHiHats06.raw"/>
      </attribs>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="dial_10" x="630" y="910">
      <params>
         <frac32.u.map name="value" value="25.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/==" uuid="d80966871d5328696da567bba03c3fa83060f08d" name="==_5" x="728" y="910">
      <params/>
      <attribs/>
   </obj>
   <obj type="wave/play fn" uuid="25910f7130532e4934eed3cf2a934324790d0f00" name="play_6" x="854" y="980">
      <params/>
      <attribs>
         <file attributeName="fn" file="percussion/808-Conga1.raw"/>
      </attribs>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="dial_11" x="630" y="1008">
      <params>
         <frac32.u.map name="value" value="38.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/==" uuid="d80966871d5328696da567bba03c3fa83060f08d" name="==_6" x="728" y="1008">
      <params/>
      <attribs/>
   </obj>
   <nets>
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
      <net>
         <source obj="cc_1" outlet="value"/>
         <dest obj="dial_5" inlet="in"/>
         <dest obj="==_1" inlet="in1"/>
         <dest obj="==_2" inlet="in1"/>
         <dest obj="==_4" inlet="in1"/>
         <dest obj="==_5" inlet="in1"/>
         <dest obj="==_6" inlet="in1"/>
         <dest obj="==_3" inlet="in1"/>
      </net>
      <net>
         <source obj="==_1" outlet="out"/>
         <dest obj="play_1" inlet="start"/>
      </net>
      <net>
         <source obj="play_1" outlet="out"/>
         <dest obj="mix_1" inlet="in1"/>
      </net>
      <net>
         <source obj="dial_6" outlet="out"/>
         <dest obj="==_1" inlet="in2"/>
      </net>
      <net>
         <source obj="==_2" outlet="out"/>
         <dest obj="play_2" inlet="start"/>
      </net>
      <net>
         <source obj="==_6" outlet="out"/>
         <dest obj="play_6" inlet="start"/>
      </net>
      <net>
         <source obj="==_5" outlet="out"/>
         <dest obj="play_5" inlet="start"/>
      </net>
      <net>
         <source obj="==_4" outlet="out"/>
         <dest obj="play_4" inlet="start"/>
      </net>
      <net>
         <source obj="==_3" outlet="out"/>
         <dest obj="play_3" inlet="start"/>
      </net>
      <net>
         <source obj="dial_7" outlet="out"/>
         <dest obj="==_2" inlet="in2"/>
      </net>
      <net>
         <source obj="dial_8" outlet="out"/>
         <dest obj="==_3" inlet="in2"/>
      </net>
      <net>
         <source obj="dial_9" outlet="out"/>
         <dest obj="==_4" inlet="in2"/>
      </net>
      <net>
         <source obj="dial_10" outlet="out"/>
         <dest obj="==_5" inlet="in2"/>
      </net>
      <net>
         <source obj="dial_11" outlet="out"/>
         <dest obj="==_6" inlet="in2"/>
      </net>
      <net>
         <source obj="mix_1" outlet="out"/>
         <dest obj="out_2" inlet="wave"/>
      </net>
      <net>
         <source obj="play_2" outlet="out"/>
         <dest obj="mix_1" inlet="in2"/>
      </net>
      <net>
         <source obj="play_3" outlet="out"/>
         <dest obj="mix_1" inlet="in3"/>
      </net>
      <net>
         <source obj="play_4" outlet="out"/>
         <dest obj="mix_1" inlet="in4"/>
      </net>
      <net>
         <source obj="play_5" outlet="out"/>
         <dest obj="mix_1" inlet="in5"/>
      </net>
      <net>
         <source obj="play_6" outlet="out"/>
         <dest obj="mix_1" inlet="in6"/>
      </net>
      <net>
         <source obj="analog_1" outlet="out"/>
         <dest obj="&lt;c_1" inlet="in"/>
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