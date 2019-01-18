<patch-1.0 appVersion="1.0.12">
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="env" x="56" y="70">
      <params/>
      <attribs/>
   </obj>
   <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_1" x="476" y="168">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="saw freq" x="56" y="182">
      <params/>
      <attribs/>
   </obj>
   <obj type="osc/brds/saw" uuid="ed06f020-7e68-4db6-836a-95a85e200cfb" name="saw_2" x="154" y="196">
      <params>
         <frac32.s.map name="pitch" onParent="true" MidiCC="13" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="outlet_1" x="588" y="196">
      <params/>
      <attribs/>
   </obj>
   <obj type="sss/reverb/fdn8mod" uuid="794cd289-7c21-4939-832e-137bb45d781e" name="fdn8mod_1" x="294" y="294">
      <params>
         <frac32.u.map name="decay" value="10.5"/>
         <frac32.u.map name="size" value="0.0"/>
         <frac32.u.map name="t1" value="0.0"/>
         <frac32.u.map name="t2" value="24.5"/>
         <frac32.u.map name="t3" value="21.5"/>
         <frac32.u.map name="t4" value="16.5"/>
         <frac32.u.map name="t5" value="49.0"/>
         <frac32.u.map name="t6" value="10.5"/>
         <frac32.u.map name="t7" value="42.0"/>
         <frac32.u.map name="t8" value="17.0"/>
         <frac32.s.map name="rate" value="5.0"/>
         <frac32.s.map name="depth" value="35.0"/>
         <frac32.s.map name="spread" value="16.0"/>
         <bool32.tgl name="sine" value="0"/>
         <bool32.tgl name="rnd" value="0"/>
         <bool32.tgl name="stages" value="0"/>
         <frac32.u.map name="dry" value="7.0"/>
         <frac32.u.map name="wet" value="49.5"/>
      </params>
      <attribs>
         <combo attributeName="size" selection="256 (5.33ms)"/>
      </attribs>
   </obj>
   <nets>
      <net>
         <source obj="vca_1" outlet="o"/>
         <dest obj="outlet_1" inlet="outlet"/>
      </net>
      <net>
         <source obj="saw freq" outlet="inlet"/>
         <dest obj="saw_2" inlet="pitch"/>
      </net>
      <net>
         <source obj="saw_2" outlet="wave"/>
         <dest obj="fdn8mod_1" inlet="inL"/>
         <dest obj="vca_1" inlet="a"/>
      </net>
      <net>
         <source obj="env" outlet="inlet"/>
         <dest obj="vca_1" inlet="v"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>no</subpatchmode>
      <MidiChannel>2</MidiChannel>
      <HasMidiChannelSelector>true</HasMidiChannelSelector>
      <NPresets>8</NPresets>
      <NPresetEntries>32</NPresetEntries>
      <NModulationSources>8</NModulationSources>
      <NModulationTargetsPerSource>8</NModulationTargetsPerSource>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>2402</x>
      <y>406</y>
      <width>958</width>
      <height>590</height>
   </windowPos>
</patch-1.0>