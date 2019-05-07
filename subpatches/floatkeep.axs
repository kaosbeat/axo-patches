<patch-1.0 appVersion="1.0.12">
   <comment type="patch/comment" x="140" y="168" text="only change parameter when actively changing inlet and true"/>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="in" x="140" y="196">
      <params/>
      <attribs/>
   </obj>
   <obj type="rbrt/control/gate_hold" uuid="4c315d47-8c76-4c21-bf06-e3d5001b8c21" name="gate_hold_2" x="392" y="196">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="out" x="532" y="196">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="change" x="126" y="266">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/change" uuid="42071f8cb4cfe1f35956c0bd5a313a57e049bec4" name="change_2" x="224" y="266">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/and 2" uuid="c67031682f552aa0a80b23377495c51ea28a8c9c" name="and_1" x="322" y="266">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/flipflop toggle" uuid="195e489e5fc3d275944b0de56c7a91c8641ea22a" name="flipflop_1" x="406" y="266">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/inv" uuid="2bd44b865d3b63ff9b80862242bf5be779e3ad5" name="inv_1" x="336" y="336">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="gate_hold_2" outlet="out"/>
         <dest obj="out" inlet="outlet"/>
      </net>
      <net>
         <source obj="change_2" outlet="trig"/>
         <dest obj="and_1" inlet="i1"/>
      </net>
      <net>
         <source obj="and_1" outlet="o"/>
         <dest obj="flipflop_1" inlet="set"/>
      </net>
      <net>
         <source obj="inv_1" outlet="o"/>
         <dest obj="flipflop_1" inlet="reset"/>
      </net>
      <net>
         <source obj="flipflop_1" outlet="o"/>
         <dest obj="gate_hold_2" inlet="gate"/>
      </net>
      <net>
         <source obj="in" outlet="inlet"/>
         <dest obj="change_2" inlet="in"/>
         <dest obj="gate_hold_2" inlet="in"/>
      </net>
      <net>
         <source obj="change" outlet="inlet"/>
         <dest obj="and_1" inlet="i2"/>
         <dest obj="inv_1" inlet="i"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>no</subpatchmode>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>0</x>
      <y>23</y>
      <width>959</width>
      <height>738</height>
   </windowPos>
</patch-1.0>