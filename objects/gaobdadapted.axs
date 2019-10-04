<patch-1.0 appVersion="1.0.12">
   <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="trig" x="0" y="14">
      <params/>
      <attribs/>
   </obj>
   <obj type="env/d m" uuid="85e82f54dfc28839d300cda777af8907ae2a28d0" name="d_2" x="98" y="14">
      <params>
         <frac32.s.map name="d" onParent="true" value="-2.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="noise/uniform" uuid="a3926ef22ae9ac217cd09933d90101848796eb78" name="uniform_1" x="378" y="14">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/abs" uuid="f4078fd9b2dff40d4f1551b79900c9ab360c99" name="abs_1" x="476" y="14">
      <params/>
      <attribs/>
   </obj>
   <obj type="env/d m" uuid="85e82f54dfc28839d300cda777af8907ae2a28d0" name="d_1" x="546" y="14">
      <params>
         <frac32.s.map name="d" onParent="true" value="-25.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/*" uuid="c16a625a661f40e4b359db604dcd00b3befcdbe3" name="*_3" x="658" y="14">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/*" uuid="c16a625a661f40e4b359db604dcd00b3befcdbe3" name="*_5" x="728" y="14">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="decays" x="14" y="84">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="decay m" x="14" y="182">
      <params/>
      <attribs/>
   </obj>
   <obj type="env/d m" uuid="85e82f54dfc28839d300cda777af8907ae2a28d0" name="decay" x="98" y="182">
      <params>
         <frac32.s.map name="d" onParent="true" value="-42.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/*" uuid="922423f2db9f222aa3e5ba095778288c446da47a" name="*_4" x="238" y="182">
      <params/>
      <attribs/>
   </obj>
   <obj type="osc/sine" uuid="6e094045cca76a9dbf7ebfa72e44e4700d2b3ba" name="freq 2" x="322" y="182">
      <params>
         <frac32.s.map name="pitch" onParent="true" value="-41.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="faedbea4612d9bd3644d6d3bf31946d848a70e19" name="*_1" x="448" y="182">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="curve" x="14" y="252">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/*" uuid="c16a625a661f40e4b359db604dcd00b3befcdbe3" name="*_2" x="448" y="252">
      <params/>
      <attribs/>
   </obj>
   <obj type="filter/lp m" uuid="1aa1bc51da479ed92429af700591f9d7b9f45f22" name="lp_1" x="532" y="252">
      <params>
         <frac32.s.map name="pitch" onParent="true" value="42.0"/>
         <frac32.u.map name="reso" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/gain" uuid="62b1c1a6337c7c8f6aec96408a432477b113cfa0" name="gain" x="658" y="252">
      <params>
         <frac32.u.map name="amp" onParent="true" value="3.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="dist/soft" uuid="e680d76a805e4866027cdf654c7efd8b2e54622" name="soft_1" x="784" y="252">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="out" x="882" y="252">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="noise decay" x="14" y="308">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="noiselevel" x="14" y="364">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="lp pitclh" x="14" y="420">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="lp reso" x="14" y="476">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="freq 2" outlet="wave"/>
         <dest obj="*_1" inlet="in1"/>
      </net>
      <net>
         <source obj="*_1" outlet="out"/>
         <dest obj="*_2" inlet="a"/>
      </net>
      <net>
         <source obj="trig" outlet="inlet"/>
         <dest obj="decay" inlet="trig"/>
         <dest obj="d_1" inlet="trig"/>
         <dest obj="d_2" inlet="trig"/>
      </net>
      <net>
         <source obj="uniform_1" outlet="wave"/>
         <dest obj="abs_1" inlet="in"/>
      </net>
      <net>
         <source obj="abs_1" outlet="out"/>
         <dest obj="*_3" inlet="a"/>
      </net>
      <net>
         <source obj="d_1" outlet="env"/>
         <dest obj="*_3" inlet="b"/>
      </net>
      <net>
         <source obj="gain" outlet="out"/>
         <dest obj="soft_1" inlet="in"/>
      </net>
      <net>
         <source obj="decay" outlet="env"/>
         <dest obj="*_2" inlet="b"/>
      </net>
      <net>
         <source obj="decay m" outlet="inlet"/>
         <dest obj="decay" inlet="d"/>
      </net>
      <net>
         <source obj="soft_1" outlet="out"/>
         <dest obj="out" inlet="outlet"/>
      </net>
      <net>
         <source obj="lp_1" outlet="out"/>
         <dest obj="gain" inlet="in"/>
      </net>
      <net>
         <source obj="*_2" outlet="result"/>
         <dest obj="lp_1" inlet="in"/>
      </net>
      <net>
         <source obj="d_2" outlet="env"/>
         <dest obj="*_4" inlet="a"/>
      </net>
      <net>
         <source obj="*_4" outlet="result"/>
         <dest obj="freq 2" inlet="pitch"/>
      </net>
      <net>
         <source obj="curve" outlet="inlet"/>
         <dest obj="*_4" inlet="b"/>
      </net>
      <net>
         <source obj="noise decay" outlet="inlet"/>
         <dest obj="d_1" inlet="d"/>
      </net>
      <net>
         <source obj="*_5" outlet="result"/>
         <dest obj="*_1" inlet="in2"/>
      </net>
      <net>
         <source obj="*_3" outlet="result"/>
         <dest obj="*_5" inlet="a"/>
      </net>
      <net>
         <source obj="noiselevel" outlet="inlet"/>
         <dest obj="*_5" inlet="b"/>
      </net>
      <net>
         <source obj="lp pitclh" outlet="inlet"/>
         <dest obj="lp_1" inlet="pitch"/>
      </net>
      <net>
         <source obj="lp reso" outlet="inlet"/>
         <dest obj="lp_1" inlet="reso"/>
      </net>
      <net>
         <source obj="decays" outlet="inlet"/>
         <dest obj="d_2" inlet="d"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>normal</subpatchmode>
      <MidiChannel>1</MidiChannel>
      <NPresets>0</NPresets>
      <NPresetEntries>0</NPresetEntries>
      <NModulationSources>0</NModulationSources>
      <NModulationTargetsPerSource>0</NModulationTargetsPerSource>
      <Author>GaoTamanrasset</Author>
      <License>GPL</License>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>501</x>
      <y>230</y>
      <width>1419</width>
      <height>970</height>
   </windowPos>
</patch-1.0>