<patch-1.0 appVersion="1.0.12">
   <obj type="drj/lfo/sin_4_b" uuid="75f7330c26a13333215dccc3ba3b9008545c1daa9" name="sin_4_b_1" x="210" y="28">
      <params>
         <frac32.s.map name="pitch" value="-38.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="env/ad" uuid="255cb0cd67470c7498f9c33b820facd26aa629ce" name="ad_1" x="322" y="28">
      <params>
         <frac32.s.map name="a" value="-64.0"/>
         <frac32.s.map name="d" value="64.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="mix/xfade" uuid="bb87360199938d53d1183cdc80947ed0a39e3c9a" name="xfade_3" x="504" y="28">
      <params/>
      <attribs/>
   </obj>
   <patcher type="patch/patcher" uuid="606cb6c7-e5e4-43c3-a225-83379969e3d1" name="patcher_2" x="588" y="28">
      <params/>
      <attribs/>
      <subpatch appVersion="1.0.12">
         <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="factor" x="42" y="28">
            <params/>
            <attribs/>
         </obj>
         <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="inlet_1" x="42" y="84">
            <params/>
            <attribs/>
         </obj>
         <obj type="math/*" uuid="922423f2db9f222aa3e5ba095778288c446da47a" name="*_1" x="294" y="84">
            <params/>
            <attribs/>
         </obj>
         <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="outlet_1" x="532" y="84">
            <params/>
            <attribs/>
         </obj>
         <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="inlet_2" x="42" y="140">
            <params/>
            <attribs/>
         </obj>
         <obj type="math/*" uuid="922423f2db9f222aa3e5ba095778288c446da47a" name="*_2" x="294" y="140">
            <params/>
            <attribs/>
         </obj>
         <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="outlet_2" x="532" y="140">
            <params/>
            <attribs/>
         </obj>
         <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="inlet_3" x="42" y="196">
            <params/>
            <attribs/>
         </obj>
         <obj type="math/*" uuid="922423f2db9f222aa3e5ba095778288c446da47a" name="*_3" x="294" y="196">
            <params/>
            <attribs/>
         </obj>
         <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="outlet_3" x="532" y="196">
            <params/>
            <attribs/>
         </obj>
         <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="inlet_4" x="42" y="252">
            <params/>
            <attribs/>
         </obj>
         <obj type="math/*" uuid="922423f2db9f222aa3e5ba095778288c446da47a" name="*_4" x="294" y="252">
            <params/>
            <attribs/>
         </obj>
         <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="outlet_4" x="532" y="252">
            <params/>
            <attribs/>
         </obj>
         <nets>
            <net>
               <source obj="inlet_1" outlet="inlet"/>
               <dest obj="*_1" inlet="a"/>
            </net>
            <net>
               <source obj="inlet_2" outlet="inlet"/>
               <dest obj="*_2" inlet="a"/>
            </net>
            <net>
               <source obj="inlet_3" outlet="inlet"/>
               <dest obj="*_3" inlet="a"/>
            </net>
            <net>
               <source obj="inlet_4" outlet="inlet"/>
               <dest obj="*_4" inlet="a"/>
            </net>
            <net>
               <source obj="*_1" outlet="result"/>
               <dest obj="outlet_1" inlet="outlet"/>
            </net>
            <net>
               <source obj="*_2" outlet="result"/>
               <dest obj="outlet_2" inlet="outlet"/>
            </net>
            <net>
               <source obj="*_3" outlet="result"/>
               <dest obj="outlet_3" inlet="outlet"/>
            </net>
            <net>
               <source obj="*_4" outlet="result"/>
               <dest obj="outlet_4" inlet="outlet"/>
            </net>
            <net>
               <source obj="factor" outlet="inlet"/>
               <dest obj="*_1" inlet="b"/>
               <dest obj="*_2" inlet="b"/>
               <dest obj="*_3" inlet="b"/>
               <dest obj="*_4" inlet="b"/>
            </net>
         </nets>
         <settings>
            <subpatchmode>no</subpatchmode>
         </settings>
         <notes><![CDATA[]]></notes>
         <windowPos>
            <x>4</x>
            <y>2</y>
            <width>842</width>
            <height>562</height>
         </windowPos>
      </subpatch>
   </patcher>
   <obj type="math/exp" uuid="3f0e6db61bc98c04b42a940e7a93abbf8a178317" name="exp_1" x="728" y="28">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/exp" uuid="3f0e6db61bc98c04b42a940e7a93abbf8a178317" name="exp_4" x="798" y="28">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/exp" uuid="3f0e6db61bc98c04b42a940e7a93abbf8a178317" name="exp_2" x="868" y="28">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/exp" uuid="3f0e6db61bc98c04b42a940e7a93abbf8a178317" name="exp_3" x="938" y="28">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="lfodepth" x="112" y="56">
      <params>
         <frac32.u.map name="value" value="64.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/+c" uuid="13eec32bd8ad57dd0bb18a02566cc0a117d320e3" name="+c_1" x="434" y="56">
      <params>
         <frac32.u.map name="c" value="64.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="stereowidth" x="1274" y="98">
      <params>
         <frac32.u.map name="value" value="49.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="cpwitz/midi/paraphonic" uuid="cpwitz-midi-paraphonic" name="paraphonic_1" x="28" y="196">
      <params>
         <bool32.tgl name="retrigger" value="1"/>
      </params>
      <attribs>
         <spinner attributeName="MIDIchannel" value="0"/>
      </attribs>
   </obj>
   <patcher type="patch/patcher" uuid="2386b910-456c-4be1-94b2-b89acebb47b2" name="patcher_1" x="448" y="196">
      <params>
         <frac32.u.map name="glide_1" value="45.5"/>
         <frac32.u.map name="glide_2" value="32.0"/>
         <frac32.u.map name="glide_3" value="55.5"/>
         <frac32.u.map name="glide_4" value="33.0"/>
         <bool32.tgl name="glide" value="0"/>
      </params>
      <attribs/>
      <subpatch appVersion="1.0.12">
         <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="in1" x="42" y="140">
            <params/>
            <attribs/>
         </obj>
         <obj type="math/glide" uuid="cfa0324c7cc8ebfd6e03c6b92f41115e3172d0d9" name="glide_1" x="168" y="140">
            <params>
               <frac32.u.map name="time" onParent="true" value="0.0"/>
            </params>
            <attribs/>
         </obj>
         <obj type="rand/uniform f" uuid="8f20d4eee60d56a57c11111c7028f69d6039b658" name="uniform_1" x="294" y="140">
            <params/>
            <attribs/>
         </obj>
         <obj type="math/*c" uuid="7d5ef61c3bcd571ee6bbd8437ef3612125dfb225" name="*c_1" x="392" y="140">
            <params>
               <frac32.u.map name="amp" value="0.34999942779541016"/>
            </params>
            <attribs/>
         </obj>
         <obj type="kfilter/lowpass" uuid="4f0d68b39b6f6b1c1d371b028d84391d14062d68" name="lowpass_1" x="504" y="140">
            <params>
               <frac32.s.map name="freq" value="-35.0"/>
            </params>
            <attribs/>
         </obj>
         <obj type="math/+" uuid="44553fdc8628c67ab535845ed1be304ad6c9553b" name="+_1" x="630" y="140">
            <params/>
            <attribs/>
         </obj>
         <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="out1" x="728" y="140">
            <params/>
            <attribs/>
         </obj>
         <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="in2" x="42" y="252">
            <params/>
            <attribs/>
         </obj>
         <obj type="math/glide" uuid="cfa0324c7cc8ebfd6e03c6b92f41115e3172d0d9" name="glide_2" x="168" y="252">
            <params>
               <frac32.u.map name="time" onParent="true" value="0.0"/>
            </params>
            <attribs/>
         </obj>
         <obj type="rand/uniform f" uuid="8f20d4eee60d56a57c11111c7028f69d6039b658" name="uniform_2" x="294" y="252">
            <params/>
            <attribs/>
         </obj>
         <obj type="math/*c" uuid="7d5ef61c3bcd571ee6bbd8437ef3612125dfb225" name="*c_2" x="392" y="252">
            <params>
               <frac32.u.map name="amp" value="0.2499995231628418"/>
            </params>
            <attribs/>
         </obj>
         <obj type="kfilter/lowpass" uuid="4f0d68b39b6f6b1c1d371b028d84391d14062d68" name="lowpass_2" x="504" y="252">
            <params>
               <frac32.s.map name="freq" value="-48.0"/>
            </params>
            <attribs/>
         </obj>
         <obj type="math/+" uuid="44553fdc8628c67ab535845ed1be304ad6c9553b" name="+_2" x="644" y="252">
            <params/>
            <attribs/>
         </obj>
         <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="out2" x="728" y="252">
            <params/>
            <attribs/>
         </obj>
         <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="in3" x="42" y="350">
            <params/>
            <attribs/>
         </obj>
         <obj type="math/glide" uuid="cfa0324c7cc8ebfd6e03c6b92f41115e3172d0d9" name="glide_3" x="168" y="350">
            <params>
               <frac32.u.map name="time" onParent="true" value="0.0"/>
            </params>
            <attribs/>
         </obj>
         <obj type="rand/uniform f" uuid="8f20d4eee60d56a57c11111c7028f69d6039b658" name="uniform_3" x="294" y="350">
            <params/>
            <attribs/>
         </obj>
         <obj type="math/*c" uuid="7d5ef61c3bcd571ee6bbd8437ef3612125dfb225" name="*c_3" x="392" y="350">
            <params>
               <frac32.u.map name="amp" value="0.4499993324279785"/>
            </params>
            <attribs/>
         </obj>
         <obj type="kfilter/lowpass" uuid="4f0d68b39b6f6b1c1d371b028d84391d14062d68" name="lowpass_3" x="504" y="350">
            <params>
               <frac32.s.map name="freq" value="-39.0"/>
            </params>
            <attribs/>
         </obj>
         <obj type="math/+" uuid="44553fdc8628c67ab535845ed1be304ad6c9553b" name="+_3" x="644" y="350">
            <params/>
            <attribs/>
         </obj>
         <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="out3" x="728" y="350">
            <params/>
            <attribs/>
         </obj>
         <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="in4" x="42" y="462">
            <params/>
            <attribs/>
         </obj>
         <obj type="math/glide" uuid="cfa0324c7cc8ebfd6e03c6b92f41115e3172d0d9" name="glide_4" x="168" y="462">
            <params>
               <frac32.u.map name="time" onParent="true" value="0.0"/>
            </params>
            <attribs/>
         </obj>
         <obj type="rand/uniform f" uuid="8f20d4eee60d56a57c11111c7028f69d6039b658" name="uniform_4" x="294" y="462">
            <params/>
            <attribs/>
         </obj>
         <obj type="math/*c" uuid="7d5ef61c3bcd571ee6bbd8437ef3612125dfb225" name="*c_4" x="392" y="462">
            <params>
               <frac32.u.map name="amp" value="0.2499995231628418"/>
            </params>
            <attribs/>
         </obj>
         <obj type="kfilter/lowpass" uuid="4f0d68b39b6f6b1c1d371b028d84391d14062d68" name="lowpass_4" x="504" y="462">
            <params>
               <frac32.s.map name="freq" value="-39.0"/>
            </params>
            <attribs/>
         </obj>
         <obj type="math/+" uuid="44553fdc8628c67ab535845ed1be304ad6c9553b" name="+_4" x="644" y="462">
            <params/>
            <attribs/>
         </obj>
         <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="out4" x="728" y="462">
            <params/>
            <attribs/>
         </obj>
         <obj type="ctrl/toggle" uuid="42b8134fa729d54bfc8d62d6ef3fa99498c1de99" name="glide" x="42" y="518">
            <params>
               <bool32.tgl name="b" onParent="true" value="0"/>
            </params>
            <attribs/>
         </obj>
         <nets>
            <net>
               <source obj="uniform_1" outlet="wave"/>
               <dest obj="*c_1" inlet="in"/>
            </net>
            <net>
               <source obj="in1" outlet="inlet"/>
               <dest obj="glide_1" inlet="in"/>
            </net>
            <net>
               <source obj="*c_1" outlet="out"/>
               <dest obj="lowpass_1" inlet="in"/>
            </net>
            <net>
               <source obj="+_1" outlet="out"/>
               <dest obj="out1" inlet="outlet"/>
            </net>
            <net>
               <source obj="lowpass_1" outlet="out"/>
               <dest obj="+_1" inlet="in1"/>
            </net>
            <net>
               <source obj="uniform_2" outlet="wave"/>
               <dest obj="*c_2" inlet="in"/>
            </net>
            <net>
               <source obj="in2" outlet="inlet"/>
               <dest obj="glide_2" inlet="in"/>
            </net>
            <net>
               <source obj="*c_2" outlet="out"/>
               <dest obj="lowpass_2" inlet="in"/>
            </net>
            <net>
               <source obj="+_2" outlet="out"/>
               <dest obj="out2" inlet="outlet"/>
            </net>
            <net>
               <source obj="lowpass_2" outlet="out"/>
               <dest obj="+_2" inlet="in1"/>
            </net>
            <net>
               <source obj="uniform_3" outlet="wave"/>
               <dest obj="*c_3" inlet="in"/>
            </net>
            <net>
               <source obj="in3" outlet="inlet"/>
               <dest obj="glide_3" inlet="in"/>
            </net>
            <net>
               <source obj="*c_3" outlet="out"/>
               <dest obj="lowpass_3" inlet="in"/>
            </net>
            <net>
               <source obj="+_3" outlet="out"/>
               <dest obj="out3" inlet="outlet"/>
            </net>
            <net>
               <source obj="lowpass_3" outlet="out"/>
               <dest obj="+_3" inlet="in1"/>
            </net>
            <net>
               <source obj="glide_1" outlet="out"/>
               <dest obj="+_1" inlet="in2"/>
            </net>
            <net>
               <source obj="glide_2" outlet="out"/>
               <dest obj="+_2" inlet="in2"/>
            </net>
            <net>
               <source obj="glide_3" outlet="out"/>
               <dest obj="+_3" inlet="in2"/>
            </net>
            <net>
               <source obj="uniform_4" outlet="wave"/>
               <dest obj="*c_4" inlet="in"/>
            </net>
            <net>
               <source obj="in4" outlet="inlet"/>
               <dest obj="glide_4" inlet="in"/>
            </net>
            <net>
               <source obj="*c_4" outlet="out"/>
               <dest obj="lowpass_4" inlet="in"/>
            </net>
            <net>
               <source obj="+_4" outlet="out"/>
               <dest obj="out4" inlet="outlet"/>
            </net>
            <net>
               <source obj="lowpass_4" outlet="out"/>
               <dest obj="+_4" inlet="in1"/>
            </net>
            <net>
               <source obj="glide_4" outlet="out"/>
               <dest obj="+_4" inlet="in2"/>
            </net>
            <net>
               <source obj="glide" outlet="o"/>
               <dest obj="glide_4" inlet="en"/>
               <dest obj="glide_3" inlet="en"/>
               <dest obj="glide_2" inlet="en"/>
               <dest obj="glide_1" inlet="en"/>
            </net>
         </nets>
         <settings>
            <subpatchmode>no</subpatchmode>
         </settings>
         <notes><![CDATA[]]></notes>
         <windowPos>
            <x>4</x>
            <y>23</y>
            <width>1038</width>
            <height>828</height>
         </windowPos>
      </subpatch>
   </patcher>
   <obj type="osc/sine" uuid="6e094045cca76a9dbf7ebfa72e44e4700d2b3ba" name="sine_1" x="602" y="196">
      <params>
         <frac32.s.map name="pitch" value="-1.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_4" x="714" y="196">
      <params/>
      <attribs/>
   </obj>
   <obj type="mix/mix 2" uuid="30c04239c88e09d3fa5c333b784ecf54f1b0e268" name="mix_1" x="854" y="196">
      <params>
         <frac32.u.map name="gain1" value="16.0"/>
         <frac32.u.map name="gain2" value="16.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="dist/soft" uuid="e680d76a805e4866027cdf654c7efd8b2e54622" name="soft_2" x="966" y="196">
      <params/>
      <attribs/>
   </obj>
   <obj type="env/adsr" uuid="d1dbcc5fa6f87b98a6a91c87fd44acee5e690bac" name="adsr_1" x="1106" y="196">
      <params>
         <frac32.s.map name="a" value="-30.0"/>
         <frac32.s.map name="d" value="0.0"/>
         <frac32.u.map name="s" value="59.0"/>
         <frac32.s.map name="r" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/*c" uuid="7d5ef61c3bcd571ee6bbd8437ef3612125dfb225" name="volume" x="1246" y="196">
      <params>
         <frac32.u.map name="amp" value="55.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_1" x="1400" y="196">
      <params/>
      <attribs/>
   </obj>
   <obj type="mix/xfade" uuid="375dc91d218e96cdc9cbc7e92adb48f705ef701a" name="xfade_1" x="1484" y="196">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="left" x="1610" y="196">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="right" x="1610" y="252">
      <params/>
      <attribs/>
   </obj>
   <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_6" x="1400" y="266">
      <params/>
      <attribs/>
   </obj>
   <obj type="mix/xfade" uuid="375dc91d218e96cdc9cbc7e92adb48f705ef701a" name="xfade_2" x="1484" y="280">
      <params/>
      <attribs/>
   </obj>
   <obj type="osc/sine" uuid="6e094045cca76a9dbf7ebfa72e44e4700d2b3ba" name="sine_2" x="602" y="322">
      <params>
         <frac32.s.map name="pitch" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_2" x="714" y="322">
      <params/>
      <attribs/>
   </obj>
   <obj type="mix/mix 2" uuid="30c04239c88e09d3fa5c333b784ecf54f1b0e268" name="mix_2" x="854" y="350">
      <params>
         <frac32.u.map name="gain1" value="16.0"/>
         <frac32.u.map name="gain2" value="16.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="dist/soft" uuid="e680d76a805e4866027cdf654c7efd8b2e54622" name="soft_1" x="966" y="350">
      <params/>
      <attribs/>
   </obj>
   <obj type="osc/sine" uuid="6e094045cca76a9dbf7ebfa72e44e4700d2b3ba" name="sine_3" x="602" y="448">
      <params>
         <frac32.s.map name="pitch" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_3" x="714" y="448">
      <params/>
      <attribs/>
   </obj>
   <obj type="disp/i" uuid="5e35fd0c62d81e70017289250cf28edd26e19e4a" name="notes" x="196" y="518">
      <params/>
      <attribs/>
   </obj>
   <obj type="disp/dial b" uuid="9ffed04e6a3052d9001eda83bae7024cb6d17037" name="note1" x="252" y="518">
      <params/>
      <attribs/>
   </obj>
   <obj type="disp/dial b" uuid="9ffed04e6a3052d9001eda83bae7024cb6d17037" name="note2" x="336" y="518">
      <params/>
      <attribs/>
   </obj>
   <obj type="disp/dial b" uuid="9ffed04e6a3052d9001eda83bae7024cb6d17037" name="note3" x="420" y="518">
      <params/>
      <attribs/>
   </obj>
   <obj type="disp/dial b" uuid="9ffed04e6a3052d9001eda83bae7024cb6d17037" name="note4" x="504" y="518">
      <params/>
      <attribs/>
   </obj>
   <obj type="osc/sine" uuid="6e094045cca76a9dbf7ebfa72e44e4700d2b3ba" name="sine_4" x="602" y="574">
      <params>
         <frac32.s.map name="pitch" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_5" x="714" y="574">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="volume" outlet="out"/>
         <dest obj="vca_1" inlet="v"/>
         <dest obj="vca_6" inlet="v"/>
      </net>
      <net>
         <source obj="paraphonic_1" outlet="note1"/>
         <dest obj="note1" inlet="in"/>
         <dest obj="patcher_1" inlet="in1"/>
      </net>
      <net>
         <source obj="paraphonic_1" outlet="note2"/>
         <dest obj="note2" inlet="in"/>
         <dest obj="patcher_1" inlet="in2"/>
      </net>
      <net>
         <source obj="paraphonic_1" outlet="note3"/>
         <dest obj="note3" inlet="in"/>
         <dest obj="patcher_1" inlet="in3"/>
      </net>
      <net>
         <source obj="vca_1" outlet="o"/>
         <dest obj="xfade_1" inlet="i1"/>
         <dest obj="xfade_2" inlet="i2"/>
      </net>
      <net>
         <source obj="patcher_1" outlet="out1"/>
         <dest obj="sine_1" inlet="pitch"/>
      </net>
      <net>
         <source obj="patcher_1" outlet="out2"/>
         <dest obj="sine_2" inlet="pitch"/>
      </net>
      <net>
         <source obj="patcher_1" outlet="out3"/>
         <dest obj="sine_3" inlet="pitch"/>
      </net>
      <net>
         <source obj="sine_1" outlet="wave"/>
         <dest obj="mix_1" inlet="in1"/>
      </net>
      <net>
         <source obj="sine_2" outlet="wave"/>
         <dest obj="mix_2" inlet="in1"/>
      </net>
      <net>
         <source obj="sine_3" outlet="wave"/>
         <dest obj="mix_1" inlet="in2"/>
      </net>
      <net>
         <source obj="exp_1" outlet="result"/>
         <dest obj="vca_4" inlet="v"/>
      </net>
      <net>
         <source obj="exp_2" outlet="result"/>
         <dest obj="vca_3" inlet="v"/>
      </net>
      <net>
         <source obj="sin_4_b_1" outlet="0"/>
         <dest obj="patcher_2" inlet="inlet_1"/>
      </net>
      <net>
         <source obj="sin_4_b_1" outlet="180"/>
         <dest obj="patcher_2" inlet="inlet_3"/>
      </net>
      <net>
         <source obj="sin_4_b_1" outlet="270"/>
         <dest obj="patcher_2" inlet="inlet_4"/>
      </net>
      <net>
         <source obj="paraphonic_1" outlet="note4"/>
         <dest obj="note4" inlet="in"/>
         <dest obj="patcher_1" inlet="in4"/>
      </net>
      <net>
         <source obj="sine_4" outlet="wave"/>
         <dest obj="mix_2" inlet="in2"/>
      </net>
      <net>
         <source obj="sin_4_b_1" outlet="90"/>
         <dest obj="patcher_2" inlet="inlet_2"/>
      </net>
      <net>
         <source obj="exp_4" outlet="result"/>
         <dest obj="vca_2" inlet="v"/>
      </net>
      <net>
         <source obj="exp_3" outlet="result"/>
         <dest obj="vca_5" inlet="v"/>
      </net>
      <net>
         <source obj="vca_4" outlet="o"/>
         <dest obj="sine_2" inlet="phase"/>
      </net>
      <net>
         <source obj="vca_2" outlet="o"/>
         <dest obj="sine_3" inlet="phase"/>
      </net>
      <net>
         <source obj="patcher_1" outlet="out4"/>
         <dest obj="sine_4" inlet="pitch"/>
      </net>
      <net>
         <source obj="mix_1" outlet="out"/>
         <dest obj="vca_4" inlet="a"/>
         <dest obj="vca_5" inlet="a"/>
         <dest obj="soft_2" inlet="in"/>
      </net>
      <net>
         <source obj="mix_2" outlet="out"/>
         <dest obj="vca_2" inlet="a"/>
         <dest obj="vca_3" inlet="a"/>
         <dest obj="soft_1" inlet="in"/>
      </net>
      <net>
         <source obj="vca_6" outlet="o"/>
         <dest obj="xfade_1" inlet="i2"/>
         <dest obj="xfade_2" inlet="i1"/>
      </net>
      <net>
         <source obj="adsr_1" outlet="env"/>
         <dest obj="volume" inlet="in"/>
      </net>
      <net>
         <source obj="stereowidth" outlet="out"/>
         <dest obj="xfade_1" inlet="c"/>
         <dest obj="xfade_2" inlet="c"/>
      </net>
      <net>
         <source obj="vca_3" outlet="o"/>
         <dest obj="sine_4" inlet="phase"/>
      </net>
      <net>
         <source obj="vca_5" outlet="o"/>
         <dest obj="sine_1" inlet="phase"/>
      </net>
      <net>
         <source obj="patcher_2" outlet="outlet_1"/>
         <dest obj="exp_1" inlet="a"/>
      </net>
      <net>
         <source obj="patcher_2" outlet="outlet_2"/>
         <dest obj="exp_4" inlet="a"/>
      </net>
      <net>
         <source obj="patcher_2" outlet="outlet_3"/>
         <dest obj="exp_2" inlet="a"/>
      </net>
      <net>
         <source obj="patcher_2" outlet="outlet_4"/>
         <dest obj="exp_3" inlet="a"/>
      </net>
      <net>
         <source obj="ad_1" outlet="env"/>
         <dest obj="xfade_3" inlet="i1"/>
      </net>
      <net>
         <source obj="soft_2" outlet="out"/>
         <dest obj="vca_1" inlet="a"/>
      </net>
      <net>
         <source obj="soft_1" outlet="out"/>
         <dest obj="vca_6" inlet="a"/>
      </net>
      <net>
         <source obj="+c_1" outlet="out"/>
         <dest obj="xfade_3" inlet="i2"/>
      </net>
      <net>
         <source obj="xfade_3" outlet="o"/>
         <dest obj="patcher_2" inlet="factor"/>
      </net>
      <net>
         <source obj="lfodepth" outlet="out"/>
         <dest obj="xfade_3" inlet="c"/>
      </net>
      <net>
         <source obj="paraphonic_1" outlet="gate"/>
         <dest obj="adsr_1" inlet="gate"/>
      </net>
      <net>
         <source obj="paraphonic_1" outlet="notecount"/>
         <dest obj="notes" inlet="in"/>
      </net>
      <net>
         <source obj="xfade_1" outlet="o"/>
         <dest obj="left" inlet="outlet"/>
      </net>
      <net>
         <source obj="xfade_2" outlet="o"/>
         <dest obj="right" inlet="outlet"/>
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
      <Author>Peter Witzel</Author>
      <License>CC0</License>
   </settings>
   <notes><![CDATA[DEMO patch for the paraphonic midi input object.
Funny paraphonic fm synth voice.]]></notes>
   <windowPos>
      <x>1453</x>
      <y>23</y>
      <width>1440</width>
      <height>856</height>
   </windowPos>
</patch-1.0>