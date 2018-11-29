<patch-1.0 appVersion="1.0.11">
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="dial_1" x="140" y="0">
      <params>
         <frac32.u.map name="value" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="conv/to i" uuid="305966430ee86b5c3b8e18cde0c721657c558a87" name="to_1" x="210" y="0">
      <params/>
      <attribs/>
   </obj>
   <obj type="lfo/square" uuid="de6909eb64db13af5b43f979a4c130024b3a4793" name="square_1" x="266" y="0">
      <params>
         <frac32.s.map name="pitch" value="-18.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/button" uuid="ef3d13774349df85aa9bfecf30dbc91ab8488b3f" name="Load" x="448" y="0">
      <params>
         <bool32.mom name="b" value="0"/>
      </params>
      <attribs/>
   </obj>
   <patcher type="patch/patcher" uuid="cfc7b607-f2d0-4256-b88e-3f1e36cf0207" name="Step_1" x="1106" y="14">
      <params/>
      <attribs/>
      <subpatch appVersion="1.0.11">
         <obj type="table/alloc 8b sdram" uuid="7af0c2671e20d9c493553cf8b038ebbec89efb7" name="table" x="0" y="0">
            <params/>
            <attribs>
               <combo attributeName="size" selection="64"/>
               <text attributeName="init">
                  <sText><![CDATA[]]></sText>
               </text>
            </attribs>
         </obj>
         <obj type="string/c" uuid="4aa90a90c435a742ddfa152d232883fc5b2f1b3" name="c_1" x="196" y="0">
            <params/>
            <attribs>
               <table attributeName="str" table="pattern1.tab"/>
            </attribs>
         </obj>
         <obj type="string/c" uuid="4aa90a90c435a742ddfa152d232883fc5b2f1b3" name="c_3" x="350" y="0">
            <params/>
            <attribs>
               <table attributeName="str" table="pattern3.tab"/>
            </attribs>
         </obj>
         <obj type="mux/mux 4" uuid="4629dfad262ff68419d12ab3fcd96e5e2e9f4190" name="mux_1" x="770" y="0">
            <params/>
            <attribs/>
         </obj>
         <obj type="table/load" uuid="600cc22c6734d23a82620da1a14e78782a7e168e" name="load_1" x="840" y="0">
            <params/>
            <attribs>
               <objref attributeName="table" obj="table"/>
            </attribs>
         </obj>
         <obj type="table/save" uuid="3e4108b607d56d9e1cd10abb898b58eea11e53b2" name="save_1" x="966" y="0">
            <params/>
            <attribs>
               <objref attributeName="table" obj="table"/>
            </attribs>
         </obj>
         <obj type="patch/inlet i" uuid="f11927f00c59219df0c50f73056aa19f125540b7" name="Pattern Select" x="0" y="70">
            <params/>
            <attribs/>
         </obj>
         <obj type="string/c" uuid="4aa90a90c435a742ddfa152d232883fc5b2f1b3" name="c_2" x="196" y="70">
            <params/>
            <attribs>
               <table attributeName="str" table="pattern2.tab"/>
            </attribs>
         </obj>
         <obj type="string/c" uuid="4aa90a90c435a742ddfa152d232883fc5b2f1b3" name="c_4" x="350" y="70">
            <params/>
            <attribs>
               <table attributeName="str" table="pattern4.tab"/>
            </attribs>
         </obj>
         <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="Patern Load" x="0" y="112">
            <params/>
            <attribs/>
         </obj>
         <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="Pattern Save" x="0" y="154">
            <params/>
            <attribs/>
         </obj>
         <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="Clock In" x="0" y="210">
            <params/>
            <attribs/>
         </obj>
         <obj type="phi/logic/counter minmax" uuid="860828ec-f822-4aff-b73d-c5b505f3dd6e" name="counter_1" x="252" y="224">
            <params/>
            <attribs/>
         </obj>
         <obj type="table/read" uuid="65eb8d0f6a3344638de94c9882999b9af15510d0" name="read_1" x="588" y="224">
            <params/>
            <attribs>
               <objref attributeName="table" obj="table"/>
            </attribs>
         </obj>
         <obj type="conv/to b" uuid="91ff898f0f2bf6e4dc0165515e0be7c2281da18b" name="to_2" x="714" y="224">
            <params/>
            <attribs/>
         </obj>
         <obj type="logic/and 2" uuid="c67031682f552aa0a80b23377495c51ea28a8c9c" name="and_1" x="784" y="224">
            <params/>
            <attribs/>
         </obj>
         <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="Trig 1" x="896" y="224">
            <params/>
            <attribs/>
         </obj>
         <obj type="patch/inlet i" uuid="f11927f00c59219df0c50f73056aa19f125540b7" name="Length" x="0" y="280">
            <params/>
            <attribs/>
         </obj>
         <obj type="math/+" uuid="b94a9b8e9adcb7d18868c0ee808a9b211b65578d" name="+_1" x="518" y="294">
            <params/>
            <attribs/>
         </obj>
         <obj type="table/read" uuid="65eb8d0f6a3344638de94c9882999b9af15510d0" name="read_3" x="588" y="294">
            <params/>
            <attribs>
               <objref attributeName="table" obj="table"/>
            </attribs>
         </obj>
         <obj type="conv/to b" uuid="91ff898f0f2bf6e4dc0165515e0be7c2281da18b" name="to_4" x="714" y="294">
            <params/>
            <attribs/>
         </obj>
         <obj type="logic/and 2" uuid="c67031682f552aa0a80b23377495c51ea28a8c9c" name="and_2" x="784" y="294">
            <params/>
            <attribs/>
         </obj>
         <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="Trig 2" x="896" y="294">
            <params/>
            <attribs/>
         </obj>
         <obj type="const/i" uuid="e202f44b2df17ae0b3e663b98ea6b14c8ff00408" name="i_1" x="434" y="308">
            <params/>
            <attribs>
               <spinner attributeName="value" value="16"/>
            </attribs>
         </obj>
         <obj type="patch/inlet i" uuid="f11927f00c59219df0c50f73056aa19f125540b7" name="Start" x="0" y="336">
            <params/>
            <attribs/>
         </obj>
         <obj type="const/i" uuid="e202f44b2df17ae0b3e663b98ea6b14c8ff00408" name="i_4" x="434" y="364">
            <params/>
            <attribs>
               <spinner attributeName="value" value="32"/>
            </attribs>
         </obj>
         <obj type="math/+" uuid="b94a9b8e9adcb7d18868c0ee808a9b211b65578d" name="+_2" x="518" y="364">
            <params/>
            <attribs/>
         </obj>
         <obj type="table/read" uuid="65eb8d0f6a3344638de94c9882999b9af15510d0" name="read_4" x="588" y="364">
            <params/>
            <attribs>
               <objref attributeName="table" obj="table"/>
            </attribs>
         </obj>
         <obj type="conv/to b" uuid="91ff898f0f2bf6e4dc0165515e0be7c2281da18b" name="to_5" x="714" y="364">
            <params/>
            <attribs/>
         </obj>
         <obj type="logic/and 2" uuid="c67031682f552aa0a80b23377495c51ea28a8c9c" name="and_3" x="784" y="364">
            <params/>
            <attribs/>
         </obj>
         <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="Trig 3" x="896" y="364">
            <params/>
            <attribs/>
         </obj>
         <obj type="patch/inlet i" uuid="f11927f00c59219df0c50f73056aa19f125540b7" name="Voice" x="0" y="406">
            <params/>
            <attribs/>
         </obj>
         <obj type="const/i" uuid="e202f44b2df17ae0b3e663b98ea6b14c8ff00408" name="i_8" x="434" y="434">
            <params/>
            <attribs>
               <spinner attributeName="value" value="48"/>
            </attribs>
         </obj>
         <obj type="math/+" uuid="b94a9b8e9adcb7d18868c0ee808a9b211b65578d" name="+_3" x="518" y="434">
            <params/>
            <attribs/>
         </obj>
         <obj type="table/read" uuid="65eb8d0f6a3344638de94c9882999b9af15510d0" name="read_5" x="588" y="434">
            <params/>
            <attribs>
               <objref attributeName="table" obj="table"/>
            </attribs>
         </obj>
         <obj type="conv/to b" uuid="91ff898f0f2bf6e4dc0165515e0be7c2281da18b" name="to_6" x="714" y="434">
            <params/>
            <attribs/>
         </obj>
         <obj type="logic/and 2" uuid="c67031682f552aa0a80b23377495c51ea28a8c9c" name="and_4" x="784" y="434">
            <params/>
            <attribs/>
         </obj>
         <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="Trig 4" x="896" y="434">
            <params/>
            <attribs/>
         </obj>
         <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="Step 1" x="0" y="476">
            <params/>
            <attribs/>
         </obj>
         <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="Step 2" x="0" y="518">
            <params/>
            <attribs/>
         </obj>
         <obj type="conv/to f" uuid="bdd08445689602ce174689ccb6be085f627d9892" name="to_8" x="294" y="518">
            <params/>
            <attribs/>
         </obj>
         <obj type="const/i" uuid="e202f44b2df17ae0b3e663b98ea6b14c8ff00408" name="i_6" x="350" y="518">
            <params/>
            <attribs>
               <spinner attributeName="value" value="0"/>
            </attribs>
         </obj>
         <obj type="math/+" uuid="b94a9b8e9adcb7d18868c0ee808a9b211b65578d" name="+_4" x="448" y="518">
            <params/>
            <attribs/>
         </obj>
         <obj type="mux/mux 4" uuid="bd572dad58644793774a69385f376bda2e1fd9be" name="mux_2" x="518" y="518">
            <params/>
            <attribs/>
         </obj>
         <obj type="rbrt/seq/steptoggle" uuid="77bc2d57-b0c2-4ac4-b213-255e4693583c" name="steptoggle_7" x="588" y="518">
            <params/>
            <attribs>
               <objref attributeName="table" obj="table"/>
            </attribs>
         </obj>
         <obj type="table/read" uuid="65eb8d0f6a3344638de94c9882999b9af15510d0" name="read_2" x="714" y="518">
            <params/>
            <attribs>
               <objref attributeName="table" obj="table"/>
            </attribs>
         </obj>
         <obj type="conv/to b" uuid="91ff898f0f2bf6e4dc0165515e0be7c2281da18b" name="to_3" x="840" y="518">
            <params/>
            <attribs/>
         </obj>
         <obj type="conv/to f" uuid="bdd08445689602ce174689ccb6be085f627d9892" name="to_29" x="1064" y="518">
            <params/>
            <attribs/>
         </obj>
         <obj type="const/i" uuid="e202f44b2df17ae0b3e663b98ea6b14c8ff00408" name="i_17" x="1120" y="518">
            <params/>
            <attribs>
               <spinner attributeName="value" value="8"/>
            </attribs>
         </obj>
         <obj type="math/+" uuid="b94a9b8e9adcb7d18868c0ee808a9b211b65578d" name="+_31" x="1218" y="518">
            <params/>
            <attribs/>
         </obj>
         <obj type="mux/mux 4" uuid="bd572dad58644793774a69385f376bda2e1fd9be" name="mux_10" x="1288" y="518">
            <params/>
            <attribs/>
         </obj>
         <obj type="rbrt/seq/steptoggle" uuid="77bc2d57-b0c2-4ac4-b213-255e4693583c" name="steptoggle_15" x="1358" y="518">
            <params/>
            <attribs>
               <objref attributeName="table" obj="table"/>
            </attribs>
         </obj>
         <obj type="table/read" uuid="65eb8d0f6a3344638de94c9882999b9af15510d0" name="read_17" x="1484" y="518">
            <params/>
            <attribs>
               <objref attributeName="table" obj="table"/>
            </attribs>
         </obj>
         <obj type="conv/to b" uuid="91ff898f0f2bf6e4dc0165515e0be7c2281da18b" name="to_30" x="1610" y="518">
            <params/>
            <attribs/>
         </obj>
         <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="State 1" x="1750" y="518">
            <params/>
            <attribs/>
         </obj>
         <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="Step 3" x="0" y="560">
            <params/>
            <attribs/>
         </obj>
         <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="State 2" x="1750" y="560">
            <params/>
            <attribs/>
         </obj>
         <obj type="math/+" uuid="b94a9b8e9adcb7d18868c0ee808a9b211b65578d" name="+_5" x="350" y="588">
            <params/>
            <attribs/>
         </obj>
         <obj type="math/+" uuid="b94a9b8e9adcb7d18868c0ee808a9b211b65578d" name="+_6" x="448" y="588">
            <params/>
            <attribs/>
         </obj>
         <obj type="math/+" uuid="b94a9b8e9adcb7d18868c0ee808a9b211b65578d" name="+_32" x="1120" y="588">
            <params/>
            <attribs/>
         </obj>
         <obj type="math/+" uuid="b94a9b8e9adcb7d18868c0ee808a9b211b65578d" name="+_33" x="1218" y="588">
            <params/>
            <attribs/>
         </obj>
         <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="Step 4" x="0" y="602">
            <params/>
            <attribs/>
         </obj>
         <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="State 3" x="1750" y="602">
            <params/>
            <attribs/>
         </obj>
         <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="Step 5" x="0" y="644">
            <params/>
            <attribs/>
         </obj>
         <obj type="conv/to f" uuid="bdd08445689602ce174689ccb6be085f627d9892" name="to_9" x="294" y="644">
            <params/>
            <attribs/>
         </obj>
         <obj type="const/i" uuid="e202f44b2df17ae0b3e663b98ea6b14c8ff00408" name="i_7" x="350" y="644">
            <params/>
            <attribs>
               <spinner attributeName="value" value="1"/>
            </attribs>
         </obj>
         <obj type="math/+" uuid="b94a9b8e9adcb7d18868c0ee808a9b211b65578d" name="+_7" x="448" y="644">
            <params/>
            <attribs/>
         </obj>
         <obj type="mux/mux 4" uuid="bd572dad58644793774a69385f376bda2e1fd9be" name="mux_3" x="518" y="644">
            <params/>
            <attribs/>
         </obj>
         <obj type="rbrt/seq/steptoggle" uuid="77bc2d57-b0c2-4ac4-b213-255e4693583c" name="steptoggle_8" x="588" y="644">
            <params/>
            <attribs>
               <objref attributeName="table" obj="table"/>
            </attribs>
         </obj>
         <obj type="table/read" uuid="65eb8d0f6a3344638de94c9882999b9af15510d0" name="read_6" x="714" y="644">
            <params/>
            <attribs>
               <objref attributeName="table" obj="table"/>
            </attribs>
         </obj>
         <obj type="conv/to b" uuid="91ff898f0f2bf6e4dc0165515e0be7c2281da18b" name="to_7" x="840" y="644">
            <params/>
            <attribs/>
         </obj>
         <obj type="conv/to f" uuid="bdd08445689602ce174689ccb6be085f627d9892" name="to_31" x="1064" y="644">
            <params/>
            <attribs/>
         </obj>
         <obj type="const/i" uuid="e202f44b2df17ae0b3e663b98ea6b14c8ff00408" name="i_18" x="1120" y="644">
            <params/>
            <attribs>
               <spinner attributeName="value" value="9"/>
            </attribs>
         </obj>
         <obj type="math/+" uuid="b94a9b8e9adcb7d18868c0ee808a9b211b65578d" name="+_34" x="1218" y="644">
            <params/>
            <attribs/>
         </obj>
         <obj type="mux/mux 4" uuid="bd572dad58644793774a69385f376bda2e1fd9be" name="mux_11" x="1288" y="644">
            <params/>
            <attribs/>
         </obj>
         <obj type="rbrt/seq/steptoggle" uuid="77bc2d57-b0c2-4ac4-b213-255e4693583c" name="steptoggle_16" x="1358" y="644">
            <params/>
            <attribs>
               <objref attributeName="table" obj="table"/>
            </attribs>
         </obj>
         <obj type="table/read" uuid="65eb8d0f6a3344638de94c9882999b9af15510d0" name="read_18" x="1484" y="644">
            <params/>
            <attribs>
               <objref attributeName="table" obj="table"/>
            </attribs>
         </obj>
         <obj type="conv/to b" uuid="91ff898f0f2bf6e4dc0165515e0be7c2281da18b" name="to_32" x="1610" y="644">
            <params/>
            <attribs/>
         </obj>
         <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="State 4" x="1750" y="644">
            <params/>
            <attribs/>
         </obj>
         <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="Step 6" x="0" y="686">
            <params/>
            <attribs/>
         </obj>
         <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="State 5" x="1750" y="686">
            <params/>
            <attribs/>
         </obj>
         <obj type="math/+" uuid="b94a9b8e9adcb7d18868c0ee808a9b211b65578d" name="+_8" x="350" y="714">
            <params/>
            <attribs/>
         </obj>
         <obj type="math/+" uuid="b94a9b8e9adcb7d18868c0ee808a9b211b65578d" name="+_9" x="448" y="714">
            <params/>
            <attribs/>
         </obj>
         <obj type="math/+" uuid="b94a9b8e9adcb7d18868c0ee808a9b211b65578d" name="+_35" x="1120" y="714">
            <params/>
            <attribs/>
         </obj>
         <obj type="math/+" uuid="b94a9b8e9adcb7d18868c0ee808a9b211b65578d" name="+_36" x="1218" y="714">
            <params/>
            <attribs/>
         </obj>
         <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="Step 7" x="0" y="728">
            <params/>
            <attribs/>
         </obj>
         <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="State 6" x="1750" y="728">
            <params/>
            <attribs/>
         </obj>
         <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="Step 8" x="0" y="770">
            <params/>
            <attribs/>
         </obj>
         <obj type="conv/to f" uuid="bdd08445689602ce174689ccb6be085f627d9892" name="to_10" x="294" y="770">
            <params/>
            <attribs/>
         </obj>
         <obj type="const/i" uuid="e202f44b2df17ae0b3e663b98ea6b14c8ff00408" name="i_10" x="350" y="770">
            <params/>
            <attribs>
               <spinner attributeName="value" value="2"/>
            </attribs>
         </obj>
         <obj type="math/+" uuid="b94a9b8e9adcb7d18868c0ee808a9b211b65578d" name="+_10" x="448" y="770">
            <params/>
            <attribs/>
         </obj>
         <obj type="mux/mux 4" uuid="bd572dad58644793774a69385f376bda2e1fd9be" name="mux_4" x="518" y="770">
            <params/>
            <attribs/>
         </obj>
         <obj type="rbrt/seq/steptoggle" uuid="77bc2d57-b0c2-4ac4-b213-255e4693583c" name="steptoggle_9" x="588" y="770">
            <params/>
            <attribs>
               <objref attributeName="table" obj="table"/>
            </attribs>
         </obj>
         <obj type="table/read" uuid="65eb8d0f6a3344638de94c9882999b9af15510d0" name="read_7" x="714" y="770">
            <params/>
            <attribs>
               <objref attributeName="table" obj="table"/>
            </attribs>
         </obj>
         <obj type="conv/to b" uuid="91ff898f0f2bf6e4dc0165515e0be7c2281da18b" name="to_11" x="840" y="770">
            <params/>
            <attribs/>
         </obj>
         <obj type="conv/to f" uuid="bdd08445689602ce174689ccb6be085f627d9892" name="to_33" x="1064" y="770">
            <params/>
            <attribs/>
         </obj>
         <obj type="const/i" uuid="e202f44b2df17ae0b3e663b98ea6b14c8ff00408" name="i_19" x="1120" y="770">
            <params/>
            <attribs>
               <spinner attributeName="value" value="10"/>
            </attribs>
         </obj>
         <obj type="math/+" uuid="b94a9b8e9adcb7d18868c0ee808a9b211b65578d" name="+_37" x="1218" y="770">
            <params/>
            <attribs/>
         </obj>
         <obj type="mux/mux 4" uuid="bd572dad58644793774a69385f376bda2e1fd9be" name="mux_12" x="1288" y="770">
            <params/>
            <attribs/>
         </obj>
         <obj type="rbrt/seq/steptoggle" uuid="77bc2d57-b0c2-4ac4-b213-255e4693583c" name="steptoggle_17" x="1358" y="770">
            <params/>
            <attribs>
               <objref attributeName="table" obj="table"/>
            </attribs>
         </obj>
         <obj type="table/read" uuid="65eb8d0f6a3344638de94c9882999b9af15510d0" name="read_19" x="1484" y="770">
            <params/>
            <attribs>
               <objref attributeName="table" obj="table"/>
            </attribs>
         </obj>
         <obj type="conv/to b" uuid="91ff898f0f2bf6e4dc0165515e0be7c2281da18b" name="to_34" x="1610" y="770">
            <params/>
            <attribs/>
         </obj>
         <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="State 7" x="1750" y="770">
            <params/>
            <attribs/>
         </obj>
         <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="Step 9" x="0" y="812">
            <params/>
            <attribs/>
         </obj>
         <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="State 8" x="1750" y="812">
            <params/>
            <attribs/>
         </obj>
         <obj type="math/+" uuid="b94a9b8e9adcb7d18868c0ee808a9b211b65578d" name="+_11" x="350" y="840">
            <params/>
            <attribs/>
         </obj>
         <obj type="math/+" uuid="b94a9b8e9adcb7d18868c0ee808a9b211b65578d" name="+_12" x="448" y="840">
            <params/>
            <attribs/>
         </obj>
         <obj type="math/+" uuid="b94a9b8e9adcb7d18868c0ee808a9b211b65578d" name="+_38" x="1120" y="840">
            <params/>
            <attribs/>
         </obj>
         <obj type="math/+" uuid="b94a9b8e9adcb7d18868c0ee808a9b211b65578d" name="+_39" x="1218" y="840">
            <params/>
            <attribs/>
         </obj>
         <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="Step 10" x="0" y="854">
            <params/>
            <attribs/>
         </obj>
         <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="State 9" x="1750" y="854">
            <params/>
            <attribs/>
         </obj>
         <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="Step 11" x="0" y="896">
            <params/>
            <attribs/>
         </obj>
         <obj type="conv/to f" uuid="bdd08445689602ce174689ccb6be085f627d9892" name="to_12" x="294" y="896">
            <params/>
            <attribs/>
         </obj>
         <obj type="const/i" uuid="e202f44b2df17ae0b3e663b98ea6b14c8ff00408" name="i_11" x="350" y="896">
            <params/>
            <attribs>
               <spinner attributeName="value" value="3"/>
            </attribs>
         </obj>
         <obj type="math/+" uuid="b94a9b8e9adcb7d18868c0ee808a9b211b65578d" name="+_13" x="448" y="896">
            <params/>
            <attribs/>
         </obj>
         <obj type="mux/mux 4" uuid="bd572dad58644793774a69385f376bda2e1fd9be" name="mux_5" x="518" y="896">
            <params/>
            <attribs/>
         </obj>
         <obj type="rbrt/seq/steptoggle" uuid="77bc2d57-b0c2-4ac4-b213-255e4693583c" name="steptoggle_10" x="588" y="896">
            <params/>
            <attribs>
               <objref attributeName="table" obj="table"/>
            </attribs>
         </obj>
         <obj type="table/read" uuid="65eb8d0f6a3344638de94c9882999b9af15510d0" name="read_8" x="714" y="896">
            <params/>
            <attribs>
               <objref attributeName="table" obj="table"/>
            </attribs>
         </obj>
         <obj type="conv/to b" uuid="91ff898f0f2bf6e4dc0165515e0be7c2281da18b" name="to_13" x="840" y="896">
            <params/>
            <attribs/>
         </obj>
         <obj type="conv/to f" uuid="bdd08445689602ce174689ccb6be085f627d9892" name="to_35" x="1064" y="896">
            <params/>
            <attribs/>
         </obj>
         <obj type="const/i" uuid="e202f44b2df17ae0b3e663b98ea6b14c8ff00408" name="i_20" x="1120" y="896">
            <params/>
            <attribs>
               <spinner attributeName="value" value="11"/>
            </attribs>
         </obj>
         <obj type="math/+" uuid="b94a9b8e9adcb7d18868c0ee808a9b211b65578d" name="+_40" x="1218" y="896">
            <params/>
            <attribs/>
         </obj>
         <obj type="mux/mux 4" uuid="bd572dad58644793774a69385f376bda2e1fd9be" name="mux_13" x="1288" y="896">
            <params/>
            <attribs/>
         </obj>
         <obj type="rbrt/seq/steptoggle" uuid="77bc2d57-b0c2-4ac4-b213-255e4693583c" name="steptoggle_18" x="1358" y="896">
            <params/>
            <attribs>
               <objref attributeName="table" obj="table"/>
            </attribs>
         </obj>
         <obj type="table/read" uuid="65eb8d0f6a3344638de94c9882999b9af15510d0" name="read_20" x="1484" y="896">
            <params/>
            <attribs>
               <objref attributeName="table" obj="table"/>
            </attribs>
         </obj>
         <obj type="conv/to b" uuid="91ff898f0f2bf6e4dc0165515e0be7c2281da18b" name="to_36" x="1610" y="896">
            <params/>
            <attribs/>
         </obj>
         <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="State 10" x="1750" y="896">
            <params/>
            <attribs/>
         </obj>
         <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="Step 12" x="0" y="938">
            <params/>
            <attribs/>
         </obj>
         <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="State 11" x="1750" y="938">
            <params/>
            <attribs/>
         </obj>
         <obj type="math/+" uuid="b94a9b8e9adcb7d18868c0ee808a9b211b65578d" name="+_14" x="350" y="966">
            <params/>
            <attribs/>
         </obj>
         <obj type="math/+" uuid="b94a9b8e9adcb7d18868c0ee808a9b211b65578d" name="+_15" x="448" y="966">
            <params/>
            <attribs/>
         </obj>
         <obj type="math/+" uuid="b94a9b8e9adcb7d18868c0ee808a9b211b65578d" name="+_41" x="1120" y="966">
            <params/>
            <attribs/>
         </obj>
         <obj type="math/+" uuid="b94a9b8e9adcb7d18868c0ee808a9b211b65578d" name="+_42" x="1218" y="966">
            <params/>
            <attribs/>
         </obj>
         <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="Step 13" x="0" y="980">
            <params/>
            <attribs/>
         </obj>
         <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="State 12" x="1750" y="980">
            <params/>
            <attribs/>
         </obj>
         <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="Step 14" x="0" y="1022">
            <params/>
            <attribs/>
         </obj>
         <obj type="conv/to f" uuid="bdd08445689602ce174689ccb6be085f627d9892" name="to_15" x="294" y="1022">
            <params/>
            <attribs/>
         </obj>
         <obj type="const/i" uuid="e202f44b2df17ae0b3e663b98ea6b14c8ff00408" name="i_9" x="350" y="1022">
            <params/>
            <attribs>
               <spinner attributeName="value" value="4"/>
            </attribs>
         </obj>
         <obj type="math/+" uuid="b94a9b8e9adcb7d18868c0ee808a9b211b65578d" name="+_16" x="448" y="1022">
            <params/>
            <attribs/>
         </obj>
         <obj type="mux/mux 4" uuid="bd572dad58644793774a69385f376bda2e1fd9be" name="mux_6" x="518" y="1022">
            <params/>
            <attribs/>
         </obj>
         <obj type="rbrt/seq/steptoggle" uuid="77bc2d57-b0c2-4ac4-b213-255e4693583c" name="steptoggle_11" x="588" y="1022">
            <params/>
            <attribs>
               <objref attributeName="table" obj="table"/>
            </attribs>
         </obj>
         <obj type="table/read" uuid="65eb8d0f6a3344638de94c9882999b9af15510d0" name="read_9" x="714" y="1022">
            <params/>
            <attribs>
               <objref attributeName="table" obj="table"/>
            </attribs>
         </obj>
         <obj type="conv/to b" uuid="91ff898f0f2bf6e4dc0165515e0be7c2281da18b" name="to_16" x="840" y="1022">
            <params/>
            <attribs/>
         </obj>
         <obj type="conv/to f" uuid="bdd08445689602ce174689ccb6be085f627d9892" name="to_37" x="1064" y="1022">
            <params/>
            <attribs/>
         </obj>
         <obj type="const/i" uuid="e202f44b2df17ae0b3e663b98ea6b14c8ff00408" name="i_21" x="1120" y="1022">
            <params/>
            <attribs>
               <spinner attributeName="value" value="12"/>
            </attribs>
         </obj>
         <obj type="math/+" uuid="b94a9b8e9adcb7d18868c0ee808a9b211b65578d" name="+_43" x="1218" y="1022">
            <params/>
            <attribs/>
         </obj>
         <obj type="mux/mux 4" uuid="bd572dad58644793774a69385f376bda2e1fd9be" name="mux_14" x="1288" y="1022">
            <params/>
            <attribs/>
         </obj>
         <obj type="rbrt/seq/steptoggle" uuid="77bc2d57-b0c2-4ac4-b213-255e4693583c" name="steptoggle_19" x="1358" y="1022">
            <params/>
            <attribs>
               <objref attributeName="table" obj="table"/>
            </attribs>
         </obj>
         <obj type="table/read" uuid="65eb8d0f6a3344638de94c9882999b9af15510d0" name="read_21" x="1484" y="1022">
            <params/>
            <attribs>
               <objref attributeName="table" obj="table"/>
            </attribs>
         </obj>
         <obj type="conv/to b" uuid="91ff898f0f2bf6e4dc0165515e0be7c2281da18b" name="to_38" x="1610" y="1022">
            <params/>
            <attribs/>
         </obj>
         <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="State 13" x="1750" y="1022">
            <params/>
            <attribs/>
         </obj>
         <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="Step 15" x="0" y="1064">
            <params/>
            <attribs/>
         </obj>
         <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="State 14" x="1750" y="1064">
            <params/>
            <attribs/>
         </obj>
         <obj type="math/+" uuid="b94a9b8e9adcb7d18868c0ee808a9b211b65578d" name="+_18" x="448" y="1078">
            <params/>
            <attribs/>
         </obj>
         <obj type="math/+" uuid="b94a9b8e9adcb7d18868c0ee808a9b211b65578d" name="+_44" x="1218" y="1078">
            <params/>
            <attribs/>
         </obj>
         <obj type="math/+" uuid="b94a9b8e9adcb7d18868c0ee808a9b211b65578d" name="+_17" x="350" y="1092">
            <params/>
            <attribs/>
         </obj>
         <obj type="math/+" uuid="b94a9b8e9adcb7d18868c0ee808a9b211b65578d" name="+_45" x="1120" y="1092">
            <params/>
            <attribs/>
         </obj>
         <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="Step 16" x="0" y="1106">
            <params/>
            <attribs/>
         </obj>
         <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="State 15" x="1750" y="1106">
            <params/>
            <attribs/>
         </obj>
         <obj type="conv/to f" uuid="bdd08445689602ce174689ccb6be085f627d9892" name="to_17" x="294" y="1148">
            <params/>
            <attribs/>
         </obj>
         <obj type="const/i" uuid="e202f44b2df17ae0b3e663b98ea6b14c8ff00408" name="i_12" x="350" y="1148">
            <params/>
            <attribs>
               <spinner attributeName="value" value="5"/>
            </attribs>
         </obj>
         <obj type="math/+" uuid="b94a9b8e9adcb7d18868c0ee808a9b211b65578d" name="+_19" x="448" y="1148">
            <params/>
            <attribs/>
         </obj>
         <obj type="mux/mux 4" uuid="bd572dad58644793774a69385f376bda2e1fd9be" name="mux_7" x="518" y="1148">
            <params/>
            <attribs/>
         </obj>
         <obj type="rbrt/seq/steptoggle" uuid="77bc2d57-b0c2-4ac4-b213-255e4693583c" name="steptoggle_12" x="588" y="1148">
            <params/>
            <attribs>
               <objref attributeName="table" obj="table"/>
            </attribs>
         </obj>
         <obj type="table/read" uuid="65eb8d0f6a3344638de94c9882999b9af15510d0" name="read_10" x="714" y="1148">
            <params/>
            <attribs>
               <objref attributeName="table" obj="table"/>
            </attribs>
         </obj>
         <obj type="conv/to b" uuid="91ff898f0f2bf6e4dc0165515e0be7c2281da18b" name="to_18" x="840" y="1148">
            <params/>
            <attribs/>
         </obj>
         <obj type="conv/to f" uuid="bdd08445689602ce174689ccb6be085f627d9892" name="to_39" x="1064" y="1148">
            <params/>
            <attribs/>
         </obj>
         <obj type="const/i" uuid="e202f44b2df17ae0b3e663b98ea6b14c8ff00408" name="i_22" x="1120" y="1148">
            <params/>
            <attribs>
               <spinner attributeName="value" value="13"/>
            </attribs>
         </obj>
         <obj type="math/+" uuid="b94a9b8e9adcb7d18868c0ee808a9b211b65578d" name="+_46" x="1218" y="1148">
            <params/>
            <attribs/>
         </obj>
         <obj type="mux/mux 4" uuid="bd572dad58644793774a69385f376bda2e1fd9be" name="mux_15" x="1288" y="1148">
            <params/>
            <attribs/>
         </obj>
         <obj type="rbrt/seq/steptoggle" uuid="77bc2d57-b0c2-4ac4-b213-255e4693583c" name="steptoggle_20" x="1358" y="1148">
            <params/>
            <attribs>
               <objref attributeName="table" obj="table"/>
            </attribs>
         </obj>
         <obj type="table/read" uuid="65eb8d0f6a3344638de94c9882999b9af15510d0" name="read_22" x="1484" y="1148">
            <params/>
            <attribs>
               <objref attributeName="table" obj="table"/>
            </attribs>
         </obj>
         <obj type="conv/to b" uuid="91ff898f0f2bf6e4dc0165515e0be7c2281da18b" name="to_40" x="1610" y="1148">
            <params/>
            <attribs/>
         </obj>
         <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="State 16" x="1750" y="1148">
            <params/>
            <attribs/>
         </obj>
         <obj type="math/+" uuid="b94a9b8e9adcb7d18868c0ee808a9b211b65578d" name="+_20" x="350" y="1218">
            <params/>
            <attribs/>
         </obj>
         <obj type="math/+" uuid="b94a9b8e9adcb7d18868c0ee808a9b211b65578d" name="+_21" x="448" y="1218">
            <params/>
            <attribs/>
         </obj>
         <obj type="math/+" uuid="b94a9b8e9adcb7d18868c0ee808a9b211b65578d" name="+_47" x="1120" y="1218">
            <params/>
            <attribs/>
         </obj>
         <obj type="math/+" uuid="b94a9b8e9adcb7d18868c0ee808a9b211b65578d" name="+_48" x="1218" y="1218">
            <params/>
            <attribs/>
         </obj>
         <obj type="conv/to f" uuid="bdd08445689602ce174689ccb6be085f627d9892" name="to_19" x="294" y="1274">
            <params/>
            <attribs/>
         </obj>
         <obj type="const/i" uuid="e202f44b2df17ae0b3e663b98ea6b14c8ff00408" name="i_13" x="350" y="1274">
            <params/>
            <attribs>
               <spinner attributeName="value" value="6"/>
            </attribs>
         </obj>
         <obj type="math/+" uuid="b94a9b8e9adcb7d18868c0ee808a9b211b65578d" name="+_22" x="448" y="1274">
            <params/>
            <attribs/>
         </obj>
         <obj type="mux/mux 4" uuid="bd572dad58644793774a69385f376bda2e1fd9be" name="mux_8" x="518" y="1274">
            <params/>
            <attribs/>
         </obj>
         <obj type="rbrt/seq/steptoggle" uuid="77bc2d57-b0c2-4ac4-b213-255e4693583c" name="steptoggle_13" x="588" y="1274">
            <params/>
            <attribs>
               <objref attributeName="table" obj="table"/>
            </attribs>
         </obj>
         <obj type="table/read" uuid="65eb8d0f6a3344638de94c9882999b9af15510d0" name="read_11" x="714" y="1274">
            <params/>
            <attribs>
               <objref attributeName="table" obj="table"/>
            </attribs>
         </obj>
         <obj type="conv/to b" uuid="91ff898f0f2bf6e4dc0165515e0be7c2281da18b" name="to_20" x="840" y="1274">
            <params/>
            <attribs/>
         </obj>
         <obj type="conv/to f" uuid="bdd08445689602ce174689ccb6be085f627d9892" name="to_41" x="1064" y="1274">
            <params/>
            <attribs/>
         </obj>
         <obj type="const/i" uuid="e202f44b2df17ae0b3e663b98ea6b14c8ff00408" name="i_23" x="1120" y="1274">
            <params/>
            <attribs>
               <spinner attributeName="value" value="14"/>
            </attribs>
         </obj>
         <obj type="math/+" uuid="b94a9b8e9adcb7d18868c0ee808a9b211b65578d" name="+_49" x="1218" y="1274">
            <params/>
            <attribs/>
         </obj>
         <obj type="mux/mux 4" uuid="bd572dad58644793774a69385f376bda2e1fd9be" name="mux_16" x="1288" y="1274">
            <params/>
            <attribs/>
         </obj>
         <obj type="rbrt/seq/steptoggle" uuid="77bc2d57-b0c2-4ac4-b213-255e4693583c" name="steptoggle_21" x="1358" y="1274">
            <params/>
            <attribs>
               <objref attributeName="table" obj="table"/>
            </attribs>
         </obj>
         <obj type="table/read" uuid="65eb8d0f6a3344638de94c9882999b9af15510d0" name="read_23" x="1484" y="1274">
            <params/>
            <attribs>
               <objref attributeName="table" obj="table"/>
            </attribs>
         </obj>
         <obj type="conv/to b" uuid="91ff898f0f2bf6e4dc0165515e0be7c2281da18b" name="to_42" x="1610" y="1274">
            <params/>
            <attribs/>
         </obj>
         <obj type="math/+" uuid="b94a9b8e9adcb7d18868c0ee808a9b211b65578d" name="+_23" x="350" y="1344">
            <params/>
            <attribs/>
         </obj>
         <obj type="math/+" uuid="b94a9b8e9adcb7d18868c0ee808a9b211b65578d" name="+_24" x="448" y="1344">
            <params/>
            <attribs/>
         </obj>
         <obj type="math/+" uuid="b94a9b8e9adcb7d18868c0ee808a9b211b65578d" name="+_50" x="1120" y="1344">
            <params/>
            <attribs/>
         </obj>
         <obj type="math/+" uuid="b94a9b8e9adcb7d18868c0ee808a9b211b65578d" name="+_51" x="1218" y="1344">
            <params/>
            <attribs/>
         </obj>
         <obj type="conv/to f" uuid="bdd08445689602ce174689ccb6be085f627d9892" name="to_21" x="294" y="1400">
            <params/>
            <attribs/>
         </obj>
         <obj type="const/i" uuid="e202f44b2df17ae0b3e663b98ea6b14c8ff00408" name="i_14" x="350" y="1400">
            <params/>
            <attribs>
               <spinner attributeName="value" value="7"/>
            </attribs>
         </obj>
         <obj type="math/+" uuid="b94a9b8e9adcb7d18868c0ee808a9b211b65578d" name="+_25" x="448" y="1400">
            <params/>
            <attribs/>
         </obj>
         <obj type="mux/mux 4" uuid="bd572dad58644793774a69385f376bda2e1fd9be" name="mux_9" x="518" y="1400">
            <params/>
            <attribs/>
         </obj>
         <obj type="rbrt/seq/steptoggle" uuid="77bc2d57-b0c2-4ac4-b213-255e4693583c" name="steptoggle_14" x="588" y="1400">
            <params/>
            <attribs>
               <objref attributeName="table" obj="table"/>
            </attribs>
         </obj>
         <obj type="table/read" uuid="65eb8d0f6a3344638de94c9882999b9af15510d0" name="read_12" x="714" y="1400">
            <params/>
            <attribs>
               <objref attributeName="table" obj="table"/>
            </attribs>
         </obj>
         <obj type="conv/to b" uuid="91ff898f0f2bf6e4dc0165515e0be7c2281da18b" name="to_22" x="840" y="1400">
            <params/>
            <attribs/>
         </obj>
         <obj type="conv/to f" uuid="bdd08445689602ce174689ccb6be085f627d9892" name="to_43" x="1064" y="1400">
            <params/>
            <attribs/>
         </obj>
         <obj type="const/i" uuid="e202f44b2df17ae0b3e663b98ea6b14c8ff00408" name="i_24" x="1120" y="1400">
            <params/>
            <attribs>
               <spinner attributeName="value" value="15"/>
            </attribs>
         </obj>
         <obj type="math/+" uuid="b94a9b8e9adcb7d18868c0ee808a9b211b65578d" name="+_52" x="1218" y="1400">
            <params/>
            <attribs/>
         </obj>
         <obj type="mux/mux 4" uuid="bd572dad58644793774a69385f376bda2e1fd9be" name="mux_17" x="1288" y="1400">
            <params/>
            <attribs/>
         </obj>
         <obj type="rbrt/seq/steptoggle" uuid="77bc2d57-b0c2-4ac4-b213-255e4693583c" name="steptoggle_22" x="1358" y="1400">
            <params/>
            <attribs>
               <objref attributeName="table" obj="table"/>
            </attribs>
         </obj>
         <obj type="table/read" uuid="65eb8d0f6a3344638de94c9882999b9af15510d0" name="read_24" x="1484" y="1400">
            <params/>
            <attribs>
               <objref attributeName="table" obj="table"/>
            </attribs>
         </obj>
         <obj type="conv/to b" uuid="91ff898f0f2bf6e4dc0165515e0be7c2281da18b" name="to_44" x="1610" y="1400">
            <params/>
            <attribs/>
         </obj>
         <obj type="math/+" uuid="b94a9b8e9adcb7d18868c0ee808a9b211b65578d" name="+_26" x="350" y="1470">
            <params/>
            <attribs/>
         </obj>
         <obj type="math/+" uuid="b94a9b8e9adcb7d18868c0ee808a9b211b65578d" name="+_27" x="448" y="1470">
            <params/>
            <attribs/>
         </obj>
         <obj type="math/+" uuid="b94a9b8e9adcb7d18868c0ee808a9b211b65578d" name="+_53" x="1120" y="1470">
            <params/>
            <attribs/>
         </obj>
         <obj type="math/+" uuid="b94a9b8e9adcb7d18868c0ee808a9b211b65578d" name="+_54" x="1218" y="1470">
            <params/>
            <attribs/>
         </obj>
         <nets>
            <net>
               <source obj="read_1" outlet="o"/>
               <dest obj="to_2" inlet="i"/>
            </net>
            <net>
               <source obj="counter_1" outlet="o"/>
               <dest obj="read_1" inlet="a"/>
               <dest obj="+_1" inlet="in1"/>
               <dest obj="+_2" inlet="in1"/>
               <dest obj="+_3" inlet="in1"/>
            </net>
            <net>
               <source obj="to_2" outlet="o"/>
               <dest obj="and_1" inlet="i2"/>
            </net>
            <net>
               <source obj="Clock In" outlet="inlet"/>
               <dest obj="and_1" inlet="i1"/>
               <dest obj="and_2" inlet="i1"/>
               <dest obj="counter_1" inlet="trig"/>
               <dest obj="and_3" inlet="i1"/>
               <dest obj="and_4" inlet="i1"/>
            </net>
            <net>
               <source obj="Step 1" outlet="inlet"/>
               <dest obj="to_8" inlet="i"/>
               <dest obj="steptoggle_7" inlet="trig"/>
            </net>
            <net>
               <source obj="to_8" outlet="o"/>
               <dest obj="steptoggle_7" inlet="v"/>
            </net>
            <net>
               <source obj="c_1" outlet="out"/>
               <dest obj="mux_1" inlet="i0"/>
            </net>
            <net>
               <source obj="read_2" outlet="o"/>
               <dest obj="to_3" inlet="i"/>
            </net>
            <net>
               <source obj="c_2" outlet="out"/>
               <dest obj="mux_1" inlet="i1"/>
            </net>
            <net>
               <source obj="mux_1" outlet="o"/>
               <dest obj="load_1" inlet="filename"/>
               <dest obj="save_1" inlet="filename"/>
            </net>
            <net>
               <source obj="read_3" outlet="o"/>
               <dest obj="to_4" inlet="i"/>
            </net>
            <net>
               <source obj="to_4" outlet="o"/>
               <dest obj="and_2" inlet="i2"/>
            </net>
            <net>
               <source obj="+_1" outlet="out"/>
               <dest obj="read_3" inlet="a"/>
            </net>
            <net>
               <source obj="i_1" outlet="out"/>
               <dest obj="+_1" inlet="in2"/>
               <dest obj="+_4" inlet="in2"/>
               <dest obj="+_7" inlet="in2"/>
               <dest obj="+_10" inlet="in2"/>
               <dest obj="+_13" inlet="in2"/>
               <dest obj="+_16" inlet="in2"/>
               <dest obj="+_19" inlet="in2"/>
               <dest obj="+_22" inlet="in2"/>
               <dest obj="+_25" inlet="in2"/>
               <dest obj="+_31" inlet="in2"/>
               <dest obj="+_34" inlet="in2"/>
               <dest obj="+_37" inlet="in2"/>
               <dest obj="+_40" inlet="in2"/>
               <dest obj="+_43" inlet="in2"/>
               <dest obj="+_46" inlet="in2"/>
               <dest obj="+_49" inlet="in2"/>
               <dest obj="+_52" inlet="in2"/>
            </net>
            <net>
               <source obj="mux_2" outlet="o"/>
               <dest obj="steptoggle_7" inlet="a"/>
               <dest obj="read_2" inlet="a"/>
            </net>
            <net>
               <source obj="i_6" outlet="out"/>
               <dest obj="mux_2" inlet="i0"/>
               <dest obj="+_5" inlet="in1"/>
               <dest obj="+_6" inlet="in1"/>
               <dest obj="+_4" inlet="in1"/>
            </net>
            <net>
               <source obj="Voice" outlet="inlet"/>
               <dest obj="mux_2" inlet="s"/>
               <dest obj="mux_3" inlet="s"/>
               <dest obj="mux_4" inlet="s"/>
               <dest obj="mux_5" inlet="s"/>
               <dest obj="mux_6" inlet="s"/>
               <dest obj="mux_7" inlet="s"/>
               <dest obj="mux_8" inlet="s"/>
               <dest obj="mux_9" inlet="s"/>
               <dest obj="mux_10" inlet="s"/>
               <dest obj="mux_11" inlet="s"/>
               <dest obj="mux_12" inlet="s"/>
               <dest obj="mux_13" inlet="s"/>
               <dest obj="mux_14" inlet="s"/>
               <dest obj="mux_15" inlet="s"/>
               <dest obj="mux_16" inlet="s"/>
               <dest obj="mux_17" inlet="s"/>
            </net>
            <net>
               <source obj="read_4" outlet="o"/>
               <dest obj="to_5" inlet="i"/>
            </net>
            <net>
               <source obj="to_5" outlet="o"/>
               <dest obj="and_3" inlet="i2"/>
            </net>
            <net>
               <source obj="+_2" outlet="out"/>
               <dest obj="read_4" inlet="a"/>
            </net>
            <net>
               <source obj="i_4" outlet="out"/>
               <dest obj="+_2" inlet="in2"/>
               <dest obj="+_5" inlet="in2"/>
               <dest obj="+_8" inlet="in2"/>
               <dest obj="+_11" inlet="in2"/>
               <dest obj="+_14" inlet="in2"/>
               <dest obj="+_17" inlet="in2"/>
               <dest obj="+_20" inlet="in2"/>
               <dest obj="+_23" inlet="in2"/>
               <dest obj="+_26" inlet="in2"/>
               <dest obj="+_32" inlet="in2"/>
               <dest obj="+_35" inlet="in2"/>
               <dest obj="+_38" inlet="in2"/>
               <dest obj="+_41" inlet="in2"/>
               <dest obj="+_45" inlet="in2"/>
               <dest obj="+_47" inlet="in2"/>
               <dest obj="+_50" inlet="in2"/>
               <dest obj="+_53" inlet="in2"/>
            </net>
            <net>
               <source obj="read_5" outlet="o"/>
               <dest obj="to_6" inlet="i"/>
            </net>
            <net>
               <source obj="to_6" outlet="o"/>
               <dest obj="and_4" inlet="i2"/>
            </net>
            <net>
               <source obj="+_3" outlet="out"/>
               <dest obj="read_5" inlet="a"/>
            </net>
            <net>
               <source obj="i_8" outlet="out"/>
               <dest obj="+_3" inlet="in2"/>
               <dest obj="+_6" inlet="in2"/>
               <dest obj="+_9" inlet="in2"/>
               <dest obj="+_12" inlet="in2"/>
               <dest obj="+_15" inlet="in2"/>
               <dest obj="+_18" inlet="in2"/>
               <dest obj="+_21" inlet="in2"/>
               <dest obj="+_24" inlet="in2"/>
               <dest obj="+_27" inlet="in2"/>
               <dest obj="+_33" inlet="in2"/>
               <dest obj="+_36" inlet="in2"/>
               <dest obj="+_39" inlet="in2"/>
               <dest obj="+_42" inlet="in2"/>
               <dest obj="+_44" inlet="in2"/>
               <dest obj="+_48" inlet="in2"/>
               <dest obj="+_51" inlet="in2"/>
               <dest obj="+_54" inlet="in2"/>
            </net>
            <net>
               <source obj="+_4" outlet="out"/>
               <dest obj="mux_2" inlet="i1"/>
            </net>
            <net>
               <source obj="+_5" outlet="out"/>
               <dest obj="mux_2" inlet="i2"/>
            </net>
            <net>
               <source obj="+_6" outlet="out"/>
               <dest obj="mux_2" inlet="i3"/>
            </net>
            <net>
               <source obj="Step 2" outlet="inlet"/>
               <dest obj="to_9" inlet="i"/>
               <dest obj="steptoggle_8" inlet="trig"/>
            </net>
            <net>
               <source obj="to_9" outlet="o"/>
               <dest obj="steptoggle_8" inlet="v"/>
            </net>
            <net>
               <source obj="read_6" outlet="o"/>
               <dest obj="to_7" inlet="i"/>
            </net>
            <net>
               <source obj="mux_3" outlet="o"/>
               <dest obj="steptoggle_8" inlet="a"/>
               <dest obj="read_6" inlet="a"/>
            </net>
            <net>
               <source obj="i_7" outlet="out"/>
               <dest obj="mux_3" inlet="i0"/>
               <dest obj="+_8" inlet="in1"/>
               <dest obj="+_9" inlet="in1"/>
               <dest obj="+_7" inlet="in1"/>
            </net>
            <net>
               <source obj="+_7" outlet="out"/>
               <dest obj="mux_3" inlet="i1"/>
            </net>
            <net>
               <source obj="+_8" outlet="out"/>
               <dest obj="mux_3" inlet="i2"/>
            </net>
            <net>
               <source obj="+_9" outlet="out"/>
               <dest obj="mux_3" inlet="i3"/>
            </net>
            <net>
               <source obj="Step 3" outlet="inlet"/>
               <dest obj="to_10" inlet="i"/>
               <dest obj="steptoggle_9" inlet="trig"/>
            </net>
            <net>
               <source obj="to_10" outlet="o"/>
               <dest obj="steptoggle_9" inlet="v"/>
            </net>
            <net>
               <source obj="read_7" outlet="o"/>
               <dest obj="to_11" inlet="i"/>
            </net>
            <net>
               <source obj="mux_4" outlet="o"/>
               <dest obj="steptoggle_9" inlet="a"/>
               <dest obj="read_7" inlet="a"/>
            </net>
            <net>
               <source obj="i_10" outlet="out"/>
               <dest obj="mux_4" inlet="i0"/>
               <dest obj="+_11" inlet="in1"/>
               <dest obj="+_12" inlet="in1"/>
               <dest obj="+_10" inlet="in1"/>
            </net>
            <net>
               <source obj="+_10" outlet="out"/>
               <dest obj="mux_4" inlet="i1"/>
            </net>
            <net>
               <source obj="+_11" outlet="out"/>
               <dest obj="mux_4" inlet="i2"/>
            </net>
            <net>
               <source obj="+_12" outlet="out"/>
               <dest obj="mux_4" inlet="i3"/>
            </net>
            <net>
               <source obj="Step 4" outlet="inlet"/>
               <dest obj="to_12" inlet="i"/>
               <dest obj="steptoggle_10" inlet="trig"/>
            </net>
            <net>
               <source obj="to_12" outlet="o"/>
               <dest obj="steptoggle_10" inlet="v"/>
            </net>
            <net>
               <source obj="read_8" outlet="o"/>
               <dest obj="to_13" inlet="i"/>
            </net>
            <net>
               <source obj="mux_5" outlet="o"/>
               <dest obj="steptoggle_10" inlet="a"/>
               <dest obj="read_8" inlet="a"/>
            </net>
            <net>
               <source obj="i_11" outlet="out"/>
               <dest obj="mux_5" inlet="i0"/>
               <dest obj="+_14" inlet="in1"/>
               <dest obj="+_15" inlet="in1"/>
               <dest obj="+_13" inlet="in1"/>
            </net>
            <net>
               <source obj="+_13" outlet="out"/>
               <dest obj="mux_5" inlet="i1"/>
            </net>
            <net>
               <source obj="+_14" outlet="out"/>
               <dest obj="mux_5" inlet="i2"/>
            </net>
            <net>
               <source obj="+_15" outlet="out"/>
               <dest obj="mux_5" inlet="i3"/>
            </net>
            <net>
               <source obj="Step 5" outlet="inlet"/>
               <dest obj="to_15" inlet="i"/>
               <dest obj="steptoggle_11" inlet="trig"/>
            </net>
            <net>
               <source obj="to_15" outlet="o"/>
               <dest obj="steptoggle_11" inlet="v"/>
            </net>
            <net>
               <source obj="read_9" outlet="o"/>
               <dest obj="to_16" inlet="i"/>
            </net>
            <net>
               <source obj="mux_6" outlet="o"/>
               <dest obj="steptoggle_11" inlet="a"/>
               <dest obj="read_9" inlet="a"/>
            </net>
            <net>
               <source obj="i_9" outlet="out"/>
               <dest obj="mux_6" inlet="i0"/>
               <dest obj="+_17" inlet="in1"/>
               <dest obj="+_18" inlet="in1"/>
               <dest obj="+_16" inlet="in1"/>
            </net>
            <net>
               <source obj="+_16" outlet="out"/>
               <dest obj="mux_6" inlet="i1"/>
            </net>
            <net>
               <source obj="+_17" outlet="out"/>
               <dest obj="mux_6" inlet="i2"/>
            </net>
            <net>
               <source obj="+_18" outlet="out"/>
               <dest obj="mux_6" inlet="i3"/>
            </net>
            <net>
               <source obj="Step 6" outlet="inlet"/>
               <dest obj="to_17" inlet="i"/>
               <dest obj="steptoggle_12" inlet="trig"/>
            </net>
            <net>
               <source obj="to_17" outlet="o"/>
               <dest obj="steptoggle_12" inlet="v"/>
            </net>
            <net>
               <source obj="read_10" outlet="o"/>
               <dest obj="to_18" inlet="i"/>
            </net>
            <net>
               <source obj="mux_7" outlet="o"/>
               <dest obj="steptoggle_12" inlet="a"/>
               <dest obj="read_10" inlet="a"/>
            </net>
            <net>
               <source obj="i_12" outlet="out"/>
               <dest obj="mux_7" inlet="i0"/>
               <dest obj="+_20" inlet="in1"/>
               <dest obj="+_21" inlet="in1"/>
               <dest obj="+_19" inlet="in1"/>
            </net>
            <net>
               <source obj="+_19" outlet="out"/>
               <dest obj="mux_7" inlet="i1"/>
            </net>
            <net>
               <source obj="+_20" outlet="out"/>
               <dest obj="mux_7" inlet="i2"/>
            </net>
            <net>
               <source obj="+_21" outlet="out"/>
               <dest obj="mux_7" inlet="i3"/>
            </net>
            <net>
               <source obj="Step 7" outlet="inlet"/>
               <dest obj="to_19" inlet="i"/>
               <dest obj="steptoggle_13" inlet="trig"/>
            </net>
            <net>
               <source obj="to_19" outlet="o"/>
               <dest obj="steptoggle_13" inlet="v"/>
            </net>
            <net>
               <source obj="read_11" outlet="o"/>
               <dest obj="to_20" inlet="i"/>
            </net>
            <net>
               <source obj="mux_8" outlet="o"/>
               <dest obj="steptoggle_13" inlet="a"/>
               <dest obj="read_11" inlet="a"/>
            </net>
            <net>
               <source obj="i_13" outlet="out"/>
               <dest obj="mux_8" inlet="i0"/>
               <dest obj="+_23" inlet="in1"/>
               <dest obj="+_24" inlet="in1"/>
               <dest obj="+_22" inlet="in1"/>
            </net>
            <net>
               <source obj="+_22" outlet="out"/>
               <dest obj="mux_8" inlet="i1"/>
            </net>
            <net>
               <source obj="+_23" outlet="out"/>
               <dest obj="mux_8" inlet="i2"/>
            </net>
            <net>
               <source obj="+_24" outlet="out"/>
               <dest obj="mux_8" inlet="i3"/>
            </net>
            <net>
               <source obj="Step 8" outlet="inlet"/>
               <dest obj="to_21" inlet="i"/>
               <dest obj="steptoggle_14" inlet="trig"/>
            </net>
            <net>
               <source obj="to_21" outlet="o"/>
               <dest obj="steptoggle_14" inlet="v"/>
            </net>
            <net>
               <source obj="read_12" outlet="o"/>
               <dest obj="to_22" inlet="i"/>
            </net>
            <net>
               <source obj="mux_9" outlet="o"/>
               <dest obj="steptoggle_14" inlet="a"/>
               <dest obj="read_12" inlet="a"/>
            </net>
            <net>
               <source obj="i_14" outlet="out"/>
               <dest obj="mux_9" inlet="i0"/>
               <dest obj="+_26" inlet="in1"/>
               <dest obj="+_27" inlet="in1"/>
               <dest obj="+_25" inlet="in1"/>
            </net>
            <net>
               <source obj="+_25" outlet="out"/>
               <dest obj="mux_9" inlet="i1"/>
            </net>
            <net>
               <source obj="+_26" outlet="out"/>
               <dest obj="mux_9" inlet="i2"/>
            </net>
            <net>
               <source obj="+_27" outlet="out"/>
               <dest obj="mux_9" inlet="i3"/>
            </net>
            <net>
               <source obj="Step 9" outlet="inlet"/>
               <dest obj="to_29" inlet="i"/>
               <dest obj="steptoggle_15" inlet="trig"/>
            </net>
            <net>
               <source obj="to_29" outlet="o"/>
               <dest obj="steptoggle_15" inlet="v"/>
            </net>
            <net>
               <source obj="read_17" outlet="o"/>
               <dest obj="to_30" inlet="i"/>
            </net>
            <net>
               <source obj="mux_10" outlet="o"/>
               <dest obj="steptoggle_15" inlet="a"/>
               <dest obj="read_17" inlet="a"/>
            </net>
            <net>
               <source obj="i_17" outlet="out"/>
               <dest obj="mux_10" inlet="i0"/>
               <dest obj="+_32" inlet="in1"/>
               <dest obj="+_33" inlet="in1"/>
               <dest obj="+_31" inlet="in1"/>
            </net>
            <net>
               <source obj="+_31" outlet="out"/>
               <dest obj="mux_10" inlet="i1"/>
            </net>
            <net>
               <source obj="+_32" outlet="out"/>
               <dest obj="mux_10" inlet="i2"/>
            </net>
            <net>
               <source obj="+_33" outlet="out"/>
               <dest obj="mux_10" inlet="i3"/>
            </net>
            <net>
               <source obj="Step 10" outlet="inlet"/>
               <dest obj="to_31" inlet="i"/>
               <dest obj="steptoggle_16" inlet="trig"/>
            </net>
            <net>
               <source obj="to_31" outlet="o"/>
               <dest obj="steptoggle_16" inlet="v"/>
            </net>
            <net>
               <source obj="read_18" outlet="o"/>
               <dest obj="to_32" inlet="i"/>
            </net>
            <net>
               <source obj="mux_11" outlet="o"/>
               <dest obj="steptoggle_16" inlet="a"/>
               <dest obj="read_18" inlet="a"/>
            </net>
            <net>
               <source obj="i_18" outlet="out"/>
               <dest obj="mux_11" inlet="i0"/>
               <dest obj="+_35" inlet="in1"/>
               <dest obj="+_36" inlet="in1"/>
               <dest obj="+_34" inlet="in1"/>
            </net>
            <net>
               <source obj="+_34" outlet="out"/>
               <dest obj="mux_11" inlet="i1"/>
            </net>
            <net>
               <source obj="+_35" outlet="out"/>
               <dest obj="mux_11" inlet="i2"/>
            </net>
            <net>
               <source obj="+_36" outlet="out"/>
               <dest obj="mux_11" inlet="i3"/>
            </net>
            <net>
               <source obj="Step 11" outlet="inlet"/>
               <dest obj="to_33" inlet="i"/>
               <dest obj="steptoggle_17" inlet="trig"/>
            </net>
            <net>
               <source obj="to_33" outlet="o"/>
               <dest obj="steptoggle_17" inlet="v"/>
            </net>
            <net>
               <source obj="read_19" outlet="o"/>
               <dest obj="to_34" inlet="i"/>
            </net>
            <net>
               <source obj="mux_12" outlet="o"/>
               <dest obj="steptoggle_17" inlet="a"/>
               <dest obj="read_19" inlet="a"/>
            </net>
            <net>
               <source obj="i_19" outlet="out"/>
               <dest obj="mux_12" inlet="i0"/>
               <dest obj="+_38" inlet="in1"/>
               <dest obj="+_39" inlet="in1"/>
               <dest obj="+_37" inlet="in1"/>
            </net>
            <net>
               <source obj="+_37" outlet="out"/>
               <dest obj="mux_12" inlet="i1"/>
            </net>
            <net>
               <source obj="+_38" outlet="out"/>
               <dest obj="mux_12" inlet="i2"/>
            </net>
            <net>
               <source obj="+_39" outlet="out"/>
               <dest obj="mux_12" inlet="i3"/>
            </net>
            <net>
               <source obj="Step 12" outlet="inlet"/>
               <dest obj="to_35" inlet="i"/>
               <dest obj="steptoggle_18" inlet="trig"/>
            </net>
            <net>
               <source obj="to_35" outlet="o"/>
               <dest obj="steptoggle_18" inlet="v"/>
            </net>
            <net>
               <source obj="read_20" outlet="o"/>
               <dest obj="to_36" inlet="i"/>
            </net>
            <net>
               <source obj="mux_13" outlet="o"/>
               <dest obj="steptoggle_18" inlet="a"/>
               <dest obj="read_20" inlet="a"/>
            </net>
            <net>
               <source obj="i_20" outlet="out"/>
               <dest obj="mux_13" inlet="i0"/>
               <dest obj="+_41" inlet="in1"/>
               <dest obj="+_42" inlet="in1"/>
               <dest obj="+_40" inlet="in1"/>
            </net>
            <net>
               <source obj="+_40" outlet="out"/>
               <dest obj="mux_13" inlet="i1"/>
            </net>
            <net>
               <source obj="+_41" outlet="out"/>
               <dest obj="mux_13" inlet="i2"/>
            </net>
            <net>
               <source obj="+_42" outlet="out"/>
               <dest obj="mux_13" inlet="i3"/>
            </net>
            <net>
               <source obj="Step 13" outlet="inlet"/>
               <dest obj="to_37" inlet="i"/>
               <dest obj="steptoggle_19" inlet="trig"/>
            </net>
            <net>
               <source obj="to_37" outlet="o"/>
               <dest obj="steptoggle_19" inlet="v"/>
            </net>
            <net>
               <source obj="read_21" outlet="o"/>
               <dest obj="to_38" inlet="i"/>
            </net>
            <net>
               <source obj="mux_14" outlet="o"/>
               <dest obj="steptoggle_19" inlet="a"/>
               <dest obj="read_21" inlet="a"/>
            </net>
            <net>
               <source obj="i_21" outlet="out"/>
               <dest obj="mux_14" inlet="i0"/>
               <dest obj="+_45" inlet="in1"/>
               <dest obj="+_44" inlet="in1"/>
               <dest obj="+_43" inlet="in1"/>
            </net>
            <net>
               <source obj="+_43" outlet="out"/>
               <dest obj="mux_14" inlet="i1"/>
            </net>
            <net>
               <source obj="+_45" outlet="out"/>
               <dest obj="mux_14" inlet="i2"/>
            </net>
            <net>
               <source obj="+_44" outlet="out"/>
               <dest obj="mux_14" inlet="i3"/>
            </net>
            <net>
               <source obj="Step 14" outlet="inlet"/>
               <dest obj="to_39" inlet="i"/>
               <dest obj="steptoggle_20" inlet="trig"/>
            </net>
            <net>
               <source obj="to_39" outlet="o"/>
               <dest obj="steptoggle_20" inlet="v"/>
            </net>
            <net>
               <source obj="read_22" outlet="o"/>
               <dest obj="to_40" inlet="i"/>
            </net>
            <net>
               <source obj="mux_15" outlet="o"/>
               <dest obj="steptoggle_20" inlet="a"/>
               <dest obj="read_22" inlet="a"/>
            </net>
            <net>
               <source obj="i_22" outlet="out"/>
               <dest obj="mux_15" inlet="i0"/>
               <dest obj="+_47" inlet="in1"/>
               <dest obj="+_48" inlet="in1"/>
               <dest obj="+_46" inlet="in1"/>
            </net>
            <net>
               <source obj="+_46" outlet="out"/>
               <dest obj="mux_15" inlet="i1"/>
            </net>
            <net>
               <source obj="+_47" outlet="out"/>
               <dest obj="mux_15" inlet="i2"/>
            </net>
            <net>
               <source obj="+_48" outlet="out"/>
               <dest obj="mux_15" inlet="i3"/>
            </net>
            <net>
               <source obj="Step 15" outlet="inlet"/>
               <dest obj="to_41" inlet="i"/>
               <dest obj="steptoggle_21" inlet="trig"/>
            </net>
            <net>
               <source obj="to_41" outlet="o"/>
               <dest obj="steptoggle_21" inlet="v"/>
            </net>
            <net>
               <source obj="read_23" outlet="o"/>
               <dest obj="to_42" inlet="i"/>
            </net>
            <net>
               <source obj="mux_16" outlet="o"/>
               <dest obj="steptoggle_21" inlet="a"/>
               <dest obj="read_23" inlet="a"/>
            </net>
            <net>
               <source obj="i_23" outlet="out"/>
               <dest obj="mux_16" inlet="i0"/>
               <dest obj="+_50" inlet="in1"/>
               <dest obj="+_51" inlet="in1"/>
               <dest obj="+_49" inlet="in1"/>
            </net>
            <net>
               <source obj="+_49" outlet="out"/>
               <dest obj="mux_16" inlet="i1"/>
            </net>
            <net>
               <source obj="+_50" outlet="out"/>
               <dest obj="mux_16" inlet="i2"/>
            </net>
            <net>
               <source obj="+_51" outlet="out"/>
               <dest obj="mux_16" inlet="i3"/>
            </net>
            <net>
               <source obj="Step 16" outlet="inlet"/>
               <dest obj="to_43" inlet="i"/>
               <dest obj="steptoggle_22" inlet="trig"/>
            </net>
            <net>
               <source obj="to_43" outlet="o"/>
               <dest obj="steptoggle_22" inlet="v"/>
            </net>
            <net>
               <source obj="read_24" outlet="o"/>
               <dest obj="to_44" inlet="i"/>
            </net>
            <net>
               <source obj="mux_17" outlet="o"/>
               <dest obj="steptoggle_22" inlet="a"/>
               <dest obj="read_24" inlet="a"/>
            </net>
            <net>
               <source obj="i_24" outlet="out"/>
               <dest obj="mux_17" inlet="i0"/>
               <dest obj="+_53" inlet="in1"/>
               <dest obj="+_54" inlet="in1"/>
               <dest obj="+_52" inlet="in1"/>
            </net>
            <net>
               <source obj="+_52" outlet="out"/>
               <dest obj="mux_17" inlet="i1"/>
            </net>
            <net>
               <source obj="+_53" outlet="out"/>
               <dest obj="mux_17" inlet="i2"/>
            </net>
            <net>
               <source obj="+_54" outlet="out"/>
               <dest obj="mux_17" inlet="i3"/>
            </net>
            <net>
               <source obj="c_3" outlet="out"/>
               <dest obj="mux_1" inlet="i2"/>
            </net>
            <net>
               <source obj="c_4" outlet="out"/>
               <dest obj="mux_1" inlet="i3"/>
            </net>
            <net>
               <source obj="Pattern Select" outlet="inlet"/>
               <dest obj="mux_1" inlet="s"/>
            </net>
            <net>
               <source obj="Patern Load" outlet="inlet"/>
               <dest obj="load_1" inlet="trig"/>
            </net>
            <net>
               <source obj="Pattern Save" outlet="inlet"/>
               <dest obj="save_1" inlet="trig"/>
            </net>
            <net>
               <source obj="Length" outlet="inlet"/>
               <dest obj="counter_1" inlet="max"/>
            </net>
            <net>
               <source obj="Start" outlet="inlet"/>
               <dest obj="counter_1" inlet="min"/>
            </net>
            <net>
               <source obj="and_4" outlet="o"/>
               <dest obj="Trig 4" inlet="outlet"/>
            </net>
            <net>
               <source obj="and_3" outlet="o"/>
               <dest obj="Trig 3" inlet="outlet"/>
            </net>
            <net>
               <source obj="and_2" outlet="o"/>
               <dest obj="Trig 2" inlet="outlet"/>
            </net>
            <net>
               <source obj="and_1" outlet="o"/>
               <dest obj="Trig 1" inlet="outlet"/>
            </net>
            <net>
               <source obj="to_3" outlet="o"/>
               <dest obj="State 1" inlet="outlet"/>
            </net>
            <net>
               <source obj="to_7" outlet="o"/>
               <dest obj="State 2" inlet="outlet"/>
            </net>
            <net>
               <source obj="to_11" outlet="o"/>
               <dest obj="State 3" inlet="outlet"/>
            </net>
            <net>
               <source obj="to_13" outlet="o"/>
               <dest obj="State 4" inlet="outlet"/>
            </net>
            <net>
               <source obj="to_16" outlet="o"/>
               <dest obj="State 5" inlet="outlet"/>
            </net>
            <net>
               <source obj="to_18" outlet="o"/>
               <dest obj="State 6" inlet="outlet"/>
            </net>
            <net>
               <source obj="to_20" outlet="o"/>
               <dest obj="State 7" inlet="outlet"/>
            </net>
            <net>
               <source obj="to_22" outlet="o"/>
               <dest obj="State 8" inlet="outlet"/>
            </net>
            <net>
               <source obj="to_30" outlet="o"/>
               <dest obj="State 9" inlet="outlet"/>
            </net>
            <net>
               <source obj="to_32" outlet="o"/>
               <dest obj="State 10" inlet="outlet"/>
            </net>
            <net>
               <source obj="to_34" outlet="o"/>
               <dest obj="State 11" inlet="outlet"/>
            </net>
            <net>
               <source obj="to_36" outlet="o"/>
               <dest obj="State 12" inlet="outlet"/>
            </net>
            <net>
               <source obj="to_38" outlet="o"/>
               <dest obj="State 13" inlet="outlet"/>
            </net>
            <net>
               <source obj="to_40" outlet="o"/>
               <dest obj="State 14" inlet="outlet"/>
            </net>
            <net>
               <source obj="to_42" outlet="o"/>
               <dest obj="State 15" inlet="outlet"/>
            </net>
            <net>
               <source obj="to_44" outlet="o"/>
               <dest obj="State 16" inlet="outlet"/>
            </net>
         </nets>
         <settings>
            <subpatchmode>no</subpatchmode>
         </settings>
         <notes><![CDATA[]]></notes>
         <windowPos>
            <x>151</x>
            <y>23</y>
            <width>1433</width>
            <height>827</height>
         </windowPos>
      </subpatch>
   </patcher>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="play1" x="1540" y="28">
      <params/>
      <attribs/>
   </obj>
   <obj type="disp/bool" uuid="a0ee71d48208b71752cbb8c05e55145106ef3946" name="bool_11" x="1652" y="28">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/button" uuid="ef3d13774349df85aa9bfecf30dbc91ab8488b3f" name="Save" x="448" y="56">
      <params>
         <bool32.mom name="b" value="0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="dial_2" x="140" y="84">
      <params>
         <frac32.u.map name="value" value="8.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="conv/to i" uuid="305966430ee86b5c3b8e18cde0c721657c558a87" name="to_2" x="196" y="84">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="play2" x="1540" y="84">
      <params/>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="266" y="98" text="Toggle Steps on and off"/>
   <obj type="disp/bool" uuid="a0ee71d48208b71752cbb8c05e55145106ef3946" name="bool_12" x="1652" y="98">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/serial/config" uuid="8ec617bbe7b552a58656442e87513d8b4c69833a" name="config_1" x="0" y="112">
      <params/>
      <attribs>
         <combo attributeName="baudrate" selection="115200"/>
      </attribs>
   </obj>
   <obj type="ctrl/button" uuid="ef3d13774349df85aa9bfecf30dbc91ab8488b3f" name="button_1" x="266" y="112">
      <params>
         <bool32.mom name="b" value="0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/button" uuid="ef3d13774349df85aa9bfecf30dbc91ab8488b3f" name="button_2" x="308" y="112">
      <params>
         <bool32.mom name="b" value="0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/button" uuid="ef3d13774349df85aa9bfecf30dbc91ab8488b3f" name="button_3" x="350" y="112">
      <params>
         <bool32.mom name="b" value="0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/button" uuid="ef3d13774349df85aa9bfecf30dbc91ab8488b3f" name="button_4" x="392" y="112">
      <params>
         <bool32.mom name="b" value="0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/button" uuid="ef3d13774349df85aa9bfecf30dbc91ab8488b3f" name="button_5" x="434" y="112">
      <params>
         <bool32.mom name="b" value="0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/button" uuid="ef3d13774349df85aa9bfecf30dbc91ab8488b3f" name="button_6" x="476" y="112">
      <params>
         <bool32.mom name="b" value="0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/button" uuid="ef3d13774349df85aa9bfecf30dbc91ab8488b3f" name="button_7" x="518" y="112">
      <params>
         <bool32.mom name="b" value="0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/button" uuid="ef3d13774349df85aa9bfecf30dbc91ab8488b3f" name="button_8" x="560" y="112">
      <params>
         <bool32.mom name="b" value="0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="play3" x="1540" y="140">
      <params/>
      <attribs/>
   </obj>
   <obj type="script/script2" uuid="d39e743cf47c9221f4e99c133430148cf74c68c5" name="script2_1" x="0" y="168">
      <params/>
      <attribs>
         <text attributeName="script">
            <sText><![CDATA[uint8_t StatusToMsgLength(uint8_t t){
  switch(t) {
  case 0x0:
  case 0x1:
  case 0x2:
  case 0x3:
  case 0x4:
  case 0x5:
  case 0x6:
  case 0x7:
    return 0;
  case 0x8:
  case 0x9:
  case 0xa:
  case 0xb:
    return 3;
  case 0xc:
  case 0xd:
    return 2;
  case 0xe:
    return 3;
  default:
    return -1;
  }
}

uint8_t SysToMsgLength(uint8_t t){
    switch(t) {
  case 0x0:
    return -1; // 0xf0=sysex start. may vary
  case 0x1:
    return 2; // 0xf1=MIDI Time Code. 2 bytes
  case 0x2:
    return 3; // 0xf2=MIDI Song position. 3 bytes
  case 0x3:
    return 2; // 0xf3=MIDI Song Select. 2 bytes.
  case 0x4:
    return 1; // 0xf4=undefined
  case 0x5:
    return 1; // 0xf5=undefined
  case 0x6:
    return 1; // 0xf6=TUNE Request
  case 0x7:
    return 1; // 0xf7=sysex end.
  case 0x8:
    return 1; // 0xf8=timing clock. 1 byte
  case 0x9:
    return 1; // 0xf9=proposed measure end?
  case 0xa:
    return 1; // 0xfa=start. 1 byte
  case 0xb:
    return 1; // 0xfb=continue. 1 byte
  case 0xc:
    return 1; // 0xfc=stop. 1 byte
  case 0xd:
    return 1; // 0xfd=undefined
  case 0xe:
    return 1; // 0xfe=active sensing. 1 byte
  case 0xf:
  default:
    return 3; // 0xff= not reset, but a META-EVENT, which is always 3 bytes
  }
}


unsigned char MidiByte0;
unsigned char MidiByte1;
unsigned char MidiByte2;
unsigned char MidiCurData;
unsigned char MidiNumData;

void setup(){
  MidiNumData = 0;
  MidiCurData = 0;
}


void MidiInByteHandler(uint8_t data) {
  int8_t len;
  if (data & 0x80) {
    len = StatusToMsgLength(data >> 4);
    if (len == -1) {
      len = SysToMsgLength(data - 0xF0);
    }
    if (len == 1) {
      MidiInMsgHandler(MIDI_DEVICE_DIGITAL_X1,1,data,0,0);
    } else {
      MidiByte0 = data;
      MidiNumData = len - 1;
      MidiCurData = 0;
    }
  }
  else // not a status byte
  {
    if (MidiCurData == 0) {
      MidiByte1 = data;
      if (MidiNumData == 1) {
        // 2 byte message complete
        MidiInMsgHandler(MIDI_DEVICE_DIGITAL_X1,1,MidiByte0, MidiByte1, 0);
        MidiCurData = 0;
      }
      else
        MidiCurData++;
    }
    else if (MidiCurData == 1) {
      MidiByte2 = data;
      if (MidiNumData == 2) {
        MidiInMsgHandler(MIDI_DEVICE_DIGITAL_X1,1,MidiByte0, MidiByte1, MidiByte2);
        MidiCurData = 0;
      }
    }
  }
}

void loop(){
    char ch = sdGet(&SD2);
    MidiInByteHandler(ch);  
}]]></sText>
         </text>
      </attribs>
   </obj>
   <obj type="disp/i" uuid="5e35fd0c62d81e70017289250cf28edd26e19e4a" name="i_1" x="224" y="168">
      <params/>
      <attribs/>
   </obj>
   <obj type="disp/bool" uuid="a0ee71d48208b71752cbb8c05e55145106ef3946" name="bool_1" x="266" y="168">
      <params/>
      <attribs/>
   </obj>
   <obj type="disp/bool" uuid="a0ee71d48208b71752cbb8c05e55145106ef3946" name="bool_2" x="308" y="168">
      <params/>
      <attribs/>
   </obj>
   <obj type="disp/bool" uuid="a0ee71d48208b71752cbb8c05e55145106ef3946" name="bool_3" x="350" y="168">
      <params/>
      <attribs/>
   </obj>
   <obj type="disp/bool" uuid="a0ee71d48208b71752cbb8c05e55145106ef3946" name="bool_4" x="392" y="168">
      <params/>
      <attribs/>
   </obj>
   <obj type="disp/bool" uuid="a0ee71d48208b71752cbb8c05e55145106ef3946" name="bool_5" x="434" y="168">
      <params/>
      <attribs/>
   </obj>
   <obj type="disp/bool" uuid="a0ee71d48208b71752cbb8c05e55145106ef3946" name="bool_6" x="476" y="168">
      <params/>
      <attribs/>
   </obj>
   <obj type="disp/bool" uuid="a0ee71d48208b71752cbb8c05e55145106ef3946" name="bool_7" x="518" y="168">
      <params/>
      <attribs/>
   </obj>
   <obj type="disp/bool" uuid="a0ee71d48208b71752cbb8c05e55145106ef3946" name="bool_8" x="560" y="168">
      <params/>
      <attribs/>
   </obj>
   <obj type="disp/bool" uuid="a0ee71d48208b71752cbb8c05e55145106ef3946" name="bool_13" x="1652" y="168">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="play4" x="1540" y="196">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/i" uuid="a3786816db6ea5bc6ac4193a5cccdb2c83b83496" name="i_6" x="756" y="224">
      <params>
         <int32 name="value" value="0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/==" uuid="deaf0d36642c57876c4101e86f8a0b6a06021ab2" name="==_1" x="812" y="224">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/and 2" uuid="c67031682f552aa0a80b23377495c51ea28a8c9c" name="and_2" x="882" y="224">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/i" uuid="a3786816db6ea5bc6ac4193a5cccdb2c83b83496" name="i_3" x="182" y="238">
      <params>
         <int32 name="value" value="127"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/==" uuid="deaf0d36642c57876c4101e86f8a0b6a06021ab2" name="==_2" x="280" y="238">
      <params/>
      <attribs/>
   </obj>
   <obj type="disp/bool" uuid="a0ee71d48208b71752cbb8c05e55145106ef3946" name="bool_9" x="350" y="238">
      <params/>
      <attribs/>
   </obj>
   <obj type="disp/bool" uuid="a0ee71d48208b71752cbb8c05e55145106ef3946" name="bool_14" x="1652" y="238">
      <params/>
      <attribs/>
   </obj>
   <obj type="klab/logic/last_rising_4" uuid="17606775-cf17-4e03-84ce-75d121e13672" name="last_rising_4_1" x="434" y="252">
      <params/>
      <attribs/>
   </obj>
   <obj type="disp/i" uuid="5e35fd0c62d81e70017289250cf28edd26e19e4a" name="dispI_1" x="112" y="280">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/i" uuid="a3786816db6ea5bc6ac4193a5cccdb2c83b83496" name="i_5" x="756" y="280">
      <params>
         <int32 name="value" value="1"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/==" uuid="deaf0d36642c57876c4101e86f8a0b6a06021ab2" name="==_4" x="812" y="280">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/and 2" uuid="c67031682f552aa0a80b23377495c51ea28a8c9c" name="and_1" x="882" y="280">
      <params/>
      <attribs/>
   </obj>
   <obj type="midi/in/cc i any" uuid="a5a8957c081888a8175ecd4630479533958e488b" name="ctlini_any_2" x="0" y="294">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/i" uuid="a3786816db6ea5bc6ac4193a5cccdb2c83b83496" name="i_4" x="182" y="294">
      <params>
         <int32 name="value" value="0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/==" uuid="deaf0d36642c57876c4101e86f8a0b6a06021ab2" name="==_3" x="280" y="294">
      <params/>
      <attribs/>
   </obj>
   <obj type="disp/bool" uuid="a0ee71d48208b71752cbb8c05e55145106ef3946" name="bool_10" x="350" y="294">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/change" uuid="96e39ae624c3f3c952cec4a95e1986ee0104f718" name="change_1" x="490" y="294">
      <params/>
      <attribs/>
   </obj>
   <obj type="disp/i" uuid="5e35fd0c62d81e70017289250cf28edd26e19e4a" name="dispI_2" x="112" y="308">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/or 2" uuid="3805d3c84d30032a44fbdbe42d9a2988a1790a3e" name="or_1" x="602" y="322">
      <params/>
      <attribs/>
   </obj>
   <obj type="disp/i" uuid="5e35fd0c62d81e70017289250cf28edd26e19e4a" name="dispI_3" x="112" y="336">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/change" uuid="96e39ae624c3f3c952cec4a95e1986ee0104f718" name="change_2" x="490" y="336">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/i" uuid="a3786816db6ea5bc6ac4193a5cccdb2c83b83496" name="i_7" x="756" y="336">
      <params>
         <int32 name="value" value="2"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/==" uuid="deaf0d36642c57876c4101e86f8a0b6a06021ab2" name="==_5" x="812" y="336">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/and 2" uuid="c67031682f552aa0a80b23377495c51ea28a8c9c" name="and_3" x="882" y="336">
      <params/>
      <attribs/>
   </obj>
   <obj type="disp/dial p" uuid="44fd18b562e434b3230441681132dbeabb15cdc5" name="dial_24" x="1582" y="378">
      <params/>
      <attribs/>
   </obj>
   <obj type="disp/dial p" uuid="44fd18b562e434b3230441681132dbeabb15cdc5" name="dial_25" x="1652" y="378">
      <params/>
      <attribs/>
   </obj>
   <obj type="disp/dial p" uuid="44fd18b562e434b3230441681132dbeabb15cdc5" name="dial_26" x="1722" y="378">
      <params/>
      <attribs/>
   </obj>
   <obj type="disp/dial p" uuid="44fd18b562e434b3230441681132dbeabb15cdc5" name="dial_27" x="1792" y="378">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/divremc" uuid="fd7d945542e16344358136d7e22cffd5be704260" name="divremc_1" x="196" y="392">
      <params/>
      <attribs>
         <spinner attributeName="denominator" value="8"/>
      </attribs>
   </obj>
   <obj type="ctrl/i" uuid="a3786816db6ea5bc6ac4193a5cccdb2c83b83496" name="i_8" x="756" y="392">
      <params>
         <int32 name="value" value="3"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/==" uuid="deaf0d36642c57876c4101e86f8a0b6a06021ab2" name="==_6" x="812" y="392">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/and 2" uuid="c67031682f552aa0a80b23377495c51ea28a8c9c" name="and_4" x="882" y="392">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/i" uuid="a3786816db6ea5bc6ac4193a5cccdb2c83b83496" name="i_9" x="756" y="448">
      <params>
         <int32 name="value" value="4"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/==" uuid="deaf0d36642c57876c4101e86f8a0b6a06021ab2" name="==_7" x="812" y="448">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/and 2" uuid="c67031682f552aa0a80b23377495c51ea28a8c9c" name="and_5" x="882" y="448">
      <params/>
      <attribs/>
   </obj>
   <obj type="disp/dial p" uuid="44fd18b562e434b3230441681132dbeabb15cdc5" name="dial_28" x="1582" y="462">
      <params/>
      <attribs/>
   </obj>
   <obj type="disp/dial p" uuid="44fd18b562e434b3230441681132dbeabb15cdc5" name="dial_29" x="1652" y="462">
      <params/>
      <attribs/>
   </obj>
   <obj type="disp/dial p" uuid="44fd18b562e434b3230441681132dbeabb15cdc5" name="dial_30" x="1722" y="462">
      <params/>
      <attribs/>
   </obj>
   <obj type="disp/dial p" uuid="44fd18b562e434b3230441681132dbeabb15cdc5" name="dial_31" x="1792" y="462">
      <params/>
      <attribs/>
   </obj>
   <obj type="table/alloc 8b sdram" uuid="7af0c2671e20d9c493553cf8b038ebbec89efb7" name="part1" x="1078" y="476">
      <params/>
      <attribs>
         <combo attributeName="size" selection="64"/>
         <text attributeName="init">
            <sText><![CDATA[]]></sText>
         </text>
      </attribs>
   </obj>
   <obj type="rbrt/data/tablestore 8" uuid="736a5df0-09ec-472a-a4ba-fde5617e1001" name="tablestore_1" x="1190" y="476">
      <params/>
      <attribs>
         <objref attributeName="table" obj="part1"/>
      </attribs>
   </obj>
   <obj type="disp/dial p" uuid="44fd18b562e434b3230441681132dbeabb15cdc5" name="dial_21" x="1484" y="476">
      <params/>
      <attribs/>
   </obj>
   <obj type="disp/i" uuid="5e35fd0c62d81e70017289250cf28edd26e19e4a" name="i_2" x="406" y="490">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/i" uuid="a3786816db6ea5bc6ac4193a5cccdb2c83b83496" name="i_10" x="756" y="504">
      <params>
         <int32 name="value" value="5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/==" uuid="deaf0d36642c57876c4101e86f8a0b6a06021ab2" name="==_8" x="812" y="504">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/and 2" uuid="c67031682f552aa0a80b23377495c51ea28a8c9c" name="and_6" x="882" y="504">
      <params/>
      <attribs/>
   </obj>
   <obj type="disp/dial p" uuid="44fd18b562e434b3230441681132dbeabb15cdc5" name="dial_5" x="1582" y="546">
      <params/>
      <attribs/>
   </obj>
   <obj type="disp/dial p" uuid="44fd18b562e434b3230441681132dbeabb15cdc5" name="dial_6" x="1652" y="546">
      <params/>
      <attribs/>
   </obj>
   <obj type="disp/dial p" uuid="44fd18b562e434b3230441681132dbeabb15cdc5" name="dial_15" x="1722" y="546">
      <params/>
      <attribs/>
   </obj>
   <obj type="disp/dial p" uuid="44fd18b562e434b3230441681132dbeabb15cdc5" name="dial_16" x="1792" y="546">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/i" uuid="a3786816db6ea5bc6ac4193a5cccdb2c83b83496" name="i_11" x="756" y="560">
      <params>
         <int32 name="value" value="6"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/==" uuid="deaf0d36642c57876c4101e86f8a0b6a06021ab2" name="==_9" x="812" y="560">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/and 2" uuid="c67031682f552aa0a80b23377495c51ea28a8c9c" name="and_7" x="882" y="560">
      <params/>
      <attribs/>
   </obj>
   <obj type="disp/dial p" uuid="44fd18b562e434b3230441681132dbeabb15cdc5" name="dial_23" x="1484" y="560">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/muls 8" uuid="7f2a47c7405168a6d330c0ec6091b1ec1e7c7840" name="muls_1" x="1022" y="574">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="44553fdc8628c67ab535845ed1be304ad6c9553b" name="+_1" x="1106" y="588">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/i" uuid="a3786816db6ea5bc6ac4193a5cccdb2c83b83496" name="i_12" x="756" y="616">
      <params>
         <int32 name="value" value="7"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/==" uuid="deaf0d36642c57876c4101e86f8a0b6a06021ab2" name="==_10" x="812" y="616">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/and 2" uuid="c67031682f552aa0a80b23377495c51ea28a8c9c" name="and_8" x="882" y="616">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="dial_22" x="966" y="616">
      <params>
         <frac32.u.map name="value" value="64.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/*" uuid="13882852b58661ad012ffbe246470b5df4b6c5d1" name="*_1" x="1036" y="616">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/dial b" uuid="862e7d7f29093cb1ce4aed72244d118ad4d46692" name="dial_3" x="378" y="630">
      <params>
         <frac32.s.map name="value" value="6.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="disp/dial b" uuid="9ffed04e6a3052d9001eda83bae7024cb6d17037" name="dial_4" x="630" y="630">
      <params/>
      <attribs/>
   </obj>
   <obj type="disp/i" uuid="5e35fd0c62d81e70017289250cf28edd26e19e4a" name="i_13" x="1358" y="630">
      <params/>
      <attribs/>
   </obj>
   <obj type="disp/dial p" uuid="44fd18b562e434b3230441681132dbeabb15cdc5" name="dial_17" x="1582" y="630">
      <params/>
      <attribs/>
   </obj>
   <obj type="disp/dial p" uuid="44fd18b562e434b3230441681132dbeabb15cdc5" name="dial_18" x="1652" y="630">
      <params/>
      <attribs/>
   </obj>
   <obj type="disp/dial p" uuid="44fd18b562e434b3230441681132dbeabb15cdc5" name="dial_19" x="1722" y="630">
      <params/>
      <attribs/>
   </obj>
   <obj type="disp/dial p" uuid="44fd18b562e434b3230441681132dbeabb15cdc5" name="dial_20" x="1792" y="630">
      <params/>
      <attribs/>
   </obj>
   <obj type="timer/pulselength" uuid="ca68725237d8ba8407773340801660a9fd9b0dba" name="pulselength_1" x="56" y="644">
      <params>
         <frac32.s.map name="delay" value="64.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="rbrt/control/gate_hold" uuid="4c315d47-8c76-4c21-bf06-e3d5001b8c21" name="gate_hold_1" x="490" y="658">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/muls 8" uuid="7f2a47c7405168a6d330c0ec6091b1ec1e7c7840" name="muls_2" x="1386" y="700">
      <params/>
      <attribs/>
   </obj>
   <obj type="rbrt/data/tableread 8" uuid="e91f7d4e-591f-49b4-8277-241cf4661605" name="tableread_1" x="1456" y="700">
      <params/>
      <attribs>
         <objref attributeName="table" obj="part1"/>
      </attribs>
   </obj>
   <obj type="djrm/logic/counter2_init_start" uuid="d5936f238ab92e53ac93d5927c3b43ceef998dc1" name="counter2_init_start_1" x="1106" y="714">
      <params>
         <int32 name="maximum" value="7"/>
         <int32 name="init" value="0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="outlet_1" x="1610" y="714">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="outlet_2" x="1624" y="728">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="outlet_3" x="1638" y="742">
      <params/>
      <attribs/>
   </obj>
   <obj type="pumkinrevamp" uuid="2796f3f3-8492-46eb-9ad1-10d2b48f7803" name="obj_1" x="84" y="756">
      <params/>
      <attribs/>
   </obj>
   <obj type="disp/dial p" uuid="44fd18b562e434b3230441681132dbeabb15cdc5" name="dial_7" x="196" y="756">
      <params/>
      <attribs/>
   </obj>
   <obj type="disp/dial p" uuid="44fd18b562e434b3230441681132dbeabb15cdc5" name="dial_8" x="266" y="756">
      <params/>
      <attribs/>
   </obj>
   <obj type="disp/dial p" uuid="44fd18b562e434b3230441681132dbeabb15cdc5" name="dial_11" x="336" y="756">
      <params/>
      <attribs/>
   </obj>
   <obj type="disp/dial p" uuid="44fd18b562e434b3230441681132dbeabb15cdc5" name="dial_12" x="406" y="756">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/inv" uuid="2bd44b865d3b63ff9b80862242bf5be779e3ad5" name="inv_1" x="826" y="756">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="outlet_4" x="1652" y="756">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="outlet_5" x="1666" y="770">
      <params/>
      <attribs/>
   </obj>
   <obj type="disp/bool" uuid="a0ee71d48208b71752cbb8c05e55145106ef3946" name="bool_16" x="952" y="784">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="outlet_6" x="1680" y="784">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="outlet_7" x="1694" y="798">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="outlet_8" x="1708" y="812">
      <params/>
      <attribs/>
   </obj>
   <obj type="disp/dial p" uuid="44fd18b562e434b3230441681132dbeabb15cdc5" name="dial_9" x="196" y="840">
      <params/>
      <attribs/>
   </obj>
   <obj type="disp/dial p" uuid="44fd18b562e434b3230441681132dbeabb15cdc5" name="dial_10" x="266" y="840">
      <params/>
      <attribs/>
   </obj>
   <obj type="disp/dial p" uuid="44fd18b562e434b3230441681132dbeabb15cdc5" name="dial_13" x="336" y="840">
      <params/>
      <attribs/>
   </obj>
   <obj type="disp/dial p" uuid="44fd18b562e434b3230441681132dbeabb15cdc5" name="dial_14" x="406" y="840">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/button" uuid="ef3d13774349df85aa9bfecf30dbc91ab8488b3f" name="button_9" x="742" y="854">
      <params>
         <bool32.mom name="b" value="0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="disp/bool" uuid="a0ee71d48208b71752cbb8c05e55145106ef3946" name="bool_15" x="854" y="854">
      <params/>
      <attribs/>
   </obj>
   <obj type="rbrt/control/gate_hold_i" uuid="8a2bb3cd-0d44-4e9d-a279-098809d7eefb" name="gate_hold_i_1" x="1092" y="854">
      <params/>
      <attribs/>
   </obj>
   <obj type="rbrt/data/tableread 8" uuid="e91f7d4e-591f-49b4-8277-241cf4661605" name="tableread_2" x="1456" y="882">
      <params/>
      <attribs>
         <objref attributeName="table" obj="part1"/>
      </attribs>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="outlet_9" x="1610" y="882">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/muls 8" uuid="7f2a47c7405168a6d330c0ec6091b1ec1e7c7840" name="muls_3" x="1302" y="896">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="44553fdc8628c67ab535845ed1be304ad6c9553b" name="+_2" x="1386" y="896">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="outlet_10" x="1624" y="896">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/button" uuid="ef3d13774349df85aa9bfecf30dbc91ab8488b3f" name="button_10" x="742" y="910">
      <params>
         <bool32.mom name="b" value="0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="outlet_11" x="1638" y="910">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="outlet_12" x="1652" y="924">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/i" uuid="a3786816db6ea5bc6ac4193a5cccdb2c83b83496" name="i_14" x="1190" y="938">
      <params>
         <int32 name="value" value="1"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="dial_32" x="1246" y="938">
      <params>
         <frac32.u.map name="value" value="64.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/*" uuid="13882852b58661ad012ffbe246470b5df4b6c5d1" name="*_2" x="1316" y="938">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="outlet_13" x="1666" y="938">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="outlet_14" x="1680" y="952">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="outlet_15" x="1694" y="966">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="outlet_16" x="1708" y="980">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/muls 8" uuid="7f2a47c7405168a6d330c0ec6091b1ec1e7c7840" name="muls_4" x="1302" y="1064">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="44553fdc8628c67ab535845ed1be304ad6c9553b" name="+_3" x="1386" y="1064">
      <params/>
      <attribs/>
   </obj>
   <obj type="rbrt/data/tableread 8" uuid="e91f7d4e-591f-49b4-8277-241cf4661605" name="tableread_3" x="1456" y="1064">
      <params/>
      <attribs>
         <objref attributeName="table" obj="part1"/>
      </attribs>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="outlet_17" x="1610" y="1064">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="outlet_18" x="1624" y="1078">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="outlet_19" x="1638" y="1092">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/i" uuid="a3786816db6ea5bc6ac4193a5cccdb2c83b83496" name="i_15" x="1190" y="1106">
      <params>
         <int32 name="value" value="2"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="dial_33" x="1246" y="1106">
      <params>
         <frac32.u.map name="value" value="64.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/*" uuid="13882852b58661ad012ffbe246470b5df4b6c5d1" name="*_3" x="1316" y="1106">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="outlet_20" x="1652" y="1106">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="outlet_21" x="1666" y="1120">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="outlet_22" x="1680" y="1134">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="outlet_23" x="1694" y="1148">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="outlet_24" x="1708" y="1162">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/muls 8" uuid="7f2a47c7405168a6d330c0ec6091b1ec1e7c7840" name="muls_5" x="1302" y="1246">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="44553fdc8628c67ab535845ed1be304ad6c9553b" name="+_4" x="1386" y="1246">
      <params/>
      <attribs/>
   </obj>
   <obj type="rbrt/data/tableread 8" uuid="e91f7d4e-591f-49b4-8277-241cf4661605" name="tableread_4" x="1456" y="1246">
      <params/>
      <attribs>
         <objref attributeName="table" obj="part1"/>
      </attribs>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="outlet_25" x="1610" y="1246">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="outlet_26" x="1624" y="1260">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="outlet_27" x="1638" y="1274">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/i" uuid="a3786816db6ea5bc6ac4193a5cccdb2c83b83496" name="i_16" x="1190" y="1288">
      <params>
         <int32 name="value" value="3"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="dial_34" x="1246" y="1288">
      <params>
         <frac32.u.map name="value" value="64.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/*" uuid="13882852b58661ad012ffbe246470b5df4b6c5d1" name="*_4" x="1316" y="1288">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="outlet_28" x="1652" y="1288">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="outlet_29" x="1666" y="1302">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="outlet_30" x="1680" y="1316">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="outlet_31" x="1694" y="1330">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="outlet_32" x="1708" y="1344">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="Step_1" outlet="State 1"/>
         <dest obj="bool_1" inlet="in"/>
      </net>
      <net>
         <source obj="Step_1" outlet="State 2"/>
         <dest obj="bool_2" inlet="in"/>
      </net>
      <net>
         <source obj="Step_1" outlet="State 3"/>
         <dest obj="bool_3" inlet="in"/>
      </net>
      <net>
         <source obj="Step_1" outlet="State 4"/>
         <dest obj="bool_4" inlet="in"/>
      </net>
      <net>
         <source obj="Step_1" outlet="State 5"/>
         <dest obj="bool_5" inlet="in"/>
      </net>
      <net>
         <source obj="Step_1" outlet="State 6"/>
         <dest obj="bool_6" inlet="in"/>
      </net>
      <net>
         <source obj="Step_1" outlet="State 7"/>
         <dest obj="bool_7" inlet="in"/>
      </net>
      <net>
         <source obj="Step_1" outlet="State 8"/>
         <dest obj="bool_8" inlet="in"/>
      </net>
      <net>
         <source obj="Load" outlet="o"/>
         <dest obj="Step_1" inlet="Patern Load"/>
      </net>
      <net>
         <source obj="Save" outlet="o"/>
         <dest obj="Step_1" inlet="Pattern Save"/>
      </net>
      <net>
         <source obj="dial_2" outlet="out"/>
         <dest obj="to_2" inlet="i"/>
      </net>
      <net>
         <source obj="to_2" outlet="o"/>
         <dest obj="Step_1" inlet="Length"/>
      </net>
      <net>
         <source obj="dial_1" outlet="out"/>
         <dest obj="to_1" inlet="i"/>
      </net>
      <net>
         <source obj="to_1" outlet="o"/>
         <dest obj="Step_1" inlet="Start"/>
      </net>
      <net>
         <source obj="Step_1" outlet="Trig 2"/>
         <dest obj="play2" inlet="outlet"/>
         <dest obj="bool_12" inlet="in"/>
      </net>
      <net>
         <source obj="Step_1" outlet="Trig 3"/>
         <dest obj="play3" inlet="outlet"/>
         <dest obj="bool_13" inlet="in"/>
      </net>
      <net>
         <source obj="Step_1" outlet="Trig 4"/>
         <dest obj="play4" inlet="outlet"/>
         <dest obj="bool_14" inlet="in"/>
      </net>
      <net>
         <source obj="ctlini_any_2" outlet="value"/>
         <dest obj="dispI_1" inlet="in"/>
         <dest obj="==_2" inlet="in2"/>
         <dest obj="==_3" inlet="in2"/>
      </net>
      <net>
         <source obj="ctlini_any_2" outlet="cc"/>
         <dest obj="dispI_2" inlet="in"/>
         <dest obj="divremc_1" inlet="a"/>
         <dest obj="change_2" inlet="in"/>
      </net>
      <net>
         <source obj="ctlini_any_2" outlet="channel"/>
         <dest obj="dispI_3" inlet="in"/>
      </net>
      <net>
         <source obj="dial_3" outlet="out"/>
         <dest obj="gate_hold_1" inlet="in"/>
      </net>
      <net>
         <source obj="gate_hold_1" outlet="out"/>
         <dest obj="dial_4" inlet="in"/>
      </net>
      <net>
         <source obj="ctlini_any_2" outlet="trig"/>
         <dest obj="gate_hold_1" inlet="gate"/>
         <dest obj="inv_1" inlet="i"/>
         <dest obj="pulselength_1" inlet="trig"/>
      </net>
      <net>
         <source obj="divremc_1" outlet="rem"/>
         <dest obj="i_2" inlet="in"/>
         <dest obj="==_1" inlet="in1"/>
         <dest obj="==_4" inlet="in1"/>
         <dest obj="==_5" inlet="in1"/>
         <dest obj="==_6" inlet="in1"/>
         <dest obj="==_7" inlet="in1"/>
         <dest obj="==_8" inlet="in1"/>
         <dest obj="==_9" inlet="in1"/>
         <dest obj="==_10" inlet="in1"/>
         <dest obj="muls_1" inlet="in"/>
      </net>
      <net>
         <source obj="i_3" outlet="out"/>
         <dest obj="==_2" inlet="in1"/>
      </net>
      <net>
         <source obj="i_4" outlet="out"/>
         <dest obj="==_3" inlet="in1"/>
      </net>
      <net>
         <source obj="==_2" outlet="out"/>
         <dest obj="bool_9" inlet="in"/>
         <dest obj="last_rising_4_1" inlet="i0"/>
         <dest obj="tablestore_1" inlet="write"/>
      </net>
      <net>
         <source obj="==_3" outlet="out"/>
         <dest obj="bool_10" inlet="in"/>
         <dest obj="last_rising_4_1" inlet="i1"/>
      </net>
      <net>
         <source obj="change_1" outlet="trig"/>
         <dest obj="or_1" inlet="i1"/>
      </net>
      <net>
         <source obj="i_5" outlet="out"/>
         <dest obj="==_4" inlet="in2"/>
      </net>
      <net>
         <source obj="==_4" outlet="out"/>
         <dest obj="and_1" inlet="i2"/>
      </net>
      <net>
         <source obj="last_rising_4_1" outlet="o0"/>
         <dest obj="change_1" inlet="in"/>
      </net>
      <net>
         <source obj="i_6" outlet="out"/>
         <dest obj="==_1" inlet="in2"/>
      </net>
      <net>
         <source obj="==_1" outlet="out"/>
         <dest obj="and_2" inlet="i2"/>
      </net>
      <net>
         <source obj="and_2" outlet="o"/>
         <dest obj="Step_1" inlet="Step 1"/>
      </net>
      <net>
         <source obj="and_1" outlet="o"/>
         <dest obj="Step_1" inlet="Step 2"/>
      </net>
      <net>
         <source obj="i_8" outlet="out"/>
         <dest obj="==_6" inlet="in2"/>
      </net>
      <net>
         <source obj="==_6" outlet="out"/>
         <dest obj="and_4" inlet="i2"/>
      </net>
      <net>
         <source obj="i_7" outlet="out"/>
         <dest obj="==_5" inlet="in2"/>
      </net>
      <net>
         <source obj="==_5" outlet="out"/>
         <dest obj="and_3" inlet="i2"/>
      </net>
      <net>
         <source obj="and_3" outlet="o"/>
         <dest obj="Step_1" inlet="Step 3"/>
      </net>
      <net>
         <source obj="and_4" outlet="o"/>
         <dest obj="Step_1" inlet="Step 4"/>
      </net>
      <net>
         <source obj="change_2" outlet="trig"/>
         <dest obj="or_1" inlet="i2"/>
      </net>
      <net>
         <source obj="or_1" outlet="o"/>
         <dest obj="and_2" inlet="i1"/>
         <dest obj="and_1" inlet="i1"/>
         <dest obj="and_3" inlet="i1"/>
         <dest obj="and_4" inlet="i1"/>
         <dest obj="and_5" inlet="i1"/>
         <dest obj="and_7" inlet="i1"/>
         <dest obj="and_8" inlet="i1"/>
         <dest obj="and_6" inlet="i1"/>
      </net>
      <net>
         <source obj="i_10" outlet="out"/>
         <dest obj="==_8" inlet="in2"/>
      </net>
      <net>
         <source obj="==_8" outlet="out"/>
         <dest obj="and_6" inlet="i2"/>
      </net>
      <net>
         <source obj="i_9" outlet="out"/>
         <dest obj="==_7" inlet="in2"/>
      </net>
      <net>
         <source obj="==_7" outlet="out"/>
         <dest obj="and_5" inlet="i2"/>
      </net>
      <net>
         <source obj="i_12" outlet="out"/>
         <dest obj="==_10" inlet="in2"/>
      </net>
      <net>
         <source obj="==_10" outlet="out"/>
         <dest obj="and_8" inlet="i2"/>
      </net>
      <net>
         <source obj="i_11" outlet="out"/>
         <dest obj="==_9" inlet="in2"/>
      </net>
      <net>
         <source obj="==_9" outlet="out"/>
         <dest obj="and_7" inlet="i2"/>
      </net>
      <net>
         <source obj="obj_1" outlet="D7"/>
         <dest obj="square_1" inlet="pitch"/>
      </net>
      <net>
         <source obj="and_5" outlet="o"/>
         <dest obj="Step_1" inlet="Step 5"/>
      </net>
      <net>
         <source obj="and_6" outlet="o"/>
         <dest obj="Step_1" inlet="Step 6"/>
      </net>
      <net>
         <source obj="and_7" outlet="o"/>
         <dest obj="Step_1" inlet="Step 7"/>
      </net>
      <net>
         <source obj="and_8" outlet="o"/>
         <dest obj="Step_1" inlet="Step 8"/>
      </net>
      <net>
         <source obj="Step_1" outlet="Trig 1"/>
         <dest obj="play1" inlet="outlet"/>
         <dest obj="bool_11" inlet="in"/>
      </net>
      <net>
         <source obj="obj_1" outlet="C0"/>
         <dest obj="dial_7" inlet="in"/>
         <dest obj="tablestore_1" inlet="v0"/>
      </net>
      <net>
         <source obj="obj_1" outlet="C3"/>
         <dest obj="dial_12" inlet="in"/>
         <dest obj="tablestore_1" inlet="v3"/>
      </net>
      <net>
         <source obj="obj_1" outlet="C1"/>
         <dest obj="dial_8" inlet="in"/>
         <dest obj="tablestore_1" inlet="v1"/>
      </net>
      <net>
         <source obj="obj_1" outlet="C2"/>
         <dest obj="dial_11" inlet="in"/>
         <dest obj="tablestore_1" inlet="v2"/>
      </net>
      <net>
         <source obj="obj_1" outlet="C4"/>
         <dest obj="dial_9" inlet="in"/>
         <dest obj="tablestore_1" inlet="v4"/>
      </net>
      <net>
         <source obj="obj_1" outlet="C6"/>
         <dest obj="dial_13" inlet="in"/>
         <dest obj="tablestore_1" inlet="v6"/>
      </net>
      <net>
         <source obj="obj_1" outlet="C5"/>
         <dest obj="dial_10" inlet="in"/>
         <dest obj="tablestore_1" inlet="v5"/>
      </net>
      <net>
         <source obj="obj_1" outlet="C7"/>
         <dest obj="dial_14" inlet="in"/>
         <dest obj="tablestore_1" inlet="v7"/>
      </net>
      <net>
         <source obj="square_1" outlet="wave"/>
         <dest obj="counter2_init_start_1" inlet="inc"/>
         <dest obj="Step_1" inlet="Clock In"/>
      </net>
      <net>
         <source obj="tableread_1" outlet="v0"/>
         <dest obj="dial_5" inlet="in"/>
         <dest obj="outlet_1" inlet="outlet"/>
      </net>
      <net>
         <source obj="tableread_1" outlet="v1"/>
         <dest obj="dial_6" inlet="in"/>
         <dest obj="outlet_2" inlet="outlet"/>
      </net>
      <net>
         <source obj="tableread_1" outlet="v2"/>
         <dest obj="dial_15" inlet="in"/>
         <dest obj="outlet_3" inlet="outlet"/>
      </net>
      <net>
         <source obj="tableread_1" outlet="v3"/>
         <dest obj="dial_16" inlet="in"/>
         <dest obj="outlet_4" inlet="outlet"/>
      </net>
      <net>
         <source obj="tableread_1" outlet="v4"/>
         <dest obj="dial_17" inlet="in"/>
         <dest obj="outlet_5" inlet="outlet"/>
      </net>
      <net>
         <source obj="tableread_1" outlet="v5"/>
         <dest obj="dial_18" inlet="in"/>
         <dest obj="outlet_6" inlet="outlet"/>
      </net>
      <net>
         <source obj="tableread_1" outlet="v6"/>
         <dest obj="dial_19" inlet="in"/>
         <dest obj="outlet_7" inlet="outlet"/>
      </net>
      <net>
         <source obj="tableread_1" outlet="v7"/>
         <dest obj="dial_20" inlet="in"/>
         <dest obj="outlet_8" inlet="outlet"/>
      </net>
      <net>
         <source obj="counter2_init_start_1" outlet="o"/>
         <dest obj="gate_hold_i_1" inlet="in"/>
         <dest obj="i_13" inlet="in"/>
         <dest obj="muls_2" inlet="in"/>
         <dest obj="muls_3" inlet="in"/>
         <dest obj="muls_4" inlet="in"/>
      </net>
      <net>
         <source obj="divremc_1" outlet="div"/>
         <dest obj="i_1" inlet="in"/>
         <dest obj="Step_1" inlet="Pattern Select"/>
         <dest obj="Step_1" inlet="Voice"/>
         <dest obj="*_1" inlet="b"/>
      </net>
      <net>
         <source obj="+_1" outlet="out"/>
         <dest obj="dial_21" inlet="in"/>
         <dest obj="tablestore_1" inlet="offset"/>
      </net>
      <net>
         <source obj="muls_1" outlet="out"/>
         <dest obj="+_1" inlet="in1"/>
      </net>
      <net>
         <source obj="button_9" outlet="o"/>
         <dest obj="bool_15" inlet="in"/>
      </net>
      <net>
         <source obj="pulselength_1" outlet="pulse"/>
         <dest obj="bool_16" inlet="in"/>
      </net>
      <net>
         <source obj="dial_22" outlet="out"/>
         <dest obj="*_1" inlet="a"/>
      </net>
      <net>
         <source obj="*_1" outlet="result"/>
         <dest obj="+_1" inlet="in2"/>
      </net>
      <net>
         <source obj="muls_2" outlet="out"/>
         <dest obj="tableread_1" inlet="offset"/>
         <dest obj="dial_23" inlet="in"/>
      </net>
      <net>
         <source obj="button_10" outlet="o"/>
         <dest obj="tablestore_1" inlet="thru"/>
      </net>
      <net>
         <source obj="tablestore_1" outlet="v0"/>
         <dest obj="dial_24" inlet="in"/>
      </net>
      <net>
         <source obj="tablestore_1" outlet="v1"/>
         <dest obj="dial_25" inlet="in"/>
      </net>
      <net>
         <source obj="tablestore_1" outlet="v2"/>
         <dest obj="dial_26" inlet="in"/>
      </net>
      <net>
         <source obj="tablestore_1" outlet="v3"/>
         <dest obj="dial_27" inlet="in"/>
      </net>
      <net>
         <source obj="tablestore_1" outlet="v4"/>
         <dest obj="dial_28" inlet="in"/>
      </net>
      <net>
         <source obj="tablestore_1" outlet="v5"/>
         <dest obj="dial_29" inlet="in"/>
      </net>
      <net>
         <source obj="tablestore_1" outlet="v6"/>
         <dest obj="dial_30" inlet="in"/>
      </net>
      <net>
         <source obj="tablestore_1" outlet="v7"/>
         <dest obj="dial_31" inlet="in"/>
      </net>
      <net>
         <source obj="dial_32" outlet="out"/>
         <dest obj="*_2" inlet="a"/>
      </net>
      <net>
         <source obj="i_14" outlet="out"/>
         <dest obj="*_2" inlet="b"/>
      </net>
      <net>
         <source obj="muls_3" outlet="out"/>
         <dest obj="+_2" inlet="in1"/>
      </net>
      <net>
         <source obj="*_2" outlet="result"/>
         <dest obj="+_2" inlet="in2"/>
      </net>
      <net>
         <source obj="+_2" outlet="out"/>
         <dest obj="tableread_2" inlet="offset"/>
      </net>
      <net>
         <source obj="dial_33" outlet="out"/>
         <dest obj="*_3" inlet="a"/>
      </net>
      <net>
         <source obj="i_15" outlet="out"/>
         <dest obj="*_3" inlet="b"/>
      </net>
      <net>
         <source obj="muls_4" outlet="out"/>
         <dest obj="+_3" inlet="in1"/>
      </net>
      <net>
         <source obj="*_3" outlet="result"/>
         <dest obj="+_3" inlet="in2"/>
      </net>
      <net>
         <source obj="+_3" outlet="out"/>
         <dest obj="tableread_3" inlet="offset"/>
      </net>
      <net>
         <source obj="dial_34" outlet="out"/>
         <dest obj="*_4" inlet="a"/>
      </net>
      <net>
         <source obj="i_16" outlet="out"/>
         <dest obj="*_4" inlet="b"/>
      </net>
      <net>
         <source obj="muls_5" outlet="out"/>
         <dest obj="+_4" inlet="in1"/>
      </net>
      <net>
         <source obj="*_4" outlet="result"/>
         <dest obj="+_4" inlet="in2"/>
      </net>
      <net>
         <source obj="+_4" outlet="out"/>
         <dest obj="tableread_4" inlet="offset"/>
      </net>
      <net>
         <source obj="tableread_2" outlet="v0"/>
         <dest obj="outlet_9" inlet="outlet"/>
      </net>
      <net>
         <source obj="tableread_2" outlet="v1"/>
         <dest obj="outlet_10" inlet="outlet"/>
      </net>
      <net>
         <source obj="tableread_2" outlet="v2"/>
         <dest obj="outlet_11" inlet="outlet"/>
      </net>
      <net>
         <source obj="tableread_2" outlet="v3"/>
         <dest obj="outlet_12" inlet="outlet"/>
      </net>
      <net>
         <source obj="tableread_2" outlet="v4"/>
         <dest obj="outlet_13" inlet="outlet"/>
      </net>
      <net>
         <source obj="tableread_2" outlet="v5"/>
         <dest obj="outlet_14" inlet="outlet"/>
      </net>
      <net>
         <source obj="tableread_2" outlet="v6"/>
         <dest obj="outlet_15" inlet="outlet"/>
      </net>
      <net>
         <source obj="tableread_2" outlet="v7"/>
         <dest obj="outlet_16" inlet="outlet"/>
      </net>
      <net>
         <source obj="tableread_3" outlet="v0"/>
         <dest obj="outlet_17" inlet="outlet"/>
      </net>
      <net>
         <source obj="tableread_3" outlet="v1"/>
         <dest obj="outlet_18" inlet="outlet"/>
      </net>
      <net>
         <source obj="tableread_3" outlet="v2"/>
         <dest obj="outlet_19" inlet="outlet"/>
      </net>
      <net>
         <source obj="tableread_3" outlet="v3"/>
         <dest obj="outlet_20" inlet="outlet"/>
      </net>
      <net>
         <source obj="tableread_3" outlet="v4"/>
         <dest obj="outlet_21" inlet="outlet"/>
      </net>
      <net>
         <source obj="tableread_3" outlet="v5"/>
         <dest obj="outlet_22" inlet="outlet"/>
      </net>
      <net>
         <source obj="tableread_3" outlet="v6"/>
         <dest obj="outlet_23" inlet="outlet"/>
      </net>
      <net>
         <source obj="tableread_3" outlet="v7"/>
         <dest obj="outlet_24" inlet="outlet"/>
      </net>
      <net>
         <source obj="tableread_4" outlet="v0"/>
         <dest obj="outlet_25" inlet="outlet"/>
      </net>
      <net>
         <source obj="tableread_4" outlet="v1"/>
         <dest obj="outlet_26" inlet="outlet"/>
      </net>
      <net>
         <source obj="tableread_4" outlet="v2"/>
         <dest obj="outlet_27" inlet="outlet"/>
      </net>
      <net>
         <source obj="tableread_4" outlet="v3"/>
         <dest obj="outlet_28" inlet="outlet"/>
      </net>
      <net>
         <source obj="tableread_4" outlet="v4"/>
         <dest obj="outlet_29" inlet="outlet"/>
      </net>
      <net>
         <source obj="tableread_4" outlet="v5"/>
         <dest obj="outlet_30" inlet="outlet"/>
      </net>
      <net>
         <source obj="tableread_4" outlet="v6"/>
         <dest obj="outlet_31" inlet="outlet"/>
      </net>
      <net>
         <source obj="tableread_4" outlet="v7"/>
         <dest obj="outlet_32" inlet="outlet"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>no</subpatchmode>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>-2</x>
      <y>23</y>
      <width>1946</width>
      <height>1130</height>
   </windowPos>
</patch-1.0>