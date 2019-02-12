<patch-1.0 appVersion="1.0.12">
   <obj type="midi/in/keyb mod" uuid="abcd509d15e7d13d5381203fd2b4d0ac6fe57bb3" name="keyb_1" x="322" y="42">
      <params/>
      <attribs/>
   </obj>
   <obj type="env/adsr m" uuid="98bd39fb828c392b28126d259cb5175e6f6ea34b" name="adsr_1" x="588" y="42">
      <params>
         <frac32.s.map name="a" MidiCC="19" value="-11.0"/>
         <frac32.s.map name="d" MidiCC="35" value="-58.0"/>
         <frac32.u.map name="s" MidiCC="55" value="11.5"/>
         <frac32.s.map name="r" MidiCC="83" value="61.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="dial_2" x="686" y="98">
      <params>
         <frac32.u.map name="value" MidiCC="84" value="10.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="sss/osc/DX7" uuid="e374c425-dedd-4fdb-8cbd-0ca02256a33d" name="DX7_1" x="448" y="126">
      <params>
         <frac32.s.map name="pitch" onParent="true" value="-1.0"/>
         <int32 name="algo" onParent="true" value="2"/>
         <int32 name="OS" onParent="true" value="3"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="p1" x="252" y="154">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="v1" x="322" y="154">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="outlet_1" x="854" y="168">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="p2" x="252" y="196">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="v2" x="322" y="196">
      <params/>
      <attribs/>
   </obj>
   <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_1" x="686" y="224">
      <params/>
      <attribs/>
   </obj>
   <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_2" x="756" y="224">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="p3" x="252" y="238">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="v3" x="322" y="238">
      <params/>
      <attribs/>
   </obj>
   <obj type="audio/out stereo" uuid="a1ca7a567f535acc21055669829101d3ee7f0189" name="out_1" x="854" y="252">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="p4" x="252" y="280">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="v4" x="322" y="280">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="p5" x="252" y="322">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="v5" x="322" y="322">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="p6" x="252" y="364">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="v6" x="322" y="364">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="FM" x="322" y="420">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet i" uuid="f11927f00c59219df0c50f73056aa19f125540b7" name="algo" x="322" y="462">
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
         <dest obj="vca_2" inlet="a"/>
      </net>
      <net>
         <source obj="keyb_1" outlet="note"/>
         <dest obj="DX7_1" inlet="main"/>
      </net>
      <net>
         <source obj="keyb_1" outlet="gate"/>
         <dest obj="adsr_1" inlet="gate"/>
      </net>
      <net>
         <source obj="keyb_1" outlet="velocity"/>
         <dest obj="adsr_1" inlet="s"/>
      </net>
      <net>
         <source obj="dial_2" outlet="out"/>
         <dest obj="vca_2" inlet="v"/>
      </net>
      <net>
         <source obj="vca_2" outlet="o"/>
         <dest obj="out_1" inlet="left"/>
         <dest obj="out_1" inlet="right"/>
      </net>
      <net>
         <source obj="p1" outlet="inlet"/>
         <dest obj="DX7_1" inlet="pitch1"/>
      </net>
      <net>
         <source obj="p2" outlet="inlet"/>
         <dest obj="DX7_1" inlet="pitch2"/>
      </net>
      <net>
         <source obj="p3" outlet="inlet"/>
         <dest obj="DX7_1" inlet="pitch3"/>
      </net>
      <net>
         <source obj="p4" outlet="inlet"/>
         <dest obj="DX7_1" inlet="pitch4"/>
      </net>
      <net>
         <source obj="p5" outlet="inlet"/>
         <dest obj="DX7_1" inlet="pitch5"/>
      </net>
      <net>
         <source obj="p6" outlet="inlet"/>
         <dest obj="DX7_1" inlet="pitch6"/>
      </net>
      <net>
         <source obj="v1" outlet="inlet"/>
         <dest obj="DX7_1" inlet="vol1"/>
      </net>
      <net>
         <source obj="v2" outlet="inlet"/>
         <dest obj="DX7_1" inlet="vol2"/>
      </net>
      <net>
         <source obj="v3" outlet="inlet"/>
         <dest obj="DX7_1" inlet="vol3"/>
      </net>
      <net>
         <source obj="v4" outlet="inlet"/>
         <dest obj="DX7_1" inlet="vol4"/>
      </net>
      <net>
         <source obj="v5" outlet="inlet"/>
         <dest obj="DX7_1" inlet="vol5"/>
      </net>
      <net>
         <source obj="v6" outlet="inlet"/>
         <dest obj="DX7_1" inlet="vol6"/>
      </net>
      <net>
         <source obj="FM" outlet="inlet"/>
         <dest obj="DX7_1" inlet="FM"/>
      </net>
      <net>
         <source obj="algo" outlet="inlet"/>
         <dest obj="DX7_1" inlet="algo"/>
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
      <x>1981</x>
      <y>166</y>
      <width>1379</width>
      <height>601</height>
   </windowPos>
</patch-1.0>