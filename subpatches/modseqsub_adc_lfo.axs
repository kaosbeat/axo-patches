<patch-1.0 appVersion="1.0.12">
   <patcher type="patch/patcher" uuid="97161495-1800-433a-a615-a14ee595ded2" name="octaveselector" x="140" y="14">
      <params/>
      <attribs/>
      <subpatch appVersion="1.0.12">
         <obj type="midi/in/keyb note" uuid="ac0cd98e6c0373b7be73d25900342a62ebcf5f" name="keyb_2" x="126" y="112">
            <params/>
            <attribs>
               <spinner attributeName="note" value="73"/>
            </attribs>
         </obj>
         <obj type="midi/in/keyb note" uuid="ac0cd98e6c0373b7be73d25900342a62ebcf5f" name="keyb_3" x="224" y="112">
            <params/>
            <attribs>
               <spinner attributeName="note" value="74"/>
            </attribs>
         </obj>
         <obj type="midi/in/keyb note" uuid="ac0cd98e6c0373b7be73d25900342a62ebcf5f" name="keyb_4" x="322" y="112">
            <params/>
            <attribs>
               <spinner attributeName="note" value="75"/>
            </attribs>
         </obj>
         <obj type="midi/in/keyb note" uuid="ac0cd98e6c0373b7be73d25900342a62ebcf5f" name="keyb_5" x="420" y="112">
            <params/>
            <attribs>
               <spinner attributeName="note" value="76"/>
            </attribs>
         </obj>
         <obj type="midi/in/keyb note" uuid="ac0cd98e6c0373b7be73d25900342a62ebcf5f" name="keyb_6" x="518" y="112">
            <params/>
            <attribs>
               <spinner attributeName="note" value="77"/>
            </attribs>
         </obj>
         <obj type="midi/in/keyb note" uuid="ac0cd98e6c0373b7be73d25900342a62ebcf5f" name="keyb_7" x="616" y="112">
            <params/>
            <attribs>
               <spinner attributeName="note" value="78"/>
            </attribs>
         </obj>
         <obj type="midi/in/keyb note" uuid="ac0cd98e6c0373b7be73d25900342a62ebcf5f" name="keyb_8" x="714" y="112">
            <params/>
            <attribs>
               <spinner attributeName="note" value="79"/>
            </attribs>
         </obj>
         <obj type="midi/in/keyb note" uuid="ac0cd98e6c0373b7be73d25900342a62ebcf5f" name="keyb_9" x="812" y="112">
            <params/>
            <attribs>
               <spinner attributeName="note" value="80"/>
            </attribs>
         </obj>
         <comment type="patch/comment" x="308" y="210" text="midi note offset"/>
         <obj type="lokki/math/triggerindex 8" uuid="44bbeb7f-52f4-4ec8-92ce-5bbce61d7a41" name="triggerindex_1" x="126" y="224">
            <params>
               <bool32.tgl name="indexlatch" value="1"/>
            </params>
            <attribs/>
         </obj>
         <obj type="drj/seq/stepseq_8_b" uuid="ae8548ea713123fd356ff0c14bff9cff999947ac" name="stepseq_8_b_5" x="308" y="224">
            <params>
               <frac32.s.map name="v1" value="-12.0"/>
               <frac32.s.map name="v2" value="-8.0"/>
               <frac32.s.map name="v3" value="-4.0"/>
               <frac32.s.map name="v4" value="0.0"/>
               <frac32.s.map name="v5" value="4.0"/>
               <frac32.s.map name="v6" value="8.0"/>
               <frac32.s.map name="v7" value="12.0"/>
               <frac32.s.map name="v8" value="16.0"/>
            </params>
            <attribs/>
         </obj>
         <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="offset" x="938" y="238">
            <params/>
            <attribs/>
         </obj>
         <nets>
            <net>
               <source obj="keyb_4" outlet="gate"/>
               <dest obj="triggerindex_1" inlet="b3"/>
            </net>
            <net>
               <source obj="keyb_3" outlet="gate"/>
               <dest obj="triggerindex_1" inlet="b2"/>
            </net>
            <net>
               <source obj="keyb_2" outlet="gate"/>
               <dest obj="triggerindex_1" inlet="b1"/>
            </net>
            <net>
               <source obj="triggerindex_1" outlet="out"/>
               <dest obj="stepseq_8_b_5" inlet="step"/>
            </net>
            <net>
               <source obj="keyb_5" outlet="gate"/>
               <dest obj="triggerindex_1" inlet="b4"/>
            </net>
            <net>
               <source obj="keyb_6" outlet="gate"/>
               <dest obj="triggerindex_1" inlet="b5"/>
            </net>
            <net>
               <source obj="keyb_7" outlet="gate"/>
               <dest obj="triggerindex_1" inlet="b6"/>
            </net>
            <net>
               <source obj="keyb_8" outlet="gate"/>
               <dest obj="triggerindex_1" inlet="b7"/>
            </net>
            <net>
               <source obj="keyb_9" outlet="gate"/>
               <dest obj="triggerindex_1" inlet="b8"/>
            </net>
            <net>
               <source obj="stepseq_8_b_5" outlet="out"/>
               <dest obj="offset" inlet="outlet"/>
            </net>
         </nets>
         <settings>
            <subpatchmode>no</subpatchmode>
         </settings>
         <notes><![CDATA[]]></notes>
         <windowPos>
            <x>0</x>
            <y>23</y>
            <width>1260</width>
            <height>760</height>
         </windowPos>
      </subpatch>
   </patcher>
   <obj type="patch/inlet a" uuid="b577fe41e0a6bc7b5502ce33cb8a3129e2e28ee5" name="audio_in" x="28" y="56">
      <params/>
      <attribs/>
   </obj>
   <obj type="sptnk/effect/sat ur hate 2" uuid="3563f15e-8645-4a5e-95a6-b6ec7e6c8a83" name="sat_1" x="574" y="84">
      <params>
         <frac32.s.map name="shape" onParent="true" value="0.0"/>
         <frac32.s.map name="feed" onParent="true" value="0.0"/>
         <bool32.tgl name="tame" onParent="true" value="0"/>
         <int32.hradio name="filter type" onParent="true" value="0"/>
         <frac32.s.map name="pitch" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_1" x="756" y="84">
      <params/>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="896" y="98" text="stepmixer faders"/>
   <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="inlet_2" x="14" y="112">
      <params/>
      <attribs/>
   </obj>
   <obj type="drj/seq/stepseq_8_u" uuid="948523ea71e103abc56ff0c14bff9c17972947ac" name="stepseq_8_u_2" x="896" y="112">
      <params>
         <frac32.u.map name="v1" MidiCC="77" value="63.99999952316284"/>
         <frac32.u.map name="v2" MidiCC="78" value="63.99999952316284"/>
         <frac32.u.map name="v3" MidiCC="79" value="63.99999952316284"/>
         <frac32.u.map name="v4" MidiCC="80" value="63.99999952316284"/>
         <frac32.u.map name="v5" MidiCC="81" value="63.99999952316284"/>
         <frac32.u.map name="v6" MidiCC="82" value="63.99999952316284"/>
         <frac32.u.map name="v7" MidiCC="83" value="63.99999952316284"/>
         <frac32.u.map name="v8" MidiCC="84" value="63.99999952316284"/>
      </params>
      <attribs/>
   </obj>
   <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_2" x="1036" y="112">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="outlet_1" x="1106" y="112">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="inlet_3" x="28" y="168">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet i" uuid="f11927f00c59219df0c50f73056aa19f125540b7" name="ppq24" x="28" y="224">
      <params/>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="140" y="238" text="clock divider"/>
   <comment type="patch/comment" x="280" y="238" text="midi note offset"/>
   <patcher type="patch/patcher" uuid="c50209b9-49eb-4cb2-a756-948b3c5c457d" name="clock divider" x="112" y="252">
      <params/>
      <attribs/>
      <subpatch appVersion="1.0.12">
         <comment type="patch/comment" x="196" y="70" text="to make divider configurable, maybe use this object..."/>
         <obj type="rbrt/math/div ifi" uuid="91be7fc5-3361-43e8-9341-ce85db672a72" name="div_1" x="238" y="84">
            <params/>
            <attribs/>
         </obj>
         <obj type="patch/inlet i" uuid="f11927f00c59219df0c50f73056aa19f125540b7" name="pos24ppq" x="42" y="196">
            <params/>
            <attribs/>
         </obj>
         <obj type="math/divremc" uuid="fd7d945542e16344358136d7e22cffd5be704260" name="divremc_2" x="168" y="196">
            <params/>
            <attribs>
               <spinner attributeName="denominator" value="12"/>
            </attribs>
         </obj>
         <obj type="math/divremc" uuid="fd7d945542e16344358136d7e22cffd5be704260" name="divremc_1" x="224" y="196">
            <params/>
            <attribs>
               <spinner attributeName="denominator" value="8"/>
            </attribs>
         </obj>
         <obj type="disp/i" uuid="5e35fd0c62d81e70017289250cf28edd26e19e4a" name="i_1" x="378" y="196">
            <params/>
            <attribs/>
         </obj>
         <obj type="patch/outlet i" uuid="aae2176b26209e34e4fdeba5edb1ace82d178655" name="step" x="546" y="196">
            <params/>
            <attribs/>
         </obj>
         <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="step1" x="546" y="238">
            <params/>
            <attribs/>
         </obj>
         <obj type="math/==" uuid="deaf0d36642c57876c4101e86f8a0b6a06021ab2" name="==_1" x="378" y="252">
            <params/>
            <attribs/>
         </obj>
         <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="dial_1" x="252" y="266">
            <params>
               <frac32.u.map name="value" value="0.0"/>
            </params>
            <attribs/>
         </obj>
         <obj type="conv/to i" uuid="305966430ee86b5c3b8e18cde0c721657c558a87" name="to_1" x="322" y="266">
            <params/>
            <attribs/>
         </obj>
         <obj type="patch/outlet i" uuid="aae2176b26209e34e4fdeba5edb1ace82d178655" name="12ths" x="546" y="280">
            <params/>
            <attribs/>
         </obj>
         <obj type="conv/to b" uuid="91ff898f0f2bf6e4dc0165515e0be7c2281da18b" name="to_3" x="476" y="322">
            <params/>
            <attribs/>
         </obj>
         <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="12thstrigger" x="546" y="322">
            <params/>
            <attribs/>
         </obj>
         <nets>
            <net>
               <source obj="divremc_1" outlet="rem"/>
               <dest obj="i_1" inlet="in"/>
               <dest obj="==_1" inlet="in1"/>
               <dest obj="step" inlet="outlet"/>
            </net>
            <net>
               <source obj="divremc_2" outlet="div"/>
               <dest obj="divremc_1" inlet="a"/>
            </net>
            <net>
               <source obj="to_1" outlet="o"/>
               <dest obj="==_1" inlet="in2"/>
            </net>
            <net>
               <source obj="dial_1" outlet="out"/>
               <dest obj="to_1" inlet="i"/>
            </net>
            <net>
               <source obj="pos24ppq" outlet="inlet"/>
               <dest obj="divremc_2" inlet="a"/>
            </net>
            <net>
               <source obj="==_1" outlet="out"/>
               <dest obj="step1" inlet="outlet"/>
            </net>
            <net>
               <source obj="divremc_2" outlet="rem"/>
               <dest obj="12ths" inlet="outlet"/>
               <dest obj="to_3" inlet="i"/>
            </net>
            <net>
               <source obj="to_3" outlet="o"/>
               <dest obj="12thstrigger" inlet="outlet"/>
            </net>
         </nets>
         <settings>
            <subpatchmode>no</subpatchmode>
         </settings>
         <notes><![CDATA[]]></notes>
         <windowPos>
            <x>488</x>
            <y>71</y>
            <width>835</width>
            <height>713</height>
         </windowPos>
      </subpatch>
   </patcher>
   <obj type="drj/seq/stepseq_8_b" uuid="ae8548ea713123fd356ff0c14bff9cff999947ac" name="stepseq_8_b_1" x="280" y="252">
      <params>
         <frac32.s.map name="v1" MidiCC="13" value="5.0"/>
         <frac32.s.map name="v2" MidiCC="14" value="15.0"/>
         <frac32.s.map name="v3" MidiCC="15" value="32.0"/>
         <frac32.s.map name="v4" MidiCC="16" value="48.0"/>
         <frac32.s.map name="v5" MidiCC="17" value="-47.0"/>
         <frac32.s.map name="v6" MidiCC="18" value="-61.0"/>
         <frac32.s.map name="v7" MidiCC="19" value="-1.0"/>
         <frac32.s.map name="v8" MidiCC="20" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="44553fdc8628c67ab535845ed1be304ad6c9553b" name="+_1" x="420" y="252">
      <params/>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="434" y="336" text="midi launchpad buttons to DIN"/>
   <obj type="midi/in/keyb zone" uuid="e7413176a91acc060036fd7f68fda24bbee265d3" name="keyb_10" x="434" y="350">
      <params/>
      <attribs>
         <spinner attributeName="startNote" value="44"/>
         <spinner attributeName="endNote" value="61"/>
      </attribs>
   </obj>
   <obj type="midi/out/note" uuid="a76ae870da278cbbce5501a57ce7bd0e0ea4215c" name="note_2" x="560" y="350">
      <params/>
      <attribs>
         <combo attributeName="device" selection="din"/>
         <spinner attributeName="channel" value="1"/>
      </attribs>
   </obj>
   <obj type="conv/to b" uuid="91ff898f0f2bf6e4dc0165515e0be7c2281da18b" name="to_2" x="434" y="490">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/or 2" uuid="3805d3c84d30032a44fbdbe42d9a2988a1790a3e" name="or_1" x="504" y="490">
      <params/>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="280" y="616" text="sustain length"/>
   <comment type="patch/comment" x="714" y="616" text="launchpad step display"/>
   <obj type="drj/seq/stepseq_8_u" uuid="948523ea71e103abc56ff0c14bff9c17972947ac" name="stepseq_8_u_1" x="280" y="630">
      <params>
         <frac32.u.map name="v1" MidiCC="29" value="36.0"/>
         <frac32.u.map name="v2" MidiCC="30" value="38.0"/>
         <frac32.u.map name="v3" MidiCC="31" value="41.0"/>
         <frac32.u.map name="v4" MidiCC="32" value="0.0"/>
         <frac32.u.map name="v5" MidiCC="33" value="17.5"/>
         <frac32.u.map name="v6" MidiCC="34" value="11.5"/>
         <frac32.u.map name="v7" MidiCC="35" value="36.0"/>
         <frac32.u.map name="v8" MidiCC="36" value="13.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="env/adsr m" uuid="98bd39fb828c392b28126d259cb5175e6f6ea34b" name="adsr_1" x="406" y="630">
      <params>
         <frac32.s.map name="a" value="4.0"/>
         <frac32.s.map name="d" value="-64.0"/>
         <frac32.u.map name="s" value="0.0"/>
         <frac32.s.map name="r" value="-14.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="drj/seq/stepseq_8_b" uuid="ae8548ea713123fd356ff0c14bff9cff999947ac" name="stepseq_8_b_6" x="714" y="630">
      <params>
         <frac32.s.map name="v1" value="-20.0"/>
         <frac32.s.map name="v2" value="-18.0"/>
         <frac32.s.map name="v3" value="-15.0"/>
         <frac32.s.map name="v4" value="-13.0"/>
         <frac32.s.map name="v5" value="-10.0"/>
         <frac32.s.map name="v6" value="-8.0"/>
         <frac32.s.map name="v7" value="-6.0"/>
         <frac32.s.map name="v8" value="-3.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="midi/out/note" uuid="a76ae870da278cbbce5501a57ce7bd0e0ea4215c" name="note_5" x="826" y="630">
      <params/>
      <attribs>
         <combo attributeName="device" selection="usb host port 1"/>
         <spinner attributeName="channel" value="1"/>
      </attribs>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="dial_2" x="826" y="798">
      <params>
         <frac32.u.map name="value" value="17.5"/>
      </params>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="ppq24" outlet="inlet"/>
         <dest obj="clock divider" inlet="pos24ppq"/>
      </net>
      <net>
         <source obj="clock divider" outlet="step"/>
         <dest obj="stepseq_8_b_1" inlet="step"/>
         <dest obj="stepseq_8_u_1" inlet="step"/>
         <dest obj="stepseq_8_u_2" inlet="step"/>
         <dest obj="stepseq_8_b_6" inlet="step"/>
      </net>
      <net>
         <source obj="stepseq_8_u_1" outlet="out"/>
         <dest obj="adsr_1" inlet="s"/>
         <dest obj="to_2" inlet="i"/>
      </net>
      <net>
         <source obj="stepseq_8_b_1" outlet="out"/>
         <dest obj="+_1" inlet="in2"/>
      </net>
      <net>
         <source obj="octaveselector" outlet="offset"/>
         <dest obj="+_1" inlet="in1"/>
      </net>
      <net>
         <source obj="vca_1" outlet="o"/>
         <dest obj="vca_2" inlet="a"/>
      </net>
      <net>
         <source obj="adsr_1" outlet="env"/>
         <dest obj="vca_1" inlet="v"/>
      </net>
      <net>
         <source obj="to_2" outlet="o"/>
         <dest obj="or_1" inlet="i2"/>
      </net>
      <net>
         <source obj="keyb_10" outlet="note"/>
         <dest obj="note_2" inlet="note"/>
      </net>
      <net>
         <source obj="keyb_10" outlet="gate"/>
         <dest obj="note_2" inlet="trig"/>
         <dest obj="or_1" inlet="i1"/>
      </net>
      <net>
         <source obj="keyb_10" outlet="velocity"/>
         <dest obj="note_2" inlet="velo"/>
      </net>
      <net>
         <source obj="or_1" outlet="o"/>
         <dest obj="adsr_1" inlet="gate"/>
      </net>
      <net>
         <source obj="+_1" outlet="out"/>
         <dest obj="sat_1" inlet="pitch"/>
      </net>
      <net>
         <source obj="audio_in" outlet="inlet"/>
         <dest obj="sat_1" inlet="in"/>
      </net>
      <net>
         <source obj="sat_1" outlet="out"/>
         <dest obj="vca_1" inlet="a"/>
      </net>
      <net>
         <source obj="vca_2" outlet="o"/>
         <dest obj="outlet_1" inlet="outlet"/>
      </net>
      <net>
         <source obj="stepseq_8_u_2" outlet="out"/>
         <dest obj="vca_2" inlet="v"/>
      </net>
      <net>
         <source obj="stepseq_8_b_6" outlet="out"/>
         <dest obj="note_5" inlet="note"/>
      </net>
      <net>
         <source obj="dial_2" outlet="out"/>
         <dest obj="note_5" inlet="velo"/>
      </net>
      <net>
         <source obj="clock divider" outlet="12thstrigger"/>
         <dest obj="note_5" inlet="trig"/>
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
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>1864</x>
      <y>141</y>
      <width>1213</width>
      <height>865</height>
   </windowPos>
</patch-1.0>