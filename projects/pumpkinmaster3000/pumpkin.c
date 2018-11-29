/*
MCP3208 script2 code
by paul
adapted by kaos, this script is not working, there is problem...

Connect the MCP3208 CS pin to the NSS(PA4) or any other digital out pin of axoloti.
In this example, the MCP3208 CS pin is connected to axoloti B0(GPIOB,0) pin.

If you use more then one spi device, it's importent to disable every other spi device by switching their cs pin. 
*/

uint8_t *txbuf;
uint8_t *rxbuf;
const SPIConfig spicfg_a = {NULL, GPIOA, 4, 3<<3  | SPI_CR1_LSBFIRST }; //MCP3208 pin PA4
const SPIConfig spicfg_b = {NULL, GPIOA, 3, 3<<3  | SPI_CR1_LSBFIRST }; //MCP3208 pin PA3




void setup(void){
	static uint8_t _txbuf[8] __attribute__ ((section (".sram2")));
	static uint8_t _rxbuf[8] __attribute__ ((section (".sram2")));
	txbuf = _txbuf;
	rxbuf = _rxbuf;

	palSetPadMode(GPIOA,4,PAL_MODE_OUTPUT_PUSHPULL);	// MCP3208
	palSetPadMode(GPIOA,3,PAL_MODE_OUTPUT_PUSHPULL);	// MCP3208
	//changes
	palWritePad(GPIOA,4,1);								// pull high to disable first MCP3208
	palWritePad(GPIOA,3,1);								// pull high to disable second MCP3208
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

		palWritePad(GPIOA,3,0);		// enable MCP3208  #2
		spiStart(&SPID1, &spicfg_b);
		spiSelect(&SPID1);			// START SPI
		spiSend(&SPID1,3,txbuf);	// send SPI data txbuf[]
		spiReceive(&SPID1,3,rxbuf);	// receive SPI data from MCP3208
		spiUnselect(&SPID1);		// STOP SPI
		palWritePad(GPIOA,3,1);		// disable MCP3208 #2
				
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
}