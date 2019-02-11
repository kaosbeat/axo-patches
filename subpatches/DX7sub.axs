<patch-1.0 appVersion="1.0.12">
   <obj type="env/adsr m" uuid="98bd39fb828c392b28126d259cb5175e6f6ea34b" name="adsr_1" x="364" y="56">
      <params>
         <frac32.s.map name="a" value="8.0"/>
         <frac32.s.map name="d" value="21.0"/>
         <frac32.u.map name="s" value="31.5"/>
         <frac32.s.map name="r" value="11.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="midi/in/keyb mod" uuid="abcd509d15e7d13d5381203fd2b4d0ac6fe57bb3" name="keyb_1" x="70" y="126">
      <params/>
      <attribs/>
   </obj>
   <obj type="sss/osc/DX7" uuid="e374c425-dedd-4fdb-8cbd-0ca02256a33d" name="DX7_1" x="238" y="140">
      <params>
         <frac32.s.map name="pitch" onParent="true" value="11.0"/>
         <int32 name="algo" onParent="true" value="6"/>
         <int32 name="OS" onParent="true" value="1"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="outlet_1" x="504" y="182">
      <params/>
      <attribs/>
   </obj>
   <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_1" x="448" y="238">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="adsr_1" outlet="env"/>
         <dest obj="vca_1" inlet="v"/>
      </net>
      <net>
         <source obj="DX7_1" outlet="wave"/>
         <dest obj="vca_1" inlet="a"/>
      </net>
      <net>
         <source obj="vca_1" outlet="o"/>
         <dest obj="outlet_1" inlet="outlet"/>
      </net>
      <net>
         <source obj="keyb_1" outlet="note"/>
         <dest obj="DX7_1" inlet="main"/>
      </net>
      <net>
         <source obj="keyb_1" outlet="gate"/>
         <dest obj="adsr_1" inlet="gate"/>
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
      <Author></Author>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>2428</x>
      <y>232</y>
      <width>676</width>
      <height>700</height>
   </windowPos>
</patch-1.0>