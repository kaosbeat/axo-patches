<patch-1.0 appVersion="1.0.10">
   <obj type="midi/in/keyb mod" uuid="abcd509d15e7d13d5381203fd2b4d0ac6fe57bb3" name="keyb_1" x="14" y="42">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/glide" uuid="cfa0324c7cc8ebfd6e03c6b92f41115e3172d0d9" name="mod_gld" x="210" y="42">
      <params>
         <frac32.u.map name="time" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="sss/osc/syncKing" uuid="6f987b01-6cc2-40dd-b627-5830620225b3" name="mod" x="322" y="42">
      <params>
         <frac32.s.map name="pitch" value="0.0"/>
         <frac32.s.map name="FM" value="0.0"/>
         <frac32.s.map name="PM" value="0.0"/>
         <frac32.s.map name="AM" value="0.0"/>
         <frac32.s.map name="Grit" value="0.0"/>
         <bool32.tgl name="Waveform" value="0"/>
         <bool32.tgl name="Hardsync" onParent="true" value="0"/>
         <bool32.tgl name="Direcsync" value="0"/>
         <bool32.tgl name="Bitsync" value="0"/>
         <bool32.tgl name="Swapsync" value="0"/>
         <bool32.tgl name="Softsync" onParent="true" value="0"/>
         <frac32.s.map name="RespSo" value="0.0"/>
         <bool32.tgl name="Possync" value="0"/>
         <frac32.s.map name="RespPo" value="0.0"/>
         <bool32.tgl name="Stepsync" value="0"/>
         <frac32.s.map name="Stepsize" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="osc/sine" uuid="6e094045cca76a9dbf7ebfa72e44e4700d2b3ba" name="sine_1" x="462" y="42">
      <params>
         <frac32.s.map name="pitch" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="sss/osc/syncKing" uuid="6f987b01-6cc2-40dd-b627-5830620225b3" name="princ" x="588" y="42">
      <params>
         <frac32.s.map name="pitch" value="0.0"/>
         <frac32.s.map name="FM" value="0.0"/>
         <frac32.s.map name="PM" onParent="true" value="0.0"/>
         <frac32.s.map name="AM" onParent="true" value="0.0"/>
         <frac32.s.map name="Grit" value="0.0"/>
         <bool32.tgl name="Waveform" value="0"/>
         <bool32.tgl name="Hardsync" value="0"/>
         <bool32.tgl name="Direcsync" value="0"/>
         <bool32.tgl name="Bitsync" value="0"/>
         <bool32.tgl name="Swapsync" value="0"/>
         <bool32.tgl name="Softsync" value="0"/>
         <frac32.s.map name="RespSo" value="0.0"/>
         <bool32.tgl name="Possync" value="0"/>
         <frac32.s.map name="RespPo" value="0.0"/>
         <bool32.tgl name="Stepsync" value="0"/>
         <frac32.s.map name="Stepsize" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/gain" uuid="62b1c1a6337c7c8f6aec96408a432477b113cfa0" name="gain_2" x="728" y="42">
      <params>
         <frac32.u.map name="amp" value="7.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="outlet_1" x="840" y="42">
      <params/>
      <attribs/>
   </obj>
   <patcher type="patch/patcher" uuid="4cc2cffd-597b-4013-a8b0-8c285c4d8b9a" name="prn_wavefold" x="742" y="140">
      <params>
         <frac32.s.map name="sat_fold" onParent="true" value="0.0"/>
      </params>
      <attribs/>
      <subpatch appVersion="1.0.10">
         <obj type="math/*c" uuid="7a66f52a9594e7e9eb31328ea725cb3641a80b55" name="*c_2" x="196" y="70">
            <params>
               <frac32.u.map name="amp" value="3.5"/>
            </params>
            <attribs/>
         </obj>
         <obj type="math/+" uuid="faedbea4612d9bd3644d6d3bf31946d848a70e19" name="+_1" x="420" y="98">
            <params/>
            <attribs/>
         </obj>
         <obj type="math/wrap" uuid="8746cb26006c3ad0808df435ca66325fef902e14" name="wrap_1" x="504" y="98">
            <params/>
            <attribs>
               <spinner attributeName="bits" value="3"/>
            </attribs>
         </obj>
         <obj type="math/cos" uuid="a2ba1ca8d10b854e06728c088c43409866624fc1" name="cos_1" x="630" y="98">
            <params/>
            <attribs/>
         </obj>
         <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_1" x="742" y="98">
            <params/>
            <attribs/>
         </obj>
         <obj type="patch/inlet a" uuid="b577fe41e0a6bc7b5502ce33cb8a3129e2e28ee5" name="inlet_1" x="42" y="126">
            <params/>
            <attribs/>
         </obj>
         <obj type="math/+" uuid="faedbea4612d9bd3644d6d3bf31946d848a70e19" name="+_2" x="826" y="126">
            <params/>
            <attribs/>
         </obj>
         <obj type="math/+" uuid="faedbea4612d9bd3644d6d3bf31946d848a70e19" name="+_4" x="924" y="126">
            <params/>
            <attribs/>
         </obj>
         <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="outlet_1" x="1050" y="126">
            <params/>
            <attribs/>
         </obj>
         <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_2" x="742" y="154">
            <params/>
            <attribs/>
         </obj>
         <obj type="math/*" uuid="3ac307b9f782049739ed62504081b96d580ea336" name="*_1" x="210" y="182">
            <params/>
            <attribs/>
         </obj>
         <obj type="math/*c" uuid="7a66f52a9594e7e9eb31328ea725cb3641a80b55" name="*c_3" x="280" y="182">
            <params>
               <frac32.u.map name="amp" value="7.0"/>
            </params>
            <attribs/>
         </obj>
         <obj type="math/gain" uuid="62b1c1a6337c7c8f6aec96408a432477b113cfa0" name="gain_1" x="448" y="196">
            <params>
               <frac32.u.map name="amp" value="6.0"/>
            </params>
            <attribs/>
         </obj>
         <obj type="dist/soft" uuid="e680d76a805e4866027cdf654c7efd8b2e54622" name="soft_1" x="602" y="196">
            <params/>
            <attribs/>
         </obj>
         <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="mod" x="42" y="210">
            <params/>
            <attribs/>
         </obj>
         <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_3" x="742" y="210">
            <params/>
            <attribs/>
         </obj>
         <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="inlet_2" x="28" y="280">
            <params/>
            <attribs/>
         </obj>
         <obj type="ctrl/dial b" uuid="862e7d7f29093cb1ce4aed72244d118ad4d46692" name="sat_fold" x="154" y="294">
            <params>
               <frac32.s.map name="value" onParent="true" value="0.0"/>
            </params>
            <attribs/>
         </obj>
         <obj type="logic/inv" uuid="2bd44b865d3b63ff9b80862242bf5be779e3ad5" name="inv_2" x="238" y="294">
            <params/>
            <attribs/>
         </obj>
         <obj type="conv/to f" uuid="bdd08445689602ce174689ccb6be085f627d9892" name="to_2" x="308" y="294">
            <params/>
            <attribs/>
         </obj>
         <obj type="math/*" uuid="922423f2db9f222aa3e5ba095778288c446da47a" name="*_3" x="378" y="294">
            <params/>
            <attribs/>
         </obj>
         <obj type="math/+" uuid="44553fdc8628c67ab535845ed1be304ad6c9553b" name="+_5" x="448" y="294">
            <params/>
            <attribs/>
         </obj>
         <obj type="math/max" uuid="12440f9565ca6f036f087665b49fb708062e90d0" name="max_1" x="532" y="294">
            <params/>
            <attribs/>
         </obj>
         <obj type="math/+" uuid="44553fdc8628c67ab535845ed1be304ad6c9553b" name="+_3" x="616" y="294">
            <params/>
            <attribs/>
         </obj>
         <obj type="math/inv" uuid="565521d3699b36d8095aa1c79b9ad0046fb133ce" name="inv_1" x="700" y="294">
            <params/>
            <attribs/>
         </obj>
         <obj type="math/+c" uuid="13eec32bd8ad57dd0bb18a02566cc0a117d320e3" name="+c_1" x="784" y="294">
            <params>
               <frac32.u.map name="c" value="64.0"/>
            </params>
            <attribs/>
         </obj>
         <obj type="conv/to f" uuid="bdd08445689602ce174689ccb6be085f627d9892" name="to_3" x="238" y="350">
            <params/>
            <attribs/>
         </obj>
         <obj type="math/*" uuid="922423f2db9f222aa3e5ba095778288c446da47a" name="*_4" x="308" y="350">
            <params/>
            <attribs/>
         </obj>
         <obj type="math/min" uuid="e3d20abc508a5b2245686febc1caf036edc7f501" name="min_1" x="532" y="364">
            <params/>
            <attribs/>
         </obj>
         <obj type="math/abs" uuid="4ae01ff03753539d9028888689654235fa199936" name="abs_1" x="616" y="364">
            <params/>
            <attribs/>
         </obj>
         <obj type="math/*" uuid="922423f2db9f222aa3e5ba095778288c446da47a" name="*_2" x="378" y="378">
            <params/>
            <attribs/>
         </obj>
         <obj type="const/i" uuid="e202f44b2df17ae0b3e663b98ea6b14c8ff00408" name="i_1" x="140" y="406">
            <params/>
            <attribs>
               <spinner attributeName="value" value="0"/>
            </attribs>
         </obj>
         <nets>
            <net>
               <source obj="wrap_1" outlet="b"/>
               <dest obj="cos_1" inlet="phase"/>
            </net>
            <net>
               <source obj="*c_2" outlet="out"/>
               <dest obj="+_1" inlet="in1"/>
            </net>
            <net>
               <source obj="*c_3" outlet="out"/>
               <dest obj="+_1" inlet="in2"/>
            </net>
            <net>
               <source obj="+_1" outlet="out"/>
               <dest obj="wrap_1" inlet="a"/>
            </net>
            <net>
               <source obj="max_1" outlet="out"/>
               <dest obj="*_1" inlet="a"/>
               <dest obj="vca_1" inlet="v"/>
               <dest obj="+_3" inlet="in1"/>
            </net>
            <net>
               <source obj="*_1" outlet="result"/>
               <dest obj="*c_3" inlet="in"/>
            </net>
            <net>
               <source obj="vca_1" outlet="o"/>
               <dest obj="+_2" inlet="in1"/>
            </net>
            <net>
               <source obj="vca_2" outlet="o"/>
               <dest obj="+_2" inlet="in2"/>
            </net>
            <net>
               <source obj="cos_1" outlet="out"/>
               <dest obj="vca_1" inlet="a"/>
            </net>
            <net>
               <source obj="inv_1" outlet="out"/>
               <dest obj="+c_1" inlet="in"/>
            </net>
            <net>
               <source obj="+c_1" outlet="out"/>
               <dest obj="vca_2" inlet="v"/>
            </net>
            <net>
               <source obj="inlet_1" outlet="inlet"/>
               <dest obj="*c_2" inlet="in"/>
               <dest obj="*_1" inlet="b"/>
               <dest obj="vca_2" inlet="a"/>
               <dest obj="gain_1" inlet="in"/>
            </net>
            <net>
               <source obj="+_5" outlet="out"/>
               <dest obj="min_1" inlet="in1"/>
               <dest obj="max_1" inlet="in1"/>
            </net>
            <net>
               <source obj="i_1" outlet="out"/>
               <dest obj="max_1" inlet="in2"/>
               <dest obj="min_1" inlet="in2"/>
            </net>
            <net>
               <source obj="min_1" outlet="out"/>
               <dest obj="abs_1" inlet="in"/>
            </net>
            <net>
               <source obj="soft_1" outlet="out"/>
               <dest obj="vca_3" inlet="a"/>
            </net>
            <net>
               <source obj="abs_1" outlet="out"/>
               <dest obj="vca_3" inlet="v"/>
               <dest obj="+_3" inlet="in2"/>
            </net>
            <net>
               <source obj="+_3" outlet="out"/>
               <dest obj="inv_1" inlet="in"/>
            </net>
            <net>
               <source obj="+_2" outlet="out"/>
               <dest obj="+_4" inlet="in1"/>
            </net>
            <net>
               <source obj="vca_3" outlet="o"/>
               <dest obj="+_4" inlet="in2"/>
            </net>
            <net>
               <source obj="+_4" outlet="out"/>
               <dest obj="outlet_1" inlet="outlet"/>
            </net>
            <net>
               <source obj="inlet_2" outlet="inlet"/>
               <dest obj="to_3" inlet="i"/>
               <dest obj="inv_2" inlet="i"/>
            </net>
            <net>
               <source obj="to_3" outlet="o"/>
               <dest obj="*_4" inlet="a"/>
            </net>
            <net>
               <source obj="*_4" outlet="result"/>
               <dest obj="*_2" inlet="b"/>
            </net>
            <net>
               <source obj="sat_fold" outlet="out"/>
               <dest obj="*_3" inlet="a"/>
               <dest obj="*_2" inlet="a"/>
            </net>
            <net>
               <source obj="*_2" outlet="result"/>
               <dest obj="+_5" inlet="in2"/>
            </net>
            <net>
               <source obj="*_3" outlet="result"/>
               <dest obj="+_5" inlet="in1"/>
            </net>
            <net>
               <source obj="inv_2" outlet="o"/>
               <dest obj="to_2" inlet="i"/>
            </net>
            <net>
               <source obj="to_2" outlet="o"/>
               <dest obj="*_3" inlet="b"/>
            </net>
            <net>
               <source obj="mod" outlet="inlet"/>
               <dest obj="*_4" inlet="b"/>
            </net>
            <net>
               <source obj="gain_1" outlet="out"/>
               <dest obj="soft_1" inlet="in"/>
            </net>
         </nets>
         <settings>
            <subpatchmode>no</subpatchmode>
         </settings>
         <notes><![CDATA[]]></notes>
         <windowPos>
            <x>0</x>
            <y>0</y>
            <width>1318</width>
            <height>884</height>
         </windowPos>
      </subpatch>
   </patcher>
   <patcher type="patch/patcher" uuid="f2ea1e2c-7c42-42ab-9789-d5101a4bd913" name="tune" x="210" y="154">
      <params>
         <frac32.s.map name="fine" onParent="true" value="0.0"/>
         <frac32.s.map name="semi" onParent="true" value="0.0"/>
         <frac32.s.map name="octave" onParent="true" value="0.0"/>
      </params>
      <attribs/>
      <subpatch appVersion="1.0.10">
         <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="inlet_1" x="28" y="28">
            <params/>
            <attribs/>
         </obj>
         <obj type="math/+" uuid="44553fdc8628c67ab535845ed1be304ad6c9553b" name="+_1" x="252" y="28">
            <params/>
            <attribs/>
         </obj>
         <obj type="math/+" uuid="44553fdc8628c67ab535845ed1be304ad6c9553b" name="+_2" x="476" y="28">
            <params/>
            <attribs/>
         </obj>
         <obj type="math/+" uuid="44553fdc8628c67ab535845ed1be304ad6c9553b" name="+_3" x="602" y="28">
            <params/>
            <attribs/>
         </obj>
         <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="outlet_1" x="714" y="28">
            <params/>
            <attribs/>
         </obj>
         <obj type="math/gain" uuid="6b4dd3da49f98e54900f6c20031f38f4624fa364" name="gain_1" x="238" y="98">
            <params>
               <frac32.u.map name="amp" value="48.0"/>
            </params>
            <attribs/>
         </obj>
         <obj type="math/*c" uuid="7d5ef61c3bcd571ee6bbd8437ef3612125dfb225" name="*c_2" x="602" y="98">
            <params>
               <frac32.u.map name="amp" value="3.0"/>
            </params>
            <attribs/>
         </obj>
         <obj type="math/round" uuid="d0382003e049112e1746390d691d052ae1294db" name="round_2" x="476" y="112">
            <params/>
            <attribs/>
         </obj>
         <obj type="math/*c" uuid="7d5ef61c3bcd571ee6bbd8437ef3612125dfb225" name="*c_1" x="462" y="168">
            <params>
               <frac32.u.map name="amp" value="7.0"/>
            </params>
            <attribs/>
         </obj>
         <obj type="math/round" uuid="d0382003e049112e1746390d691d052ae1294db" name="round_1" x="252" y="196">
            <params/>
            <attribs/>
         </obj>
         <obj type="ctrl/dial b" uuid="862e7d7f29093cb1ce4aed72244d118ad4d46692" name="fine" x="616" y="196">
            <params>
               <frac32.s.map name="value" onParent="true" value="0.0"/>
            </params>
            <attribs/>
         </obj>
         <obj type="math/div 16" uuid="19cf8d3358046cb69c1139e51a3e1555742492e0" name="div_1" x="252" y="252">
            <params/>
            <attribs/>
         </obj>
         <obj type="ctrl/dial b" uuid="862e7d7f29093cb1ce4aed72244d118ad4d46692" name="semi" x="476" y="280">
            <params>
               <frac32.s.map name="value" onParent="true" value="0.0"/>
            </params>
            <attribs/>
         </obj>
         <obj type="ctrl/dial b" uuid="862e7d7f29093cb1ce4aed72244d118ad4d46692" name="octave" x="252" y="308">
            <params>
               <frac32.s.map name="value" onParent="true" value="0.0"/>
            </params>
            <attribs/>
         </obj>
         <nets>
            <net>
               <source obj="inlet_1" outlet="inlet"/>
               <dest obj="+_1" inlet="in1"/>
            </net>
            <net>
               <source obj="octave" outlet="out"/>
               <dest obj="div_1" inlet="in"/>
            </net>
            <net>
               <source obj="div_1" outlet="out"/>
               <dest obj="round_1" inlet="in"/>
            </net>
            <net>
               <source obj="round_1" outlet="out"/>
               <dest obj="gain_1" inlet="in"/>
            </net>
            <net>
               <source obj="gain_1" outlet="out"/>
               <dest obj="+_1" inlet="in2"/>
            </net>
            <net>
               <source obj="+_1" outlet="out"/>
               <dest obj="+_2" inlet="in1"/>
            </net>
            <net>
               <source obj="round_2" outlet="out"/>
               <dest obj="+_2" inlet="in2"/>
            </net>
            <net>
               <source obj="semi" outlet="out"/>
               <dest obj="*c_1" inlet="in"/>
            </net>
            <net>
               <source obj="*c_1" outlet="out"/>
               <dest obj="round_2" inlet="in"/>
            </net>
            <net>
               <source obj="fine" outlet="out"/>
               <dest obj="*c_2" inlet="in"/>
            </net>
            <net>
               <source obj="+_2" outlet="out"/>
               <dest obj="+_3" inlet="in1"/>
            </net>
            <net>
               <source obj="+_3" outlet="out"/>
               <dest obj="outlet_1" inlet="outlet"/>
            </net>
            <net>
               <source obj="*c_2" outlet="out"/>
               <dest obj="+_3" inlet="in2"/>
            </net>
         </nets>
         <settings>
            <subpatchmode>no</subpatchmode>
         </settings>
         <notes><![CDATA[]]></notes>
      </subpatch>
   </patcher>
   <obj type="ctrl/toggle" uuid="42b8134fa729d54bfc8d62d6ef3fa99498c1de99" name="toggle_1" x="14" y="168">
      <params>
         <bool32.tgl name="b" value="1"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/gain" uuid="62b1c1a6337c7c8f6aec96408a432477b113cfa0" name="gain_1" x="462" y="182">
      <params>
         <frac32.u.map name="amp" value="7.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="hardsync" x="14" y="266">
      <params/>
      <attribs/>
   </obj>
   <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_2" x="476" y="280">
      <params/>
      <attribs/>
   </obj>
   <obj type="filter/lp svf" uuid="2003da6360b4fdb967cd635e9f6544e832fd522e" name="lp_1" x="728" y="294">
      <params>
         <frac32.s.map name="pitch" value="36.0"/>
         <frac32.u.map name="reso" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="switch" x="14" y="336">
      <params/>
      <attribs/>
   </obj>
   <patcher type="patch/patcher" uuid="2db2acf0-a1bc-402d-a25a-0c716c68cfee" name="mod_wavefold" x="462" y="350">
      <params>
         <frac32.u.map name="fold" onParent="true" value="0.0"/>
      </params>
      <attribs/>
      <subpatch appVersion="1.0.10">
         <obj type="math/*c" uuid="7a66f52a9594e7e9eb31328ea725cb3641a80b55" name="*c_2" x="196" y="70">
            <params>
               <frac32.u.map name="amp" value="3.5"/>
            </params>
            <attribs/>
         </obj>
         <obj type="math/+" uuid="faedbea4612d9bd3644d6d3bf31946d848a70e19" name="+_1" x="420" y="98">
            <params/>
            <attribs/>
         </obj>
         <obj type="math/wrap" uuid="8746cb26006c3ad0808df435ca66325fef902e14" name="wrap_1" x="504" y="98">
            <params/>
            <attribs>
               <spinner attributeName="bits" value="3"/>
            </attribs>
         </obj>
         <obj type="math/cos" uuid="a2ba1ca8d10b854e06728c088c43409866624fc1" name="cos_1" x="588" y="98">
            <params/>
            <attribs/>
         </obj>
         <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_1" x="700" y="98">
            <params/>
            <attribs/>
         </obj>
         <obj type="patch/inlet a" uuid="b577fe41e0a6bc7b5502ce33cb8a3129e2e28ee5" name="inlet_1" x="42" y="126">
            <params/>
            <attribs/>
         </obj>
         <obj type="math/+" uuid="faedbea4612d9bd3644d6d3bf31946d848a70e19" name="+_2" x="784" y="126">
            <params/>
            <attribs/>
         </obj>
         <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="outlet_1" x="924" y="126">
            <params/>
            <attribs/>
         </obj>
         <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_2" x="700" y="154">
            <params/>
            <attribs/>
         </obj>
         <obj type="math/*" uuid="3ac307b9f782049739ed62504081b96d580ea336" name="*_1" x="210" y="182">
            <params/>
            <attribs/>
         </obj>
         <obj type="math/*c" uuid="7a66f52a9594e7e9eb31328ea725cb3641a80b55" name="*c_3" x="308" y="182">
            <params>
               <frac32.u.map name="amp" value="7.0"/>
            </params>
            <attribs/>
         </obj>
         <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="fold" x="308" y="294">
            <params>
               <frac32.u.map name="value" onParent="true" value="64.0"/>
            </params>
            <attribs/>
         </obj>
         <obj type="math/inv" uuid="565521d3699b36d8095aa1c79b9ad0046fb133ce" name="inv_1" x="462" y="294">
            <params/>
            <attribs/>
         </obj>
         <obj type="math/+c" uuid="13eec32bd8ad57dd0bb18a02566cc0a117d320e3" name="+c_1" x="546" y="294">
            <params>
               <frac32.u.map name="c" value="64.0"/>
            </params>
            <attribs/>
         </obj>
         <nets>
            <net>
               <source obj="wrap_1" outlet="b"/>
               <dest obj="cos_1" inlet="phase"/>
            </net>
            <net>
               <source obj="*c_2" outlet="out"/>
               <dest obj="+_1" inlet="in1"/>
            </net>
            <net>
               <source obj="*c_3" outlet="out"/>
               <dest obj="+_1" inlet="in2"/>
            </net>
            <net>
               <source obj="+_1" outlet="out"/>
               <dest obj="wrap_1" inlet="a"/>
            </net>
            <net>
               <source obj="fold" outlet="out"/>
               <dest obj="*_1" inlet="a"/>
               <dest obj="vca_1" inlet="v"/>
               <dest obj="inv_1" inlet="in"/>
            </net>
            <net>
               <source obj="*_1" outlet="result"/>
               <dest obj="*c_3" inlet="in"/>
            </net>
            <net>
               <source obj="vca_1" outlet="o"/>
               <dest obj="+_2" inlet="in1"/>
            </net>
            <net>
               <source obj="vca_2" outlet="o"/>
               <dest obj="+_2" inlet="in2"/>
            </net>
            <net>
               <source obj="+_2" outlet="out"/>
               <dest obj="outlet_1" inlet="outlet"/>
            </net>
            <net>
               <source obj="cos_1" outlet="out"/>
               <dest obj="vca_1" inlet="a"/>
            </net>
            <net>
               <source obj="inv_1" outlet="out"/>
               <dest obj="+c_1" inlet="in"/>
            </net>
            <net>
               <source obj="+c_1" outlet="out"/>
               <dest obj="vca_2" inlet="v"/>
            </net>
            <net>
               <source obj="inlet_1" outlet="inlet"/>
               <dest obj="*c_2" inlet="in"/>
               <dest obj="*_1" inlet="b"/>
               <dest obj="vca_2" inlet="a"/>
            </net>
         </nets>
         <settings>
            <subpatchmode>no</subpatchmode>
         </settings>
         <notes><![CDATA[]]></notes>
      </subpatch>
   </patcher>
   <obj type="env/adsr" uuid="d1dbcc5fa6f87b98a6a91c87fd44acee5e690bac" name="modenv" x="196" y="364">
      <params>
         <frac32.s.map name="a" onParent="true" value="0.0"/>
         <frac32.s.map name="d" onParent="true" value="0.0"/>
         <frac32.u.map name="s" onParent="true" value="0.0"/>
         <frac32.s.map name="r" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_1" x="756" y="420">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="PM_dep" x="14" y="476">
      <params>
         <frac32.u.map name="value" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_3" x="476" y="476">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/*c" uuid="7a66f52a9594e7e9eb31328ea725cb3641a80b55" name="*c_2" x="728" y="504">
      <params>
         <frac32.u.map name="amp" value="42.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/exp" uuid="3f0e6db61bc98c04b42a940e7a93abbf8a178317" name="exp_1" x="476" y="546">
      <params/>
      <attribs/>
   </obj>
   <obj type="env/adsr" uuid="d1dbcc5fa6f87b98a6a91c87fd44acee5e690bac" name="amp" x="196" y="560">
      <params>
         <frac32.s.map name="a" onParent="true" value="0.0"/>
         <frac32.s.map name="d" onParent="true" value="0.0"/>
         <frac32.u.map name="s" onParent="true" value="0.0"/>
         <frac32.s.map name="r" onParent="true" value="-1.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/-c" uuid="bc70bed87e5405985ade03f4806b9450609a9093" name="-c_1" x="476" y="602">
      <params>
         <frac32.u.map name="c" value="0.25"/>
      </params>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="714" y="658" text="Synthesizer voice inspired by 259 Complex Waveform Generator"/>
   <comment type="patch/comment" x="714" y="672" text="Made by Maceq687"/>
   <comment type="patch/comment" x="714" y="686" text="https://github.com/maceq687/axoloti"/>
   <nets>
      <net>
         <source obj="keyb_1" outlet="note"/>
         <dest obj="princ" inlet="pitch"/>
         <dest obj="sine_1" inlet="pitch"/>
         <dest obj="mod_gld" inlet="in"/>
      </net>
      <net>
         <source obj="keyb_1" outlet="gate2"/>
         <dest obj="amp" inlet="gate"/>
         <dest obj="modenv" inlet="gate"/>
      </net>
      <net>
         <source obj="vca_3" outlet="o"/>
         <dest obj="princ" inlet="am"/>
         <dest obj="princ" inlet="phase"/>
      </net>
      <net>
         <source obj="modenv" outlet="env"/>
         <dest obj="vca_2" inlet="v"/>
         <dest obj="prn_wavefold" inlet="mod"/>
      </net>
      <net>
         <source obj="sine_1" outlet="wave"/>
         <dest obj="mod" inlet="syncsource"/>
         <dest obj="princ" inlet="syncsource"/>
      </net>
      <net>
         <source obj="prn_wavefold" outlet="outlet_1"/>
         <dest obj="lp_1" inlet="in"/>
      </net>
      <net>
         <source obj="lp_1" outlet="out"/>
         <dest obj="vca_1" inlet="a"/>
      </net>
      <net>
         <source obj="mod" outlet="out"/>
         <dest obj="gain_1" inlet="in"/>
      </net>
      <net>
         <source obj="princ" outlet="out"/>
         <dest obj="gain_2" inlet="in"/>
      </net>
      <net>
         <source obj="gain_2" outlet="out"/>
         <dest obj="prn_wavefold" inlet="inlet_1"/>
      </net>
      <net>
         <source obj="toggle_1" outlet="o"/>
         <dest obj="mod" inlet="active"/>
         <dest obj="princ" inlet="active"/>
         <dest obj="mod_gld" inlet="en"/>
      </net>
      <net>
         <source obj="vca_1" outlet="o"/>
         <dest obj="*c_2" inlet="in"/>
      </net>
      <net>
         <source obj="hardsync" outlet="inlet"/>
         <dest obj="mod" inlet="hardsync"/>
         <dest obj="princ" inlet="hardsync"/>
      </net>
      <net>
         <source obj="gain_1" outlet="out"/>
         <dest obj="vca_2" inlet="a"/>
      </net>
      <net>
         <source obj="vca_2" outlet="o"/>
         <dest obj="mod_wavefold" inlet="inlet_1"/>
      </net>
      <net>
         <source obj="mod_wavefold" outlet="outlet_1"/>
         <dest obj="vca_3" inlet="a"/>
      </net>
      <net>
         <source obj="switch" outlet="inlet"/>
         <dest obj="prn_wavefold" inlet="inlet_2"/>
      </net>
      <net>
         <source obj="amp" outlet="env"/>
         <dest obj="exp_1" inlet="a"/>
      </net>
      <net>
         <source obj="*c_2" outlet="out"/>
         <dest obj="outlet_1" inlet="outlet"/>
      </net>
      <net>
         <source obj="exp_1" outlet="result"/>
         <dest obj="-c_1" inlet="in"/>
      </net>
      <net>
         <source obj="-c_1" outlet="out"/>
         <dest obj="vca_1" inlet="v"/>
      </net>
      <net>
         <source obj="mod_gld" outlet="out"/>
         <dest obj="tune" inlet="inlet_1"/>
      </net>
      <net>
         <source obj="tune" outlet="outlet_1"/>
         <dest obj="mod" inlet="pitch"/>
      </net>
      <net>
         <source obj="PM_dep" outlet="out"/>
         <dest obj="vca_3" inlet="v"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>polyphonic</subpatchmode>
      <MidiChannel>1</MidiChannel>
      <NPresets>8</NPresets>
      <NPresetEntries>32</NPresetEntries>
      <NModulationSources>8</NModulationSources>
      <NModulationTargetsPerSource>8</NModulationTargetsPerSource>
      <Author>maceq687</Author>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>434</x>
      <y>0</y>
      <width>1079</width>
      <height>894</height>
   </windowPos>
</patch-1.0>