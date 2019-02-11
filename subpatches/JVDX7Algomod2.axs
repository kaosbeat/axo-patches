<patch-1.0 appVersion="1.0.12">
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="pitch" x="84" y="14">
      <params/>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="238" y="28" text="modulators env"/>
   <comment type="patch/comment" x="378" y="28" text="carrier env"/>
   <comment type="patch/comment" x="588" y="28" text="modulators"/>
   <obj type="env/adsr" uuid="d1dbcc5fa6f87b98a6a91c87fd44acee5e690bac" name="adsr_2" x="378" y="56">
      <params>
         <frac32.s.map name="a" value="20.0"/>
         <frac32.s.map name="d" value="64.0"/>
         <frac32.u.map name="s" value="37.5"/>
         <frac32.s.map name="r" value="45.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="osc/sine" uuid="6e094045cca76a9dbf7ebfa72e44e4700d2b3ba" name="sine_2" x="588" y="56">
      <params>
         <frac32.s.map name="pitch" value="-26.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_2" x="700" y="56">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="env" x="84" y="84">
      <params/>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="966" y="168" text="feedback"/>
   <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="inlet_2" x="70" y="182">
      <params/>
      <attribs/>
   </obj>
   <obj type="osc/sine" uuid="6e094045cca76a9dbf7ebfa72e44e4700d2b3ba" name="sine_4" x="588" y="196">
      <params>
         <frac32.s.map name="pitch" value="19.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="osc/sine" uuid="6e094045cca76a9dbf7ebfa72e44e4700d2b3ba" name="sine_3" x="770" y="196">
      <params>
         <frac32.s.map name="pitch" value="0.19999980926513672"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/gain" uuid="62b1c1a6337c7c8f6aec96408a432477b113cfa0" name="gain_1" x="966" y="196">
      <params>
         <frac32.u.map name="amp" value="3.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_4" x="700" y="252">
      <params/>
      <attribs/>
   </obj>
   <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_3" x="882" y="252">
      <params/>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="967" y="299" text="mod mixer"/>
   <comment type="patch/comment" x="28" y="308" text="lfo&apos;s"/>
   <obj type="mix/mix 3 g" uuid="efc0bdb8ca0ec2184330951eff5203ff487e35a9" name="mix_1" x="966" y="322">
      <params>
         <frac32.u.map name="gain1" value="40.0"/>
         <frac32.u.map name="gain2" value="48.0"/>
         <frac32.u.map name="gain3" value="6.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="lfo/sine" uuid="75f7330c26a13953215dccc3b7b9008545c9daa9" name="sine_7" x="28" y="336">
      <params>
         <frac32.s.map name="pitch" value="-56.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/*c" uuid="7d5ef61c3bcd571ee6bbd8437ef3612125dfb225" name="*c_3" x="140" y="336">
      <params>
         <frac32.u.map name="amp" onParent="true" value="1.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="conv/interp" uuid="d68c1a8709d8b55e3de8715d727ec0a2d8569d9a" name="interp_2" x="252" y="336">
      <params/>
      <attribs/>
   </obj>
   <obj type="osc/sine" uuid="6e094045cca76a9dbf7ebfa72e44e4700d2b3ba" name="sine_6" x="588" y="336">
      <params>
         <frac32.s.map name="pitch" value="-43.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="osc/sine" uuid="6e094045cca76a9dbf7ebfa72e44e4700d2b3ba" name="sine_5" x="770" y="336">
      <params>
         <frac32.s.map name="pitch" value="-31.0"/>
      </params>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="1093" y="375" text="carrier"/>
   <comment type="patch/comment" x="1275" y="378" text="gain"/>
   <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_5" x="700" y="392">
      <params/>
      <attribs/>
   </obj>
   <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_6" x="882" y="392">
      <params/>
      <attribs/>
   </obj>
   <obj type="osc/sine" uuid="6e094045cca76a9dbf7ebfa72e44e4700d2b3ba" name="sine_1" x="1092" y="406">
      <params>
         <frac32.s.map name="pitch" value="-2.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_1" x="1204" y="406">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/*c" uuid="7a66f52a9594e7e9eb31328ea725cb3641a80b55" name="*c_1" x="1274" y="406">
      <params>
         <frac32.u.map name="amp" value="22.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="outlet_1" x="1428" y="406">
      <params/>
      <attribs/>
   </obj>
   <obj type="lfo/sine" uuid="75f7330c26a13953215dccc3b7b9008545c9daa9" name="sine_8" x="28" y="448">
      <params>
         <frac32.s.map name="pitch" value="-21.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/*c" uuid="7d5ef61c3bcd571ee6bbd8437ef3612125dfb225" name="*c_4" x="140" y="448">
      <params>
         <frac32.u.map name="amp" onParent="true" value="0.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="conv/interp" uuid="d68c1a8709d8b55e3de8715d727ec0a2d8569d9a" name="interp_1" x="252" y="448">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/*c" uuid="7a66f52a9594e7e9eb31328ea725cb3641a80b55" name="*c_2" x="588" y="462">
      <params>
         <frac32.u.map name="amp" value="29.5"/>
      </params>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="28" y="658" text="patch by Jarno"/>
   <comment type="patch/comment" x="140" y="658" text="modded by Martijn"/>
   <nets>
      <net>
         <source obj="sine_1" outlet="wave"/>
         <dest obj="vca_1" inlet="a"/>
      </net>
      <net>
         <source obj="env" outlet="inlet"/>
         <dest obj="vca_2" inlet="v"/>
         <dest obj="vca_4" inlet="v"/>
         <dest obj="vca_3" inlet="v"/>
         <dest obj="vca_5" inlet="v"/>
         <dest obj="vca_6" inlet="v"/>
      </net>
      <net>
         <source obj="sine_2" outlet="wave"/>
         <dest obj="vca_2" inlet="a"/>
      </net>
      <net>
         <source obj="sine_3" outlet="wave"/>
         <dest obj="vca_3" inlet="a"/>
      </net>
      <net>
         <source obj="sine_4" outlet="wave"/>
         <dest obj="vca_4" inlet="a"/>
      </net>
      <net>
         <source obj="vca_2" outlet="o"/>
         <dest obj="mix_1" inlet="in1"/>
      </net>
      <net>
         <source obj="vca_3" outlet="o"/>
         <dest obj="mix_1" inlet="in2"/>
      </net>
      <net>
         <source obj="sine_6" outlet="wave"/>
         <dest obj="vca_5" inlet="a"/>
      </net>
      <net>
         <source obj="sine_5" outlet="wave"/>
         <dest obj="vca_6" inlet="a"/>
      </net>
      <net>
         <source obj="vca_6" outlet="o"/>
         <dest obj="mix_1" inlet="in3"/>
      </net>
      <net>
         <source obj="vca_1" outlet="o"/>
         <dest obj="*c_1" inlet="in"/>
      </net>
      <net>
         <source obj="vca_4" outlet="o"/>
         <dest obj="sine_3" inlet="phase"/>
      </net>
      <net>
         <source obj="vca_5" outlet="o"/>
         <dest obj="sine_5" inlet="phase"/>
         <dest obj="*c_2" inlet="in"/>
      </net>
      <net>
         <source obj="*c_2" outlet="out"/>
         <dest obj="sine_6" inlet="phase"/>
      </net>
      <net>
         <source obj="mix_1" outlet="out"/>
         <dest obj="sine_1" inlet="phase"/>
         <dest obj="gain_1" inlet="in"/>
      </net>
      <net>
         <source obj="sine_7" outlet="wave"/>
         <dest obj="*c_3" inlet="in"/>
      </net>
      <net>
         <source obj="sine_8" outlet="wave"/>
         <dest obj="*c_4" inlet="in"/>
      </net>
      <net>
         <source obj="*c_4" outlet="out"/>
         <dest obj="interp_1" inlet="i"/>
      </net>
      <net>
         <source obj="interp_1" outlet="o"/>
         <dest obj="sine_2" inlet="freq"/>
      </net>
      <net>
         <source obj="*c_3" outlet="out"/>
         <dest obj="interp_2" inlet="i"/>
      </net>
      <net>
         <source obj="interp_2" outlet="o"/>
         <dest obj="sine_6" inlet="freq"/>
         <dest obj="sine_3" inlet="freq"/>
      </net>
      <net>
         <source obj="gain_1" outlet="out"/>
         <dest obj="sine_4" inlet="freq"/>
      </net>
      <net>
         <source obj="adsr_2" outlet="env"/>
         <dest obj="vca_1" inlet="v"/>
      </net>
      <net>
         <source obj="pitch" outlet="inlet"/>
         <dest obj="sine_4" inlet="pitch"/>
         <dest obj="sine_3" inlet="pitch"/>
         <dest obj="sine_6" inlet="pitch"/>
         <dest obj="sine_2" inlet="pitch"/>
         <dest obj="sine_5" inlet="pitch"/>
         <dest obj="sine_1" inlet="pitch"/>
      </net>
      <net>
         <source obj="inlet_2" outlet="inlet"/>
         <dest obj="adsr_2" inlet="gate"/>
      </net>
      <net>
         <source obj="*c_1" outlet="out"/>
         <dest obj="outlet_1" inlet="outlet"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>polyphonic</subpatchmode>
      <MidiChannel>1</MidiChannel>
      <HasMidiChannelSelector>true</HasMidiChannelSelector>
      <NPresets>8</NPresets>
      <NPresetEntries>32</NPresetEntries>
      <NModulationSources>8</NModulationSources>
      <NModulationTargetsPerSource>8</NModulationTargetsPerSource>
      <Author>J.Verhoeven</Author>
      <License>Top secret</License>
   </settings>
   <notes><![CDATA[Yamaha DX-7 Algorithm implementation in Axoloti
See: http://www.cim.mcgill.ca/~clark/nordmodularbook/fmalgorithms.htm
Single envelope generator
Two Sine LFO's
]]></notes>
   <windowPos>
      <x>1481</x>
      <y>127</y>
      <width>1879</width>
      <height>879</height>
   </windowPos>
</patch-1.0>