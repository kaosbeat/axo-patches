<patch-1.0 appVersion="1.0.12">
   <obj type="gpio/spi/config" uuid="d3e75d8a02e2ccabbbc2af3bc2fcdb8ea65a6133" name="config_1" x="56" y="84">
      <params/>
      <attribs>
         <combo attributeName="clock_polarity" selection="CPOL=0"/>
         <combo attributeName="clock_phase" selection="CPHA=0"/>
         <combo attributeName="baudrate" selection="FPCLK/64"/>
         <combo attributeName="format" selection="LSB first"/>
      </attribs>
   </obj>
   <obj type="script/script2" uuid="d39e743cf47c9221f4e99c133430148cf74c68c5" name="script2_1" x="364" y="84">
      <params/>
      <attribs>
         <text attributeName="script">
            <sText><![CDATA[/*
MCP3208 script2 code
by paul
adapted by kaos, this script is not optimized, but it works!
Connect the MCP3208 CS pin to the NSS(PA4) or any other digital out pin of axoloti.
In this example, the MCP3208 CS pin is connected to axoloti B0(GPIOB,0) pin.

If you use more then one spi device, it's importent to disable every other spi device by switching their cs pin. 
*/

uint8_t *txbuf;
uint8_t *rxbuf;
const SPIConfig spicfg_a = {NULL, GPIOA, 4, 3<<3  | SPI_CR1_LSBFIRST }; //MCP3208 pin PA4
const SPIConfig spicfg_b = {NULL, GPIOA, 1, 3<<3  | SPI_CR1_LSBFIRST }; //MCP3208 pin PA0




void setup(void){
	static uint8_t _txbuf[8] __attribute__ ((section (".sram2")));
	static uint8_t _rxbuf[8] __attribute__ ((section (".sram2")));
	txbuf = _txbuf;
	rxbuf = _rxbuf;

	palSetPadMode(GPIOA,4,PAL_MODE_OUTPUT_PUSHPULL);	// MCP3208
	palSetPadMode(GPIOA,1,PAL_MODE_OUTPUT_PUSHPULL);	// MCP3208
	//changes
	palWritePad(GPIOA,4,1);								// pull high to disable first MCP3208
	palWritePad(GPIOA,1,1);								// pull high to disable second MCP3208
}

void loop(void){
	// txtbuf[0] = txtbuf[1] = txtbuf[2] = 0b00000000;
   	txbuf[2] = 0b00000000;
 	
    	for(int pin=0; pin<8; pin++){
 
	        txbuf[0] = pin < 4 ? 0b01100000 : 0b11100000;
	 
	        if (pin % 4 == 0) { // pin == 0 || pin == 4
	            txbuf[1] = 0b00000000;
	        } else if (pin % 4 == 1) { // pin == 1 || pin == 5
	            txbuf[1] = 0b00000010;
	        } else if (pin % 4 == 2) { // pin == 2 || pin == 6
	            txbuf[1] = 0b00000001;
	        } else {
	            txbuf[1] = 0b00000011;
	        }
			

		palWritePad(GPIOA,4,0);		// enable MCP3208 #1
		spiStart(&SPID1, &spicfg_a);
		spiSelect(&SPID1);			// START SPI
		spiSend(&SPID1,3,txbuf);	// send SPI data txbuf[]
		spiReceive(&SPID1,3,rxbuf);	// receive SPI data from MCP3208
		spiUnselect(&SPID1);		// STOP SPI
		palWritePad(GPIOA,4,1);		// disable MCP3208 #1
				
		int z = (rxbuf[1] << 8| rxbuf[0]) << 16;

		if (pin == 0){
			PExParameterChange(&parent->PExch[PARAM_INDEX_c0_value],z,0xFFFD);
		}
		else if (pin == 1){
			PExParameterChange(&parent->PExch[PARAM_INDEX_c1_value],z,0xFFFD); 
		}
		else if (pin == 2){
			PExParameterChange(&parent->PExch[PARAM_INDEX_c2_value],z,0xFFFD);
		}
		else if (pin == 3){
			PExParameterChange(&parent->PExch[PARAM_INDEX_c3_value],z,0xFFFD);
		}
		else if (pin == 4){
			PExParameterChange(&parent->PExch[PARAM_INDEX_c4_value],z,0xFFFD);
		}
		else if (pin == 5){
			PExParameterChange(&parent->PExch[PARAM_INDEX_c5_value],z,0xFFFD);
		}
		else if (pin == 6){
			PExParameterChange(&parent->PExch[PARAM_INDEX_c6_value],z,0xFFFD);
		}
		else if (pin == 7){
			PExParameterChange(&parent->PExch[PARAM_INDEX_c7_value],z,0xFFFD);
		}
	
	}
	chThdSleepMilliseconds(10);
	txbuf[2] = 0b00000000;

	for(int pin=0; pin<8; pin++){
 
	        txbuf[0] = pin < 4 ? 0b01100000 : 0b11100000;
	 
	        if (pin % 4 == 0) { // pin == 0 || pin == 4
	            txbuf[1] = 0b00000000;
	        } else if (pin % 4 == 1) { // pin == 1 || pin == 5
	            txbuf[1] = 0b00000010;
	        } else if (pin % 4 == 2) { // pin == 2 || pin == 6
	            txbuf[1] = 0b00000001;
	        } else {
	            txbuf[1] = 0b00000011;
	        }

		palWritePad(GPIOA,1,0);		// enable MCP3208  #2
		spiStart(&SPID1, &spicfg_b);
		spiSelect(&SPID1);			// START SPI
		spiSend(&SPID1,3,txbuf);	// send SPI data txbuf[]
		spiReceive(&SPID1,3,rxbuf);	// receive SPI data from MCP3208
		spiUnselect(&SPID1);		// STOP SPI
		palWritePad(GPIOA,1,1);		// disable MCP3208 #2
				
		int zz = (rxbuf[1] << 8| rxbuf[0]) << 16;

		if (pin == 0){
			PExParameterChange(&parent->PExch[PARAM_INDEX_d0_value],zz,0xFFFD);
		}
		else if (pin == 1){
			PExParameterChange(&parent->PExch[PARAM_INDEX_d1_value],zz,0xFFFD); 
		}
		else if (pin == 2){
			PExParameterChange(&parent->PExch[PARAM_INDEX_d2_value],zz,0xFFFD);
		}
		else if (pin == 3){
			PExParameterChange(&parent->PExch[PARAM_INDEX_d3_value],zz,0xFFFD);
		}
		else if (pin == 4){
			PExParameterChange(&parent->PExch[PARAM_INDEX_d4_value],zz,0xFFFD);
		}
		else if (pin == 5){
			PExParameterChange(&parent->PExch[PARAM_INDEX_d5_value],zz,0xFFFD);
		}
		else if (pin == 6){
			PExParameterChange(&parent->PExch[PARAM_INDEX_d6_value],zz,0xFFFD);
		}
		else if (pin == 7){
			PExParameterChange(&parent->PExch[PARAM_INDEX_d7_value],zz,0xFFFD);
		}	
	}
	chThdSleepMilliseconds(10);
}]]></sText>
         </text>
      </attribs>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="c0" x="28" y="336">
      <params>
         <frac32.u.map name="value" value="17.375"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="c1" x="112" y="336">
      <params>
         <frac32.u.map name="value" value="37.53125"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="c2" x="196" y="336">
      <params>
         <frac32.u.map name="value" value="53.1875"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="c3" x="280" y="336">
      <params>
         <frac32.u.map name="value" value="24.9375"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="c4" x="364" y="336">
      <params>
         <frac32.u.map name="value" value="63.75"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="c5" x="448" y="336">
      <params>
         <frac32.u.map name="value" value="6.53125"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="c6" x="532" y="336">
      <params>
         <frac32.u.map name="value" value="63.75"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="c7" x="616" y="336">
      <params>
         <frac32.u.map name="value" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="C0" x="28" y="420">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="C1" x="112" y="420">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="C2" x="196" y="420">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="C3" x="280" y="420">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="C4" x="364" y="420">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="C5" x="448" y="420">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="C6" x="532" y="420">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="C7" x="616" y="420">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="d0" x="28" y="476">
      <params>
         <frac32.u.map name="value" value="0.03125"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="d1" x="112" y="476">
      <params>
         <frac32.u.map name="value" value="2.4375"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="d2" x="196" y="476">
      <params>
         <frac32.u.map name="value" value="40.8125"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="d3" x="280" y="476">
      <params>
         <frac32.u.map name="value" value="63.75"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="d4" x="364" y="476">
      <params>
         <frac32.u.map name="value" value="16.40625"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="d5" x="448" y="476">
      <params>
         <frac32.u.map name="value" value="3.28125"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="d6" x="532" y="476">
      <params>
         <frac32.u.map name="value" value="19.21875"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="d7" x="616" y="476">
      <params>
         <frac32.u.map name="value" value="17.3125"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="D0" x="28" y="560">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="D1" x="112" y="560">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="D2" x="196" y="560">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="D3" x="280" y="560">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="D4" x="364" y="560">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="D5" x="448" y="560">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="D6" x="532" y="560">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="D7" x="616" y="560">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="c1" outlet="out"/>
         <dest obj="C1" inlet="outlet"/>
      </net>
      <net>
         <source obj="c0" outlet="out"/>
         <dest obj="C0" inlet="outlet"/>
      </net>
      <net>
         <source obj="c2" outlet="out"/>
         <dest obj="C2" inlet="outlet"/>
      </net>
      <net>
         <source obj="c3" outlet="out"/>
         <dest obj="C3" inlet="outlet"/>
      </net>
      <net>
         <source obj="c4" outlet="out"/>
         <dest obj="C4" inlet="outlet"/>
      </net>
      <net>
         <source obj="c5" outlet="out"/>
         <dest obj="C5" inlet="outlet"/>
      </net>
      <net>
         <source obj="c6" outlet="out"/>
         <dest obj="C6" inlet="outlet"/>
      </net>
      <net>
         <source obj="c7" outlet="out"/>
         <dest obj="C7" inlet="outlet"/>
      </net>
      <net>
         <source obj="d0" outlet="out"/>
         <dest obj="D0" inlet="outlet"/>
      </net>
      <net>
         <source obj="d1" outlet="out"/>
         <dest obj="D1" inlet="outlet"/>
      </net>
      <net>
         <source obj="d2" outlet="out"/>
         <dest obj="D2" inlet="outlet"/>
      </net>
      <net>
         <source obj="d3" outlet="out"/>
         <dest obj="D3" inlet="outlet"/>
      </net>
      <net>
         <source obj="d4" outlet="out"/>
         <dest obj="D4" inlet="outlet"/>
      </net>
      <net>
         <source obj="d5" outlet="out"/>
         <dest obj="D5" inlet="outlet"/>
      </net>
      <net>
         <source obj="d6" outlet="out"/>
         <dest obj="D6" inlet="outlet"/>
      </net>
      <net>
         <source obj="d7" outlet="out"/>
         <dest obj="D7" inlet="outlet"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>no</subpatchmode>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>276</x>
      <y>195</y>
      <width>961</width>
      <height>637</height>
   </windowPos>
</patch-1.0>