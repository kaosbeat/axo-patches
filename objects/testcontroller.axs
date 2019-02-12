<patch-1.0 appVersion="1.0.12">
   <obj type="rbrt/midi/in/note poly" uuid="769b6569-8398-4de4-a8ad-f9f5d26f3947" name="note_1" x="70" y="42">
      <params/>
      <attribs>
         <spinner attributeName="startNote" value="41"/>
         <spinner attributeName="endNote" value="44"/>
         <spinner attributeName="channel" value="16"/>
      </attribs>
   </obj>
   <obj type="phi/math/-+ i" uuid="e5bf3953ead204874692af5d85cww43a027g74f1" name="-+_1" x="196" y="42">
      <params>
         <int32 name="c" value="-41"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/load i" uuid="b79124f5b7d1e8b39e187677ddab6260ce8c60a3" name="load_1" x="280" y="42">
      <params/>
      <attribs/>
   </obj>
   <obj type="rbrt/midi/in/note poly" uuid="769b6569-8398-4de4-a8ad-f9f5d26f3947" name="note_3" x="378" y="42">
      <params/>
      <attribs>
         <spinner attributeName="startNote" value="73"/>
         <spinner attributeName="endNote" value="76"/>
         <spinner attributeName="channel" value="16"/>
      </attribs>
   </obj>
   <obj type="phi/math/-+ i" uuid="e5bf3953ead204874692af5d85cww43a027g74f1" name="-+_3" x="504" y="42">
      <params>
         <int32 name="c" value="-65"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/load i" uuid="b79124f5b7d1e8b39e187677ddab6260ce8c60a3" name="load_3" x="588" y="42">
      <params/>
      <attribs/>
   </obj>
   <obj type="rbrt/midi/in/note poly" uuid="769b6569-8398-4de4-a8ad-f9f5d26f3947" name="note_2" x="70" y="224">
      <params/>
      <attribs>
         <spinner attributeName="startNote" value="57"/>
         <spinner attributeName="endNote" value="60"/>
         <spinner attributeName="channel" value="16"/>
      </attribs>
   </obj>
   <obj type="phi/math/-+ i" uuid="e5bf3953ead204874692af5d85cww43a027g74f1" name="-+_2" x="196" y="224">
      <params>
         <int32 name="c" value="-53"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/load i" uuid="b79124f5b7d1e8b39e187677ddab6260ce8c60a3" name="load_2" x="280" y="224">
      <params/>
      <attribs/>
   </obj>
   <obj type="rbrt/midi/in/note poly" uuid="769b6569-8398-4de4-a8ad-f9f5d26f3947" name="note_4" x="378" y="224">
      <params/>
      <attribs>
         <spinner attributeName="startNote" value="89"/>
         <spinner attributeName="endNote" value="92"/>
         <spinner attributeName="channel" value="16"/>
      </attribs>
   </obj>
   <obj type="phi/math/-+ i" uuid="e5bf3953ead204874692af5d85cww43a027g74f1" name="-+_4" x="504" y="224">
      <params>
         <int32 name="c" value="-77"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/load i" uuid="b79124f5b7d1e8b39e187677ddab6260ce8c60a3" name="load_4" x="588" y="224">
      <params/>
      <attribs/>
   </obj>
   <obj type="rbrt/midi/in/monitor" uuid="64b3d36e-97ab-4b18-91f7-ff611e14fd7a" name="monitor_1" x="616" y="336">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="note_1" outlet="noteOn"/>
         <dest obj="load_1" inlet="trig"/>
      </net>
      <net>
         <source obj="-+_1" outlet="out"/>
         <dest obj="load_1" inlet="i"/>
      </net>
      <net>
         <source obj="note_1" outlet="note"/>
         <dest obj="-+_1" inlet="in"/>
      </net>
      <net>
         <source obj="-+_2" outlet="out"/>
         <dest obj="load_2" inlet="i"/>
      </net>
      <net>
         <source obj="note_2" outlet="note"/>
         <dest obj="-+_2" inlet="in"/>
      </net>
      <net>
         <source obj="note_3" outlet="noteOn"/>
         <dest obj="load_3" inlet="trig"/>
      </net>
      <net>
         <source obj="-+_3" outlet="out"/>
         <dest obj="load_3" inlet="i"/>
      </net>
      <net>
         <source obj="note_3" outlet="note"/>
         <dest obj="-+_3" inlet="in"/>
      </net>
      <net>
         <source obj="-+_4" outlet="out"/>
         <dest obj="load_4" inlet="i"/>
      </net>
      <net>
         <source obj="note_4" outlet="note"/>
         <dest obj="-+_4" inlet="in"/>
      </net>
      <net>
         <source obj="note_2" outlet="noteOn"/>
         <dest obj="load_2" inlet="trig"/>
      </net>
      <net>
         <source obj="note_4" outlet="noteOn"/>
         <dest obj="load_4" inlet="trig"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>normal</subpatchmode>
      <MidiChannel>16</MidiChannel>
      <NPresets>8</NPresets>
      <NPresetEntries>32</NPresetEntries>
      <NModulationSources>8</NModulationSources>
      <NModulationTargetsPerSource>8</NModulationTargetsPerSource>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>2098</x>
      <y>372</y>
      <width>782</width>
      <height>523</height>
   </windowPos>
</patch-1.0>