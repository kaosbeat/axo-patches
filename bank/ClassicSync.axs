<patch-1.0 appVersion="1.0.12">
   <comment type="patch/comment" x="182" y="14" text="Slave pitch modulation: note tracking + enveloppe + LFO"/>
   <comment type="patch/comment" x="518" y="14" text="Six Step Oscillator with Master osc"/>
   <comment type="patch/comment" x="1008" y="14" text="Resonant filter"/>
   <obj type="midi/in/keyb" uuid="53b04874696932f38aceaa168bd5d9efb743716d" name="keyb_1" x="0" y="42">
      <params/>
      <attribs/>
   </obj>
   <obj type="lfo/sine" uuid="75f7330c26a13953215dccc3b7b9008545c9daa9" name="sine_1" x="112" y="42">
      <params>
         <frac32.s.map name="pitch" value="-1.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/*c" uuid="7d5ef61c3bcd571ee6bbd8437ef3612125dfb225" name="*c_1" x="210" y="42">
      <params>
         <frac32.u.map name="amp" value="1.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="env/adsr" uuid="d1dbcc5fa6f87b98a6a91c87fd44acee5e690bac" name="adsr_2" x="308" y="42">
      <params>
         <frac32.s.map name="a" value="-37.0"/>
         <frac32.s.map name="d" value="50.0"/>
         <frac32.u.map name="s" value="40.0"/>
         <frac32.s.map name="r" value="31.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="mix/mix 2" uuid="682ea5496ded046d981e26b720a6e7f8eca97541" name="mix_1" x="420" y="42">
      <params>
         <frac32.u.map name="gain1" value="4.0"/>
         <frac32.u.map name="gain2" value="21.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="tiar/osc/Steps/SixSync" uuid="ac53c143-aa78-4694-ae58-fc8bf2d60b5f" name="SixStepsSync_1" x="546" y="42">
      <params>
         <frac32.s.map name="pitch slave" MidiCC="13" value="22.0">
            <presets>
               <preset index="1">
                  <f v="-40.0"/>
               </preset>
            </presets>
         </frac32.s.map>
         <frac32.s.map name="pitch master" MidiCC="29" value="-12.0"/>
         <frac32.s.map name="level0" value="-9.0"/>
         <frac32.s.map name="level1" value="48.0"/>
         <frac32.s.map name="level2" value="-23.0"/>
         <frac32.s.map name="level3" value="-4.0"/>
         <frac32.s.map name="level4" value="64.0"/>
         <frac32.s.map name="level5" value="-64.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="tiar/disp/scope" uuid="0991142e-58fa-47e6-9f89-32da05f9fe41" name="scope_1" x="686" y="42">
      <params/>
      <attribs/>
   </obj>
   <obj type="filter/vcf3" uuid="92455c652cd098cbb682a5497baa18abbf2ef865" name="vcf3_1" x="882" y="42">
      <params>
         <frac32.s.map name="pitch" MidiCC="14" value="-12.0"/>
         <frac32.u.map name="reso" MidiCC="30" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="filter/vcf3" uuid="92455c652cd098cbb682a5497baa18abbf2ef865" name="vcf3_2" x="980" y="42">
      <params>
         <frac32.s.map name="pitch" MidiCC="15" value="-11.0"/>
         <frac32.u.map name="reso" MidiCC="31" value="8.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="env/adsr" uuid="d1dbcc5fa6f87b98a6a91c87fd44acee5e690bac" name="adsr_1" x="1078" y="42">
      <params>
         <frac32.s.map name="a" MidiCC="19" value="-26.0"/>
         <frac32.s.map name="d" MidiCC="35" value="35.0">
            <presets>
               <preset index="1">
                  <f v="22.0"/>
               </preset>
            </presets>
         </frac32.s.map>
         <frac32.u.map name="s" MidiCC="55" value="28.5"/>
         <frac32.s.map name="r" MidiCC="83" value="-44.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_1" x="1176" y="42">
      <params/>
      <attribs/>
   </obj>
   <obj type="lfo/sine" uuid="75f7330c26a13953215dccc3b7b9008545c9daa9" name="sine_2" x="112" y="126">
      <params>
         <frac32.s.map name="pitch" value="14.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="mix/mix 2" uuid="682ea5496ded046d981e26b720a6e7f8eca97541" name="mix_3" x="210" y="126">
      <params>
         <frac32.u.map name="gain1" value="15.0"/>
         <frac32.u.map name="gain2" value="5.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="lfo/sine" uuid="75f7330c26a13953215dccc3b7b9008545c9daa9" name="sine_3" x="112" y="210">
      <params>
         <frac32.s.map name="pitch" value="8.0"/>
      </params>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="994" y="266" text="Slight reverb and soft clipping"/>
   <obj type="filter/allpass" uuid="59cc8e3d8044e145e1eb908baa5a7d3ed2ec5f72" name="allpass_2" x="714" y="294">
      <params>
         <frac32.s.map name="g" value="51.0"/>
      </params>
      <attribs>
         <spinner attributeName="delay" value="29"/>
      </attribs>
   </obj>
   <obj type="filter/allpass" uuid="59cc8e3d8044e145e1eb908baa5a7d3ed2ec5f72" name="allpass_3" x="812" y="294">
      <params>
         <frac32.s.map name="g" value="54.0"/>
      </params>
      <attribs>
         <spinner attributeName="delay" value="57"/>
      </attribs>
   </obj>
   <obj type="filter/allpass" uuid="59cc8e3d8044e145e1eb908baa5a7d3ed2ec5f72" name="allpass_1" x="910" y="294">
      <params>
         <frac32.s.map name="g" value="63.0"/>
      </params>
      <attribs>
         <spinner attributeName="delay" value="134"/>
      </attribs>
   </obj>
   <obj type="tiar/dist/DPSoftClip" uuid="4664e423-ca15-4925-952a-6d150aa652da" name="DPSoftClip_1" x="1008" y="294">
      <params>
         <frac32.u.map name="InGain" value="5.0"/>
         <frac32.u.map name="OutGain" value="31.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="filter/allpass" uuid="59cc8e3d8044e145e1eb908baa5a7d3ed2ec5f72" name="allpass_4" x="1134" y="294">
      <params>
         <frac32.s.map name="g" MidiCC="20" value="-64.0"/>
      </params>
      <attribs>
         <spinner attributeName="delay" value="409"/>
      </attribs>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="dial_1" x="1232" y="294">
      <params>
         <frac32.u.map name="value" MidiCC="84" value="14.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_2" x="1302" y="294">
      <params/>
      <attribs/>
   </obj>
   <obj type="audio/out stereo" uuid="a1ca7a567f535acc21055669829101d3ee7f0189" name="out_1" x="1456" y="294">
      <params/>
      <attribs/>
   </obj>
   <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_3" x="1302" y="350">
      <params/>
      <attribs/>
   </obj>
   <obj type="filter/allpass" uuid="59cc8e3d8044e145e1eb908baa5a7d3ed2ec5f72" name="allpass_5" x="1134" y="392">
      <params>
         <frac32.s.map name="g" MidiCC="36" value="63.99999952316284"/>
      </params>
      <attribs>
         <spinner attributeName="delay" value="362"/>
      </attribs>
   </obj>
   <obj type="ctrl/dial b" uuid="862e7d7f29093cb1ce4aed72244d118ad4d46692" name="dial_3" x="518" y="406">
      <params>
         <frac32.s.map name="value" value="-51.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="rbrt/midi/in/monitor" uuid="64b3d36e-97ab-4b18-91f7-ff611e14fd7a" name="monitor_1" x="980" y="434">
      <params/>
      <attribs/>
   </obj>
   <obj type="midi/out/note" uuid="a76ae870da278cbbce5501a57ce7bd0e0ea4215c" name="note_1" x="630" y="448">
      <params/>
      <attribs>
         <combo attributeName="device" selection="usb host port 1"/>
         <spinner attributeName="channel" value="1"/>
      </attribs>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="dial_2" x="518" y="490">
      <params>
         <frac32.u.map name="value" value="20.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/button" uuid="ef3d13774349df85aa9bfecf30dbc91ab8488b3f" name="button_1" x="518" y="588">
      <params>
         <bool32.mom name="b" value="0"/>
      </params>
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
         <dest obj="SixStepsSync_1" inlet="pitch master"/>
         <dest obj="mix_1" inlet="bus_in"/>
      </net>
      <net>
         <source obj="*c_1" outlet="out"/>
         <dest obj="mix_1" inlet="in1"/>
      </net>
      <net>
         <source obj="sine_1" outlet="wave"/>
         <dest obj="mix_3" inlet="bus_in"/>
      </net>
      <net>
         <source obj="SixStepsSync_1" outlet="out"/>
         <dest obj="scope_1" inlet="in"/>
         <dest obj="vcf3_1" inlet="in"/>
      </net>
      <net>
         <source obj="mix_1" outlet="out"/>
         <dest obj="SixStepsSync_1" inlet="pitch slave"/>
      </net>
      <net>
         <source obj="adsr_2" outlet="env"/>
         <dest obj="vcf3_1" inlet="pitch"/>
         <dest obj="vcf3_2" inlet="pitch"/>
         <dest obj="mix_1" inlet="in2"/>
      </net>
      <net>
         <source obj="vcf3_2" outlet="out"/>
         <dest obj="vca_1" inlet="a"/>
      </net>
      <net>
         <source obj="vcf3_1" outlet="out"/>
         <dest obj="vcf3_2" inlet="in"/>
      </net>
      <net>
         <source obj="DPSoftClip_1" outlet="out"/>
         <dest obj="allpass_5" inlet="in"/>
         <dest obj="allpass_4" inlet="in"/>
      </net>
      <net>
         <source obj="allpass_1" outlet="out"/>
         <dest obj="DPSoftClip_1" inlet="in"/>
      </net>
      <net>
         <source obj="allpass_3" outlet="out"/>
         <dest obj="allpass_1" inlet="in"/>
      </net>
      <net>
         <source obj="allpass_2" outlet="out"/>
         <dest obj="allpass_3" inlet="in"/>
      </net>
      <net>
         <source obj="vca_1" outlet="o"/>
         <dest obj="allpass_2" inlet="in"/>
      </net>
      <net>
         <source obj="allpass_4" outlet="out"/>
         <dest obj="vca_2" inlet="a"/>
      </net>
      <net>
         <source obj="sine_2" outlet="wave"/>
         <dest obj="mix_3" inlet="in1"/>
      </net>
      <net>
         <source obj="sine_3" outlet="wave"/>
         <dest obj="mix_3" inlet="in2"/>
      </net>
      <net>
         <source obj="mix_3" outlet="out"/>
         <dest obj="*c_1" inlet="in"/>
      </net>
      <net>
         <source obj="allpass_5" outlet="out"/>
         <dest obj="vca_3" inlet="a"/>
      </net>
      <net>
         <source obj="vca_3" outlet="o"/>
         <dest obj="out_1" inlet="right"/>
      </net>
      <net>
         <source obj="vca_2" outlet="o"/>
         <dest obj="out_1" inlet="left"/>
      </net>
      <net>
         <source obj="dial_1" outlet="out"/>
         <dest obj="vca_2" inlet="v"/>
         <dest obj="vca_3" inlet="v"/>
      </net>
      <net>
         <source obj="dial_2" outlet="out"/>
         <dest obj="note_1" inlet="velo"/>
      </net>
      <net>
         <source obj="button_1" outlet="o"/>
         <dest obj="note_1" inlet="trig"/>
      </net>
      <net>
         <source obj="dial_3" outlet="out"/>
         <dest obj="note_1" inlet="note"/>
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
      <x>1626</x>
      <y>112</y>
      <width>1627</width>
      <height>752</height>
   </windowPos>
</patch-1.0>