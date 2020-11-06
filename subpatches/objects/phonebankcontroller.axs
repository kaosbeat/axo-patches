<patch-1.0 appVersion="1.0.12">
   <comment type="patch/comment" x="294" y="42" text="total"/>
   <comment type="patch/comment" x="420" y="42" text="startpatch"/>
   <obj type="const/i" uuid="e202f44b2df17ae0b3e663b98ea6b14c8ff00408" name="i_1" x="294" y="56">
      <params/>
      <attribs>
         <spinner attributeName="value" value="2"/>
      </attribs>
   </obj>
   <obj type="const/i" uuid="e202f44b2df17ae0b3e663b98ea6b14c8ff00408" name="i_2" x="420" y="56">
      <params/>
      <attribs>
         <spinner attributeName="value" value="0"/>
      </attribs>
   </obj>
   <obj type="patch/inlet i" uuid="f11927f00c59219df0c50f73056aa19f125540b7" name="currentpatch" x="294" y="182">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/==" uuid="deaf0d36642c57876c4101e86f8a0b6a06021ab2" name="==_1" x="462" y="182">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/and 2" uuid="c67031682f552aa0a80b23377495c51ea28a8c9c" name="and_1" x="602" y="196">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/load i" uuid="b79124f5b7d1e8b39e187677ddab6260ce8c60a3" name="load_3" x="882" y="210">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/+1" uuid="13c1a4574bb81783beb8839e81782b9a34e3fc17" name="+1_1" x="462" y="252">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="patch_up" x="280" y="294">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/load i" uuid="b79124f5b7d1e8b39e187677ddab6260ce8c60a3" name="load_4" x="882" y="294">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/inv" uuid="2bd44b865d3b63ff9b80862242bf5be779e3ad5" name="inv_1" x="588" y="308">
      <params/>
      <attribs/>
   </obj>
   <obj type="rbrt/patching/loadbang" uuid="45d1f29d-ac62-4e5b-86f8-2201d2f6c689" name="loadbang_1" x="14" y="336">
      <params/>
      <attribs/>
   </obj>
   <obj type="timer/delayedpulse" uuid="3f05ee534ca67755fb20c7437f9e4de3d4c2f73d" name="delayedpulse_1" x="140" y="336">
      <params>
         <frac32.s.map name="delay" value="30.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="logic/and 2" uuid="c67031682f552aa0a80b23377495c51ea28a8c9c" name="and_3" x="378" y="336">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/flipflop toggle" uuid="195e489e5fc3d275944b0de56c7a91c8641ea22a" name="flipflop_1" x="252" y="350">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/and 2" uuid="c67031682f552aa0a80b23377495c51ea28a8c9c" name="and_2" x="728" y="364">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/==" uuid="deaf0d36642c57876c4101e86f8a0b6a06021ab2" name="==_2" x="574" y="448">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/and 2" uuid="c67031682f552aa0a80b23377495c51ea28a8c9c" name="and_5" x="728" y="448">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/load i" uuid="b79124f5b7d1e8b39e187677ddab6260ce8c60a3" name="load_5" x="882" y="448">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="patch_down" x="294" y="476">
      <params/>
      <attribs/>
   </obj>
   <obj type="rbrt/patching/loadbang" uuid="45d1f29d-ac62-4e5b-86f8-2201d2f6c689" name="loadbang_2" x="28" y="518">
      <params/>
      <attribs/>
   </obj>
   <obj type="timer/delayedpulse" uuid="3f05ee534ca67755fb20c7437f9e4de3d4c2f73d" name="delayedpulse_2" x="154" y="518">
      <params>
         <frac32.s.map name="delay" value="30.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="logic/and 2" uuid="c67031682f552aa0a80b23377495c51ea28a8c9c" name="and_4" x="406" y="518">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/flipflop toggle" uuid="195e489e5fc3d275944b0de56c7a91c8641ea22a" name="flipflop_2" x="266" y="532">
      <params/>
      <attribs/>
   </obj>
   <obj type="rbrt/control/gate_hold_i" uuid="8a2bb3cd-0d44-4e9d-a279-098809d7eefb" name="gate_hold_i_2" x="686" y="560">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/load i" uuid="b79124f5b7d1e8b39e187677ddab6260ce8c60a3" name="load_6" x="840" y="560">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/inv" uuid="2bd44b865d3b63ff9b80862242bf5be779e3ad5" name="inv_2" x="588" y="574">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/-1" uuid="5fd46bab471bb6509ae83de702dea72933683a98" name="-1_1" x="476" y="602">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/and 2" uuid="c67031682f552aa0a80b23377495c51ea28a8c9c" name="and_6" x="742" y="630">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="i_1" outlet="out"/>
         <dest obj="==_1" inlet="in1"/>
         <dest obj="load_5" inlet="i"/>
      </net>
      <net>
         <source obj="==_1" outlet="out"/>
         <dest obj="and_1" inlet="i1"/>
      </net>
      <net>
         <source obj="and_1" outlet="o"/>
         <dest obj="inv_1" inlet="i"/>
         <dest obj="load_3" inlet="trig"/>
      </net>
      <net>
         <source obj="inv_1" outlet="o"/>
         <dest obj="and_2" inlet="i1"/>
      </net>
      <net>
         <source obj="and_2" outlet="o"/>
         <dest obj="load_4" inlet="trig"/>
      </net>
      <net>
         <source obj="currentpatch" outlet="inlet"/>
         <dest obj="==_1" inlet="in2"/>
         <dest obj="+1_1" inlet="a"/>
         <dest obj="==_2" inlet="in2"/>
         <dest obj="-1_1" inlet="a"/>
      </net>
      <net>
         <source obj="patch_up" outlet="inlet"/>
         <dest obj="and_3" inlet="i1"/>
      </net>
      <net>
         <source obj="flipflop_1" outlet="o"/>
         <dest obj="and_3" inlet="i2"/>
      </net>
      <net>
         <source obj="loadbang_1" outlet="pulse"/>
         <dest obj="delayedpulse_1" inlet="trig"/>
      </net>
      <net>
         <source obj="delayedpulse_1" outlet="pulse"/>
         <dest obj="flipflop_1" inlet="set"/>
      </net>
      <net>
         <source obj="and_3" outlet="o"/>
         <dest obj="and_2" inlet="i2"/>
         <dest obj="and_1" inlet="i2"/>
      </net>
      <net>
         <source obj="flipflop_2" outlet="o"/>
         <dest obj="and_4" inlet="i2"/>
      </net>
      <net>
         <source obj="loadbang_2" outlet="pulse"/>
         <dest obj="delayedpulse_2" inlet="trig"/>
      </net>
      <net>
         <source obj="delayedpulse_2" outlet="pulse"/>
         <dest obj="flipflop_2" inlet="set"/>
      </net>
      <net>
         <source obj="patch_down" outlet="inlet"/>
         <dest obj="and_4" inlet="i1"/>
      </net>
      <net>
         <source obj="==_2" outlet="out"/>
         <dest obj="and_5" inlet="i1"/>
      </net>
      <net>
         <source obj="and_5" outlet="o"/>
         <dest obj="load_5" inlet="trig"/>
         <dest obj="inv_2" inlet="i"/>
      </net>
      <net>
         <source obj="and_4" outlet="o"/>
         <dest obj="and_5" inlet="i2"/>
         <dest obj="and_6" inlet="i2"/>
      </net>
      <net>
         <source obj="i_2" outlet="out"/>
         <dest obj="load_3" inlet="i"/>
         <dest obj="==_2" inlet="in1"/>
      </net>
      <net>
         <source obj="inv_2" outlet="o"/>
         <dest obj="gate_hold_i_2" inlet="gate"/>
         <dest obj="and_6" inlet="i1"/>
      </net>
      <net>
         <source obj="gate_hold_i_2" outlet="out"/>
         <dest obj="load_6" inlet="i"/>
      </net>
      <net>
         <source obj="and_6" outlet="o"/>
         <dest obj="load_6" inlet="trig"/>
      </net>
      <net>
         <source obj="-1_1" outlet="result"/>
         <dest obj="gate_hold_i_2" inlet="in"/>
      </net>
      <net>
         <source obj="+1_1" outlet="result"/>
         <dest obj="load_4" inlet="i"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>no</subpatchmode>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>178</x>
      <y>260</y>
      <width>1380</width>
      <height>778</height>
   </windowPos>
</patch-1.0>