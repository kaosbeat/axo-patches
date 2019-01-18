<patch-1.0 appVersion="1.0.12">
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="ptch" x="0" y="196">
      <params/>
      <attribs/>
   </obj>
   <obj type="midi/in/cc hr i" uuid="72d8018c0f072c469fcd902b0423ba8fd5e6433" name="cc_2" x="168" y="196">
      <params/>
      <attribs>
         <spinner attributeName="cc" value="13"/>
         <spinner attributeName="default" value="64"/>
      </attribs>
   </obj>
   <obj type="midi/in/cc hr i" uuid="72d8018c0f072c469fcd902b0423ba8fd5e6433" name="cc_8" x="308" y="210">
      <params/>
      <attribs>
         <spinner attributeName="cc" value="29"/>
         <spinner attributeName="default" value="64"/>
      </attribs>
   </obj>
   <obj type="sss/osc/DX7" uuid="e374c425-dedd-4fdb-8cbd-0ca02256a33d" name="DX7_1" x="532" y="210">
      <params>
         <frac32.s.map name="pitch" onParent="true" value="11.0"/>
         <int32 name="algo" onParent="true" value="6"/>
         <int32 name="OS" onParent="true" value="1"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="outlet_1" x="784" y="224">
      <params/>
      <attribs/>
   </obj>
   <obj type="midi/in/cc hr i" uuid="72d8018c0f072c469fcd902b0423ba8fd5e6433" name="cc_1" x="42" y="294">
      <params/>
      <attribs>
         <spinner attributeName="cc" value="19"/>
         <spinner attributeName="default" value="64"/>
      </attribs>
   </obj>
   <obj type="midi/in/cc hr i" uuid="72d8018c0f072c469fcd902b0423ba8fd5e6433" name="cc_3" x="168" y="294">
      <params/>
      <attribs>
         <spinner attributeName="cc" value="14"/>
         <spinner attributeName="default" value="64"/>
      </attribs>
   </obj>
   <obj type="midi/in/cc hr i" uuid="72d8018c0f072c469fcd902b0423ba8fd5e6433" name="cc_9" x="308" y="308">
      <params/>
      <attribs>
         <spinner attributeName="cc" value="30"/>
         <spinner attributeName="default" value="64"/>
      </attribs>
   </obj>
   <obj type="midi/in/cc hr i" uuid="72d8018c0f072c469fcd902b0423ba8fd5e6433" name="cc_4" x="168" y="392">
      <params/>
      <attribs>
         <spinner attributeName="cc" value="15"/>
         <spinner attributeName="default" value="64"/>
      </attribs>
   </obj>
   <obj type="midi/in/cc hr i" uuid="72d8018c0f072c469fcd902b0423ba8fd5e6433" name="cc_10" x="308" y="406">
      <params/>
      <attribs>
         <spinner attributeName="cc" value="31"/>
         <spinner attributeName="default" value="64"/>
      </attribs>
   </obj>
   <obj type="midi/in/cc hr i" uuid="72d8018c0f072c469fcd902b0423ba8fd5e6433" name="cc_5" x="168" y="490">
      <params/>
      <attribs>
         <spinner attributeName="cc" value="16"/>
         <spinner attributeName="default" value="64"/>
      </attribs>
   </obj>
   <obj type="midi/in/cc hr i" uuid="72d8018c0f072c469fcd902b0423ba8fd5e6433" name="cc_11" x="308" y="504">
      <params/>
      <attribs>
         <spinner attributeName="cc" value="32"/>
         <spinner attributeName="default" value="64"/>
      </attribs>
   </obj>
   <obj type="midi/in/cc hr i" uuid="72d8018c0f072c469fcd902b0423ba8fd5e6433" name="cc_6" x="168" y="588">
      <params/>
      <attribs>
         <spinner attributeName="cc" value="17"/>
         <spinner attributeName="default" value="64"/>
      </attribs>
   </obj>
   <obj type="midi/in/cc hr i" uuid="72d8018c0f072c469fcd902b0423ba8fd5e6433" name="cc_12" x="308" y="602">
      <params/>
      <attribs>
         <spinner attributeName="cc" value="33"/>
         <spinner attributeName="default" value="64"/>
      </attribs>
   </obj>
   <obj type="midi/in/cc hr i" uuid="72d8018c0f072c469fcd902b0423ba8fd5e6433" name="cc_7" x="168" y="686">
      <params/>
      <attribs>
         <spinner attributeName="cc" value="18"/>
         <spinner attributeName="default" value="64"/>
      </attribs>
   </obj>
   <obj type="midi/in/cc hr i" uuid="72d8018c0f072c469fcd902b0423ba8fd5e6433" name="cc_13" x="308" y="700">
      <params/>
      <attribs>
         <spinner attributeName="cc" value="34"/>
         <spinner attributeName="default" value="64"/>
      </attribs>
   </obj>
   <obj type="midi/in/cc hr i" uuid="72d8018c0f072c469fcd902b0423ba8fd5e6433" name="cc_14" x="70" y="770">
      <params/>
      <attribs>
         <spinner attributeName="cc" value="36"/>
         <spinner attributeName="default" value="1"/>
      </attribs>
   </obj>
   <obj type="midi/in/cc hr i" uuid="72d8018c0f072c469fcd902b0423ba8fd5e6433" name="cc_15" x="420" y="770">
      <params/>
      <attribs>
         <spinner attributeName="cc" value="35"/>
         <spinner attributeName="default" value="64"/>
      </attribs>
   </obj>
   <obj type="math/div 2" uuid="f14884de1baf3e615e12ee162a96a013eca76789" name="div_1" x="196" y="784">
      <params/>
      <attribs/>
   </obj>
   <obj type="conv/to i" uuid="305966430ee86b5c3b8e18cde0c721657c558a87" name="to_1" x="210" y="798">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="div_1" outlet="out"/>
         <dest obj="to_1" inlet="i"/>
      </net>
      <net>
         <source obj="to_1" outlet="o"/>
         <dest obj="DX7_1" inlet="algo"/>
      </net>
      <net>
         <source obj="cc_2" outlet="midiCC"/>
         <dest obj="DX7_1" inlet="pitch1"/>
      </net>
      <net>
         <source obj="cc_3" outlet="midiCC"/>
         <dest obj="DX7_1" inlet="pitch2"/>
      </net>
      <net>
         <source obj="cc_4" outlet="midiCC"/>
         <dest obj="DX7_1" inlet="pitch3"/>
      </net>
      <net>
         <source obj="cc_5" outlet="midiCC"/>
         <dest obj="DX7_1" inlet="pitch4"/>
      </net>
      <net>
         <source obj="cc_6" outlet="midiCC"/>
         <dest obj="DX7_1" inlet="pitch5"/>
      </net>
      <net>
         <source obj="cc_7" outlet="midiCC"/>
         <dest obj="DX7_1" inlet="pitch6"/>
      </net>
      <net>
         <source obj="cc_8" outlet="midiCC"/>
         <dest obj="DX7_1" inlet="vol1"/>
      </net>
      <net>
         <source obj="cc_9" outlet="midiCC"/>
         <dest obj="DX7_1" inlet="vol2"/>
      </net>
      <net>
         <source obj="cc_10" outlet="midiCC"/>
         <dest obj="DX7_1" inlet="vol3"/>
      </net>
      <net>
         <source obj="cc_11" outlet="midiCC"/>
         <dest obj="DX7_1" inlet="vol4"/>
      </net>
      <net>
         <source obj="cc_12" outlet="midiCC"/>
         <dest obj="DX7_1" inlet="vol5"/>
      </net>
      <net>
         <source obj="cc_13" outlet="midiCC"/>
         <dest obj="DX7_1" inlet="vol6"/>
      </net>
      <net>
         <source obj="cc_14" outlet="midiCC"/>
         <dest obj="div_1" inlet="in"/>
      </net>
      <net>
         <source obj="cc_15" outlet="midiCC"/>
         <dest obj="DX7_1" inlet="FM"/>
      </net>
      <net>
         <source obj="DX7_1" outlet="wave"/>
         <dest obj="outlet_1" inlet="outlet"/>
      </net>
      <net>
         <source obj="ptch" outlet="inlet"/>
         <dest obj="DX7_1" inlet="main"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>polyphonic</subpatchmode>
      <MidiChannel>2</MidiChannel>
      <HasMidiChannelSelector>true</HasMidiChannelSelector>
      <NPresets>8</NPresets>
      <NPresetEntries>32</NPresetEntries>
      <NModulationSources>8</NModulationSources>
      <NModulationTargetsPerSource>8</NModulationTargetsPerSource>
      <Author></Author>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>1868</x>
      <y>201</y>
      <width>970</width>
      <height>769</height>
   </windowPos>
</patch-1.0>