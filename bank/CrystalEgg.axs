<patch-1.0 appVersion="1.0.12">
   <obj type="midi/in/keyb" uuid="53b04874696932f38aceaa168bd5d9efb743716d" name="keyb_1" x="14" y="14">
      <params/>
      <attribs/>
   </obj>
   <obj type="lfo/sine" uuid="75f7330c26a13953215dccc3b7b9008545c9daa9" name="sine_1" x="112" y="14">
      <params>
         <frac32.s.map name="pitch" MidiCC="15" value="-4.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/*c" uuid="7d5ef61c3bcd571ee6bbd8437ef3612125dfb225" name="*c_1" x="210" y="14">
      <params>
         <frac32.u.map name="amp" MidiCC="16" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="mix/mix 2" uuid="682ea5496ded046d981e26b720a6e7f8eca97541" name="mix_1" x="308" y="14">
      <params>
         <frac32.u.map name="gain1" value="7.5"/>
         <frac32.u.map name="gain2" value="32.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="tiar/osc/Steps/Six" uuid="389db1c3-82e5-4d29-b17f-9c96663f66b0" name="SixSteps_1" x="392" y="14">
      <params>
         <frac32.s.map name="pitch" value="-12.0"/>
         <frac32.s.map name="level0" value="42.0"/>
         <frac32.s.map name="level1" value="-40.0"/>
         <frac32.s.map name="level2" value="41.0"/>
         <frac32.s.map name="level3" value="-44.0"/>
         <frac32.s.map name="level4" value="39.0"/>
         <frac32.s.map name="level5" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="tiar/osc/Steps/Six" uuid="389db1c3-82e5-4d29-b17f-9c96663f66b0" name="SixSteps_2" x="490" y="14">
      <params>
         <frac32.s.map name="pitch" value="-12.010000228881836"/>
         <frac32.s.map name="level0" value="23.0"/>
         <frac32.s.map name="level1" value="-64.0"/>
         <frac32.s.map name="level2" value="64.0"/>
         <frac32.s.map name="level3" value="-26.0"/>
         <frac32.s.map name="level4" value="5.0"/>
         <frac32.s.map name="level5" value="-6.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="mix/mix 2" uuid="30c04239c88e09d3fa5c333b784ecf54f1b0e268" name="mix_3" x="588" y="14">
      <params>
         <frac32.u.map name="gain1" value="32.5"/>
         <frac32.u.map name="gain2" value="33.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="filter/vcf3" uuid="92455c652cd098cbb682a5497baa18abbf2ef865" name="vcf3_1" x="686" y="14">
      <params>
         <frac32.s.map name="pitch" MidiCC="13" value="22.0"/>
         <frac32.u.map name="reso" MidiCC="14" value="57.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_1" x="784" y="14">
      <params/>
      <attribs/>
   </obj>
   <obj type="tiar/dist/DPSoftClip" uuid="4664e423-ca15-4925-952a-6d150aa652da" name="DPSoftClip_1" x="840" y="14">
      <params>
         <frac32.u.map name="InGain" value="21.0"/>
         <frac32.u.map name="OutGain" MidiCC="84" value="6.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="audio/out stereo" uuid="a1ca7a567f535acc21055669829101d3ee7f0189" name="out_1" x="966" y="14">
      <params/>
      <attribs/>
   </obj>
   <obj type="tiar/disp/scope" uuid="0991142e-58fa-47e6-9f89-32da05f9fe41" name="scope_1" x="798" y="154">
      <params/>
      <attribs/>
   </obj>
   <obj type="env/adsr" uuid="d1dbcc5fa6f87b98a6a91c87fd44acee5e690bac" name="adsr_2" x="42" y="168">
      <params>
         <frac32.s.map name="a" value="-64.0"/>
         <frac32.s.map name="d" value="44.0"/>
         <frac32.u.map name="s" value="0.0"/>
         <frac32.s.map name="r" value="8.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="mix/mix 2" uuid="682ea5496ded046d981e26b720a6e7f8eca97541" name="mix_2" x="140" y="168">
      <params>
         <frac32.u.map name="gain1" value="52.0"/>
         <frac32.u.map name="gain2" value="32.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="env/adsr" uuid="d1dbcc5fa6f87b98a6a91c87fd44acee5e690bac" name="adsr_1" x="224" y="168">
      <params>
         <frac32.s.map name="a" MidiCC="19" value="-21.0"/>
         <frac32.s.map name="d" MidiCC="35" value="-47.0"/>
         <frac32.u.map name="s" MidiCC="55" value="27.0"/>
         <frac32.s.map name="r" MidiCC="83" value="29.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="rbrt/midi/in/monitor" uuid="64b3d36e-97ab-4b18-91f7-ff611e14fd7a" name="monitor_1" x="700" y="434">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="keyb_1" outlet="gate"/>
         <dest obj="adsr_1" inlet="gate"/>
         <dest obj="adsr_2" inlet="gate"/>
      </net>
      <net>
         <source obj="adsr_1" outlet="env"/>
         <dest obj="vca_1" inlet="v"/>
      </net>
      <net>
         <source obj="keyb_1" outlet="note"/>
         <dest obj="mix_1" inlet="bus_in"/>
         <dest obj="mix_2" inlet="bus_in"/>
      </net>
      <net>
         <source obj="mix_1" outlet="out"/>
         <dest obj="SixSteps_1" inlet="pitch"/>
         <dest obj="SixSteps_2" inlet="pitch"/>
      </net>
      <net>
         <source obj="*c_1" outlet="out"/>
         <dest obj="mix_1" inlet="in1"/>
      </net>
      <net>
         <source obj="sine_1" outlet="wave"/>
         <dest obj="*c_1" inlet="in"/>
      </net>
      <net>
         <source obj="SixSteps_1" outlet="out"/>
         <dest obj="mix_3" inlet="in1"/>
      </net>
      <net>
         <source obj="adsr_2" outlet="env"/>
         <dest obj="mix_2" inlet="in1"/>
      </net>
      <net>
         <source obj="vcf3_1" outlet="out"/>
         <dest obj="vca_1" inlet="a"/>
      </net>
      <net>
         <source obj="mix_2" outlet="out"/>
         <dest obj="vcf3_1" inlet="pitch"/>
      </net>
      <net>
         <source obj="DPSoftClip_1" outlet="out"/>
         <dest obj="out_1" inlet="left"/>
         <dest obj="out_1" inlet="right"/>
         <dest obj="scope_1" inlet="in"/>
      </net>
      <net>
         <source obj="mix_3" outlet="out"/>
         <dest obj="vcf3_1" inlet="in"/>
      </net>
      <net>
         <source obj="SixSteps_2" outlet="out"/>
         <dest obj="mix_3" inlet="in2"/>
      </net>
      <net>
         <source obj="vca_1" outlet="o"/>
         <dest obj="DPSoftClip_1" inlet="in"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>polyphonic</subpatchmode>
      <MidiChannel>1</MidiChannel>
      <NPresets>8</NPresets>
      <NPresetEntries>32</NPresetEntries>
      <NModulationSources>8</NModulationSources>
      <NModulationTargetsPerSource>8</NModulationTargetsPerSource>
      <Author></Author>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>1770</x>
      <y>152</y>
      <width>1105</width>
      <height>877</height>
   </windowPos>
</patch-1.0>