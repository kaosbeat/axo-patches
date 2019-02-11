<patch-1.0 appVersion="1.0.12">
   <comment type="patch/comment" x="42" y="84" text="set midi out channel to same channel as parent midi channel for step display"/>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="stepnote" x="1190" y="84">
      <params/>
      <attribs/>
   </obj>
   <patcher type="patch/patcher" uuid="9ea070ec-089a-4f47-b068-f82255003d96" name="octaveselector" x="294" y="126">
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
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="stepfaders" x="1190" y="140">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="stepenv" x="1190" y="196">
      <params/>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="728" y="224" text="stepmixer faders"/>
   <comment type="patch/comment" x="154" y="238" text="clock divider"/>
   <comment type="patch/comment" x="294" y="238" text="midi note offset"/>
   <obj type="drj/seq/stepseq_8_u" uuid="948523ea71e103abc56ff0c14bff9c17972947ac" name="stepseq_8_u_2" x="728" y="238">
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
   <obj type="patch/inlet i" uuid="f11927f00c59219df0c50f73056aa19f125540b7" name="ppq24" x="14" y="252">
      <params/>
      <attribs/>
   </obj>
   <patcher type="patch/patcher" uuid="42d7ed84-0ea6-4af8-b180-f9c5818d1505" name="clock divider" x="98" y="252">
      <params/>
      <attribs/>
      <subpatch appVersion="1.0.12">
         <obj type="midi/in/keyb note" uuid="ac0cd98e6c0373b7be73d25900342a62ebcf5f" name="keyb_1" x="0" y="28">
            <params/>
            <attribs>
               <spinner attributeName="note" value="105"/>
            </attribs>
         </obj>
         <obj type="math/divremc" uuid="fd7d945542e16344358136d7e22cffd5be704260" name="divremc_3" x="574" y="28">
            <params/>
            <attribs>
               <spinner attributeName="denominator" value="8"/>
            </attribs>
         </obj>
         <obj type="disp/i" uuid="5e35fd0c62d81e70017289250cf28edd26e19e4a" name="i_4" x="700" y="28">
            <params/>
            <attribs/>
         </obj>
         <obj type="rbrt/control/t2p" uuid="e076e6e6-f59e-429e-b4ca-c0f3e55f074a" name="t2p_1" x="126" y="42">
            <params/>
            <attribs/>
         </obj>
         <obj type="disp/i" uuid="5e35fd0c62d81e70017289250cf28edd26e19e4a" name="i_1" x="504" y="42">
            <params/>
            <attribs/>
         </obj>
         <obj type="mux/mux 4" uuid="bd572dad58644793774a69385f376bda2e1fd9be" name="mux_1" x="784" y="42">
            <params/>
            <attribs/>
         </obj>
         <obj type="disp/i" uuid="5e35fd0c62d81e70017289250cf28edd26e19e4a" name="i_2" x="882" y="42">
            <params/>
            <attribs/>
         </obj>
         <obj type="lokki/math/triggerindex 4" uuid="515373bb-ae4e-428d-a13c-7f24f96a73dc" name="triggerindex_1" x="280" y="56">
            <params>
               <bool32.tgl name="indexlatch" value="1"/>
            </params>
            <attribs>
               <spinner attributeName="c1" value="1"/>
               <spinner attributeName="c2" value="2"/>
               <spinner attributeName="c3" value="3"/>
               <spinner attributeName="c4" value="4"/>
            </attribs>
         </obj>
         <obj type="math/-1" uuid="5fd46bab471bb6509ae83de702dea72933683a98" name="-1_1" x="434" y="56">
            <params/>
            <attribs/>
         </obj>
         <obj type="disp/i" uuid="5e35fd0c62d81e70017289250cf28edd26e19e4a" name="i_7" x="700" y="84">
            <params/>
            <attribs/>
         </obj>
         <obj type="disp/i" uuid="5e35fd0c62d81e70017289250cf28edd26e19e4a" name="i_3" x="504" y="98">
            <params/>
            <attribs/>
         </obj>
         <obj type="math/divremc" uuid="fd7d945542e16344358136d7e22cffd5be704260" name="divremc_4" x="574" y="98">
            <params/>
            <attribs>
               <spinner attributeName="denominator" value="8"/>
            </attribs>
         </obj>
         <obj type="midi/in/keyb note" uuid="ac0cd98e6c0373b7be73d25900342a62ebcf5f" name="keyb_2" x="0" y="112">
            <params/>
            <attribs>
               <spinner attributeName="note" value="106"/>
            </attribs>
         </obj>
         <obj type="rbrt/control/t2p" uuid="e076e6e6-f59e-429e-b4ca-c0f3e55f074a" name="t2p_2" x="126" y="112">
            <params/>
            <attribs/>
         </obj>
         <obj type="math/div 2" uuid="3192d8b402945c6ec702e28530fe1b252fc6d891" name="div_3" x="434" y="112">
            <params/>
            <attribs/>
         </obj>
         <obj type="disp/i" uuid="5e35fd0c62d81e70017289250cf28edd26e19e4a" name="i_8" x="700" y="140">
            <params/>
            <attribs/>
         </obj>
         <obj type="disp/i" uuid="5e35fd0c62d81e70017289250cf28edd26e19e4a" name="i_5" x="504" y="154">
            <params/>
            <attribs/>
         </obj>
         <obj type="math/div 4" uuid="141db88b6bfd19a0f34b0f61de171bb8ae64ad19" name="div_1" x="434" y="168">
            <params/>
            <attribs/>
         </obj>
         <obj type="math/divremc" uuid="fd7d945542e16344358136d7e22cffd5be704260" name="divremc_5" x="574" y="168">
            <params/>
            <attribs>
               <spinner attributeName="denominator" value="8"/>
            </attribs>
         </obj>
         <obj type="midi/in/keyb note" uuid="ac0cd98e6c0373b7be73d25900342a62ebcf5f" name="keyb_3" x="0" y="196">
            <params/>
            <attribs>
               <spinner attributeName="note" value="107"/>
            </attribs>
         </obj>
         <obj type="rbrt/control/t2p" uuid="e076e6e6-f59e-429e-b4ca-c0f3e55f074a" name="t2p_3" x="126" y="196">
            <params/>
            <attribs/>
         </obj>
         <obj type="disp/i" uuid="5e35fd0c62d81e70017289250cf28edd26e19e4a" name="i_6" x="504" y="210">
            <params/>
            <attribs/>
         </obj>
         <obj type="math/div 8" uuid="400fff516943c6bfc61578269b6e48efcc424e79" name="div_2" x="434" y="224">
            <params/>
            <attribs/>
         </obj>
         <obj type="rbrt/control/t2p" uuid="e076e6e6-f59e-429e-b4ca-c0f3e55f074a" name="t2p_4" x="126" y="266">
            <params/>
            <attribs/>
         </obj>
         <obj type="math/divremc" uuid="fd7d945542e16344358136d7e22cffd5be704260" name="divremc_2" x="238" y="266">
            <params/>
            <attribs>
               <spinner attributeName="denominator" value="12"/>
            </attribs>
         </obj>
         <obj type="math/divremc" uuid="fd7d945542e16344358136d7e22cffd5be704260" name="divremc_1" x="308" y="266">
            <params/>
            <attribs>
               <spinner attributeName="denominator" value="64"/>
            </attribs>
         </obj>
         <obj type="patch/outlet i" uuid="aae2176b26209e34e4fdeba5edb1ace82d178655" name="step" x="686" y="266">
            <params/>
            <attribs/>
         </obj>
         <obj type="midi/in/keyb note" uuid="ac0cd98e6c0373b7be73d25900342a62ebcf5f" name="keyb_4" x="0" y="280">
            <params/>
            <attribs>
               <spinner attributeName="note" value="108"/>
            </attribs>
         </obj>
         <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="step1" x="686" y="308">
            <params/>
            <attribs/>
         </obj>
         <obj type="math/==" uuid="deaf0d36642c57876c4101e86f8a0b6a06021ab2" name="==_1" x="518" y="322">
            <params/>
            <attribs/>
         </obj>
         <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="dial_1" x="392" y="336">
            <params>
               <frac32.u.map name="value" value="0.0"/>
            </params>
            <attribs/>
         </obj>
         <obj type="conv/to i" uuid="305966430ee86b5c3b8e18cde0c721657c558a87" name="to_1" x="462" y="336">
            <params/>
            <attribs/>
         </obj>
         <obj type="patch/outlet i" uuid="aae2176b26209e34e4fdeba5edb1ace82d178655" name="12ths" x="686" y="350">
            <params/>
            <attribs/>
         </obj>
         <obj type="conv/to b" uuid="91ff898f0f2bf6e4dc0165515e0be7c2281da18b" name="to_3" x="616" y="392">
            <params/>
            <attribs/>
         </obj>
         <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="12thstrigger" x="686" y="392">
            <params/>
            <attribs/>
         </obj>
         <obj type="patch/inlet i" uuid="f11927f00c59219df0c50f73056aa19f125540b7" name="ppq24" x="14" y="406">
            <params/>
            <attribs/>
         </obj>
         <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="trig24ppq" x="686" y="434">
            <params/>
            <attribs/>
         </obj>
         <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="trig24ppqin" x="0" y="462">
            <params/>
            <attribs/>
         </obj>
         <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="start" x="0" y="504">
            <params/>
            <attribs/>
         </obj>
         <obj type="logic/samplehold" uuid="55479a62c4ed7e3536b6e6f339ce05a802a81b9d" name="samplehold_1" x="672" y="504">
            <params/>
            <attribs/>
         </obj>
         <obj type="logic/or 2" uuid="3805d3c84d30032a44fbdbe42d9a2988a1790a3e" name="or_1" x="364" y="518">
            <params/>
            <attribs/>
         </obj>
         <obj type="patch/outlet i" uuid="aae2176b26209e34e4fdeba5edb1ace82d178655" name="step_stop" x="826" y="518">
            <params/>
            <attribs/>
         </obj>
         <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="stop" x="0" y="546">
            <params/>
            <attribs/>
         </obj>
         <obj type="logic/inv" uuid="2bd44b865d3b63ff9b80862242bf5be779e3ad5" name="inv_1" x="266" y="546">
            <params/>
            <attribs/>
         </obj>
         <nets>
            <net>
               <source obj="divremc_1" outlet="rem"/>
               <dest obj="i_1" inlet="in"/>
               <dest obj="==_1" inlet="in1"/>
               <dest obj="div_1" inlet="in"/>
               <dest obj="div_3" inlet="in"/>
               <dest obj="div_2" inlet="in"/>
               <dest obj="divremc_3" inlet="a"/>
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
               <source obj="==_1" outlet="out"/>
               <dest obj="step1" inlet="outlet"/>
            </net>
            <net>
               <source obj="divremc_2" outlet="rem"/>
               <dest obj="12ths" inlet="outlet"/>
               <dest obj="to_3" inlet="i"/>
            </net>
            <net>
               <source obj="div_1" outlet="out"/>
               <dest obj="i_5" inlet="in"/>
               <dest obj="divremc_5" inlet="a"/>
            </net>
            <net>
               <source obj="div_2" outlet="out"/>
               <dest obj="i_6" inlet="in"/>
               <dest obj="mux_1" inlet="i3"/>
            </net>
            <net>
               <source obj="div_3" outlet="out"/>
               <dest obj="i_3" inlet="in"/>
               <dest obj="divremc_4" inlet="a"/>
            </net>
            <net>
               <source obj="keyb_1" outlet="gate"/>
               <dest obj="t2p_1" inlet="trig"/>
            </net>
            <net>
               <source obj="mux_1" outlet="o"/>
               <dest obj="step" inlet="outlet"/>
               <dest obj="i_2" inlet="in"/>
               <dest obj="samplehold_1" inlet="in"/>
            </net>
            <net>
               <source obj="triggerindex_1" outlet="out"/>
               <dest obj="-1_1" inlet="a"/>
            </net>
            <net>
               <source obj="-1_1" outlet="result"/>
               <dest obj="mux_1" inlet="s"/>
            </net>
            <net>
               <source obj="keyb_3" outlet="gate"/>
               <dest obj="t2p_3" inlet="trig"/>
            </net>
            <net>
               <source obj="keyb_4" outlet="gate"/>
               <dest obj="t2p_4" inlet="trig"/>
            </net>
            <net>
               <source obj="divremc_3" outlet="rem"/>
               <dest obj="mux_1" inlet="i0"/>
               <dest obj="i_4" inlet="in"/>
            </net>
            <net>
               <source obj="divremc_4" outlet="rem"/>
               <dest obj="mux_1" inlet="i1"/>
               <dest obj="i_7" inlet="in"/>
            </net>
            <net>
               <source obj="divremc_5" outlet="rem"/>
               <dest obj="mux_1" inlet="i2"/>
               <dest obj="i_8" inlet="in"/>
            </net>
            <net>
               <source obj="t2p_1" outlet="pulse"/>
               <dest obj="triggerindex_1" inlet="b1"/>
            </net>
            <net>
               <source obj="keyb_2" outlet="gate"/>
               <dest obj="t2p_2" inlet="trig"/>
            </net>
            <net>
               <source obj="t2p_2" outlet="pulse"/>
               <dest obj="triggerindex_1" inlet="b2"/>
            </net>
            <net>
               <source obj="t2p_3" outlet="pulse"/>
               <dest obj="triggerindex_1" inlet="b3"/>
            </net>
            <net>
               <source obj="t2p_4" outlet="pulse"/>
               <dest obj="triggerindex_1" inlet="b4"/>
            </net>
            <net>
               <source obj="ppq24" outlet="inlet"/>
               <dest obj="divremc_2" inlet="a"/>
            </net>
            <net>
               <source obj="trig24ppqin" outlet="inlet"/>
               <dest obj="trig24ppq" inlet="outlet"/>
            </net>
            <net>
               <source obj="to_3" outlet="o"/>
               <dest obj="12thstrigger" inlet="outlet"/>
            </net>
            <net>
               <source obj="samplehold_1" outlet="out"/>
               <dest obj="step_stop" inlet="outlet"/>
            </net>
            <net>
               <source obj="inv_1" outlet="o"/>
               <dest obj="or_1" inlet="i2"/>
            </net>
            <net>
               <source obj="or_1" outlet="o"/>
               <dest obj="samplehold_1" inlet="s_h"/>
            </net>
            <net>
               <source obj="stop" outlet="inlet"/>
               <dest obj="inv_1" inlet="i"/>
            </net>
            <net>
               <source obj="start" outlet="inlet"/>
               <dest obj="or_1" inlet="i1"/>
            </net>
         </nets>
         <settings>
            <subpatchmode>no</subpatchmode>
         </settings>
         <notes><![CDATA[]]></notes>
         <windowPos>
            <x>2072</x>
            <y>157</y>
            <width>1004</width>
            <height>688</height>
         </windowPos>
      </subpatch>
   </patcher>
   <obj type="drj/seq/stepseq_8_b" uuid="ae8548ea713123fd356ff0c14bff9cff999947ac" name="stepseq_8_b_1" x="294" y="252">
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
   <obj type="math/+" uuid="44553fdc8628c67ab535845ed1be304ad6c9553b" name="+_1" x="434" y="252">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="midikeys_note" x="1190" y="252">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="trig24ppq" x="0" y="308">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="midikeys_velo" x="1190" y="308">
      <params/>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="448" y="336" text="midi launchpad buttons to DIN"/>
   <obj type="midi/in/keyb zone" uuid="e7413176a91acc060036fd7f68fda24bbee265d3" name="keyb_10" x="448" y="350">
      <params/>
      <attribs>
         <spinner attributeName="startNote" value="44"/>
         <spinner attributeName="endNote" value="61"/>
      </attribs>
   </obj>
   <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="start" x="0" y="364">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="midikeys_trig" x="1190" y="364">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="stop" x="0" y="420">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="debug" x="1190" y="462">
      <params/>
      <attribs/>
   </obj>
   <obj type="conv/to b" uuid="91ff898f0f2bf6e4dc0165515e0be7c2281da18b" name="to_2" x="448" y="490">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/or 2" uuid="3805d3c84d30032a44fbdbe42d9a2988a1790a3e" name="or_1" x="532" y="490">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet i" uuid="aae2176b26209e34e4fdeba5edb1ace82d178655" name="outlet_1" x="1190" y="602">
      <params/>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="294" y="616" text="sustain length"/>
   <comment type="patch/comment" x="728" y="616" text="launchpad step display"/>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="colortester" x="14" y="630">
      <params/>
      <attribs/>
   </obj>
   <obj type="drj/seq/stepseq_8_u" uuid="948523ea71e103abc56ff0c14bff9c17972947ac" name="stepseq_8_u_1" x="294" y="630">
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
   <obj type="drj/seq/stepseq_8_b" uuid="ae8548ea713123fd356ff0c14bff9cff999947ac" name="stepseq_8_b_6" x="728" y="630">
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
   <obj type="midi/out/note" uuid="a76ae870da278cbbce5501a57ce7bd0e0ea4215c" name="note_5" x="910" y="630">
      <params/>
      <attribs>
         <combo attributeName="device" selection="usb host port 1"/>
         <spinner attributeName="channel" value="2"/>
      </attribs>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="a" x="14" y="672">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="d" x="14" y="714">
      <params/>
      <attribs/>
   </obj>
   <obj type="env/adsr m" uuid="98bd39fb828c392b28126d259cb5175e6f6ea34b" name="adsr_1" x="462" y="728">
      <params>
         <frac32.s.map name="a" value="-2.0"/>
         <frac32.s.map name="d" value="-50.0"/>
         <frac32.u.map name="s" value="0.0"/>
         <frac32.s.map name="r" value="-59.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="r" x="14" y="756">
      <params/>
      <attribs/>
   </obj>
   <obj type="midi/out/note" uuid="a76ae870da278cbbce5501a57ce7bd0e0ea4215c" name="note_1" x="574" y="756">
      <params/>
      <attribs>
         <combo attributeName="device" selection="internal port 1"/>
         <spinner attributeName="channel" value="10"/>
      </attribs>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="dial_2" x="854" y="812">
      <params>
         <frac32.u.map name="value" value="12.0"/>
      </params>
      <attribs/>
   </obj>
   <nets>
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
         <dest obj="note_1" inlet="velo"/>
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
         <source obj="adsr_1" outlet="env"/>
         <dest obj="stepenv" inlet="outlet"/>
      </net>
      <net>
         <source obj="to_2" outlet="o"/>
         <dest obj="or_1" inlet="i2"/>
      </net>
      <net>
         <source obj="keyb_10" outlet="gate"/>
         <dest obj="or_1" inlet="i1"/>
         <dest obj="midikeys_trig" inlet="outlet"/>
      </net>
      <net>
         <source obj="or_1" outlet="o"/>
         <dest obj="adsr_1" inlet="gate"/>
      </net>
      <net>
         <source obj="stepseq_8_b_6" outlet="out"/>
         <dest obj="note_5" inlet="note"/>
         <dest obj="debug" inlet="outlet"/>
      </net>
      <net>
         <source obj="stepseq_8_u_2" outlet="out"/>
         <dest obj="stepfaders" inlet="outlet"/>
      </net>
      <net>
         <source obj="keyb_10" outlet="note"/>
         <dest obj="midikeys_note" inlet="outlet"/>
      </net>
      <net>
         <source obj="keyb_10" outlet="velocity"/>
         <dest obj="midikeys_velo" inlet="outlet"/>
      </net>
      <net>
         <source obj="+_1" outlet="out"/>
         <dest obj="stepnote" inlet="outlet"/>
         <dest obj="note_1" inlet="note"/>
      </net>
      <net>
         <source obj="ppq24" outlet="inlet"/>
         <dest obj="clock divider" inlet="ppq24"/>
      </net>
      <net>
         <source obj="trig24ppq" outlet="inlet"/>
         <dest obj="clock divider" inlet="trig24ppqin"/>
      </net>
      <net>
         <source obj="clock divider" outlet="12thstrigger"/>
         <dest obj="note_5" inlet="trig"/>
      </net>
      <net>
         <source obj="colortester" outlet="inlet"/>
         <dest obj="note_5" inlet="velo"/>
      </net>
      <net>
         <source obj="r" outlet="inlet"/>
         <dest obj="adsr_1" inlet="r"/>
      </net>
      <net>
         <source obj="d" outlet="inlet"/>
         <dest obj="adsr_1" inlet="d"/>
      </net>
      <net>
         <source obj="a" outlet="inlet"/>
         <dest obj="adsr_1" inlet="a"/>
      </net>
      <net>
         <source obj="clock divider" outlet="trig24ppq"/>
         <dest obj="note_1" inlet="trig"/>
      </net>
      <net>
         <source obj="clock divider" outlet="step_stop"/>
         <dest obj="outlet_1" inlet="outlet"/>
      </net>
      <net>
         <source obj="start" outlet="inlet"/>
         <dest obj="clock divider" inlet="start"/>
      </net>
      <net>
         <source obj="stop" outlet="inlet"/>
         <dest obj="clock divider" inlet="stop"/>
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
      <x>1900</x>
      <y>23</y>
      <width>1364</width>
      <height>939</height>
   </windowPos>
</patch-1.0>