<patch-1.0 appVersion="1.0.12">
   <obj type="midi/in/keyb" uuid="53b04874696932f38aceaa168bd5d9efb743716d" name="keyb_1" x="0" y="42">
      <params/>
      <attribs/>
   </obj>
   <obj type="env/adsr" uuid="d1dbcc5fa6f87b98a6a91c87fd44acee5e690bac" name="adsr_2" x="112" y="42">
      <params>
         <frac32.s.map name="a" value="-64.0"/>
         <frac32.s.map name="d" value="64.0"/>
         <frac32.u.map name="s" value="0.0"/>
         <frac32.s.map name="r" value="-2.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="mix/mix 2" uuid="682ea5496ded046d981e26b720a6e7f8eca97541" name="mix_1" x="224" y="42">
      <params>
         <frac32.u.map name="gain1" value="41.5"/>
         <frac32.u.map name="gain2" value="46.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="tiar/osc/Steps/SixSync" uuid="ac53c143-aa78-4694-ae58-fc8bf2d60b5f" name="SixStepsSync_1" x="322" y="42">
      <params>
         <frac32.s.map name="pitch slave" value="-4.0"/>
         <frac32.s.map name="pitch master" value="-12.0">
            <presets/>
         </frac32.s.map>
         <frac32.s.map name="level0" MidiCC="13" value="0.0">
            <presets>
               <preset index="1">
                  <f v="64.0"/>
               </preset>
            </presets>
         </frac32.s.map>
         <frac32.s.map name="level1" MidiCC="29" value="-45.0">
            <presets>
               <preset index="1">
                  <f v="32.0"/>
               </preset>
            </presets>
         </frac32.s.map>
         <frac32.s.map name="level2" MidiCC="49" value="-64.0">
            <presets>
               <preset index="1">
                  <f v="26.0"/>
               </preset>
            </presets>
         </frac32.s.map>
         <frac32.s.map name="level3" MidiCC="14" value="-57.0">
            <presets>
               <preset index="1">
                  <f v="-1.0"/>
               </preset>
            </presets>
         </frac32.s.map>
         <frac32.s.map name="level4" MidiCC="30" value="9.0">
            <presets>
               <preset index="1">
                  <f v="-40.0"/>
               </preset>
            </presets>
         </frac32.s.map>
         <frac32.s.map name="level5" MidiCC="50" value="-25.0">
            <presets>
               <preset index="1">
                  <f v="-64.0"/>
               </preset>
            </presets>
         </frac32.s.map>
      </params>
      <attribs/>
   </obj>
   <obj type="tiar/disp/scope" uuid="0991142e-58fa-47e6-9f89-32da05f9fe41" name="scope_1" x="490" y="42">
      <params/>
      <attribs/>
   </obj>
   <obj type="filter/vcf3" uuid="92455c652cd098cbb682a5497baa18abbf2ef865" name="vcf3_1" x="644" y="42">
      <params>
         <frac32.s.map name="pitch" MidiCC="1" value="-25.0">
            <presets>
               <preset index="1">
                  <f v="22.0"/>
               </preset>
            </presets>
         </frac32.s.map>
         <frac32.u.map name="reso" MidiCC="2" value="64.0">
            <presets>
               <preset index="1">
                  <f v="0.0"/>
               </preset>
            </presets>
         </frac32.u.map>
      </params>
      <attribs/>
   </obj>
   <obj type="filter/allpass" uuid="59cc8e3d8044e145e1eb908baa5a7d3ed2ec5f72" name="allpass_1" x="742" y="42">
      <params>
         <frac32.s.map name="g" MidiCC="51" value="-13.0"/>
      </params>
      <attribs>
         <spinner attributeName="delay" value="73"/>
      </attribs>
   </obj>
   <obj type="tiar/dist/DPSoftClip" uuid="4664e423-ca15-4925-952a-6d150aa652da" name="DPSoftClip_1" x="854" y="42">
      <params>
         <frac32.u.map name="InGain" value="25.5"/>
         <frac32.u.map name="OutGain" value="31.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="tiar/osc/Wave3b" uuid="284db29c-ec57-4f25-a551-dc821a6bb46f" name="Wave3b_1" x="966" y="42">
      <params>
         <frac32.s.map name="pitch" MidiCC="3" value="-19.0">
            <presets>
               <preset index="1">
                  <f v="12.010000228881836"/>
               </preset>
            </presets>
         </frac32.s.map>
         <frac32.u.map name="I1" MidiCC="32" value="10.0">
            <presets>
               <preset index="1">
                  <f v="20.0"/>
               </preset>
            </presets>
         </frac32.u.map>
         <frac32.u.map name="I0" MidiCC="52" value="40.0">
            <presets>
               <preset index="1">
                  <f v="1.0"/>
               </preset>
            </presets>
         </frac32.u.map>
      </params>
      <attribs/>
   </obj>
   <obj type="env/adsr" uuid="d1dbcc5fa6f87b98a6a91c87fd44acee5e690bac" name="adsr_1" x="1078" y="42">
      <params>
         <frac32.s.map name="a" MidiCC="19" value="-42.0"/>
         <frac32.s.map name="d" MidiCC="35" value="-56.0"/>
         <frac32.u.map name="s" MidiCC="55" value="54.5"/>
         <frac32.s.map name="r" MidiCC="4" value="5.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_1" x="1190" y="42">
      <params/>
      <attribs/>
   </obj>
   <obj type="audio/out stereo" uuid="a1ca7a567f535acc21055669829101d3ee7f0189" name="out_1" x="1274" y="42">
      <params/>
      <attribs/>
   </obj>
   <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_2" x="1218" y="126">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="dial_1" x="1204" y="224">
      <params>
         <frac32.u.map name="value" MidiCC="84" value="64.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="rbrt/midi/in/monitor" uuid="64b3d36e-97ab-4b18-91f7-ff611e14fd7a" name="monitor_1" x="616" y="336">
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
         <dest obj="SixStepsSync_1" inlet="pitch master"/>
         <dest obj="Wave3b_1" inlet="pitch"/>
         <dest obj="mix_1" inlet="bus_in"/>
      </net>
      <net>
         <source obj="SixStepsSync_1" outlet="out"/>
         <dest obj="scope_1" inlet="in"/>
         <dest obj="vcf3_1" inlet="in"/>
      </net>
      <net>
         <source obj="mix_1" outlet="out"/>
         <dest obj="SixStepsSync_1" inlet="pitch slave"/>
         <dest obj="vcf3_1" inlet="pitch"/>
      </net>
      <net>
         <source obj="adsr_2" outlet="env"/>
         <dest obj="Wave3b_1" inlet="mEnv"/>
         <dest obj="mix_1" inlet="in2"/>
      </net>
      <net>
         <source obj="Wave3b_1" outlet="wave"/>
         <dest obj="vca_1" inlet="a"/>
      </net>
      <net>
         <source obj="DPSoftClip_1" outlet="out"/>
         <dest obj="Wave3b_1" inlet="m"/>
      </net>
      <net>
         <source obj="vca_1" outlet="o"/>
         <dest obj="vca_2" inlet="a"/>
      </net>
      <net>
         <source obj="allpass_1" outlet="out"/>
         <dest obj="DPSoftClip_1" inlet="in"/>
      </net>
      <net>
         <source obj="vcf3_1" outlet="out"/>
         <dest obj="allpass_1" inlet="in"/>
      </net>
      <net>
         <source obj="vca_2" outlet="o"/>
         <dest obj="out_1" inlet="right"/>
         <dest obj="out_1" inlet="left"/>
      </net>
      <net>
         <source obj="dial_1" outlet="out"/>
         <dest obj="vca_2" inlet="v"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>polyphonic</subpatchmode>
      <MidiChannel>1</MidiChannel>
      <NPresets>8</NPresets>
      <NPresetEntries>32</NPresetEntries>
      <NModulationSources>8</NModulationSources>
      <NModulationTargetsPerSource>8</NModulationTargetsPerSource>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>346</x>
      <y>373</y>
      <width>1348</width>
      <height>702</height>
   </windowPos>
</patch-1.0>