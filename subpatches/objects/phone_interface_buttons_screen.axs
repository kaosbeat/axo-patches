<patch-1.0 appVersion="1.0.12">
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="top" x="1596" y="70">
      <params/>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="980" y="112" text="top"/>
   <comment type="patch/comment" x="1204" y="112" text="toggle 1"/>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="bottom" x="1596" y="112">
      <params/>
      <attribs/>
   </obj>
   <obj type="rbrt/patching/loadbang" uuid="45d1f29d-ac62-4e5b-86f8-2201d2f6c689" name="loadbang_1" x="70" y="126">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/in/digital" uuid="f59f139e8da912742832dc541157f20f30b7ac1b" name="digital_5" x="980" y="126">
      <params/>
      <attribs>
         <combo attributeName="pad" selection="PB8"/>
         <combo attributeName="mode" selection="pulldown"/>
      </attribs>
   </obj>
   <obj type="disp/bool" uuid="a0ee71d48208b71752cbb8c05e55145106ef3946" name="bool_13" x="1064" y="126">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/in/digital" uuid="f59f139e8da912742832dc541157f20f30b7ac1b" name="digital_7" x="1204" y="126">
      <params/>
      <attribs>
         <combo attributeName="pad" selection="PB6"/>
         <combo attributeName="mode" selection="pulldown"/>
      </attribs>
   </obj>
   <obj type="disp/bool" uuid="a0ee71d48208b71752cbb8c05e55145106ef3946" name="bool_15" x="1288" y="126">
      <params/>
      <attribs/>
   </obj>
   <patchobj type="patch/object" uuid="50feeb18-5b8e-473e-a485-dd8e3c39a5d9" name="lkm1638_full_1" x="392" y="140">
      <params/>
      <attribs>
         <table attributeName="display" table="test"/>
      </attribs>
      <object id="patch/object" uuid="50feeb18-5b8e-473e-a485-dd8e3c39a5d9">
         <sDescription>Sets a text to the display. Uses the buttons on the LKM1638 as toggles. Lights up the corresponding LEDs.</sDescription>
         <author>Jan Vantomme</author>
         <license>BSD</license>
         <helpPatch>lkm1638_dyn.axh</helpPatch>
         <inlets>
            <charptr32 name="display" description="display text"/>
            <bool32.rising name="dispupd" description="trigger display"/>
            <bool32 name="LED1rd" description="LED1 rd"/>
            <bool32 name="LED1gn" description="LED1 gn"/>
            <bool32 name="LED2rd" description="LED2 rd"/>
            <bool32 name="LED2gn" description="LED2 gn"/>
            <bool32 name="LED3rd" description="LED3 rd"/>
            <bool32 name="LED3gn" description="LED3  gn"/>
            <bool32 name="LED4rd" description="LED4 rd"/>
            <bool32 name="LED4gn" description="LED4 gn"/>
            <bool32 name="LED5rd" description="LED5 rd"/>
            <bool32 name="LED5gn" description="LED5 gn"/>
            <bool32 name="LED6rd" description="LED6 rd"/>
            <bool32 name="LED6gn" description="LED6 gn"/>
            <bool32 name="LED7rd" description="LED7 rd"/>
            <bool32 name="LED7gn" description="LED7 gn"/>
            <bool32 name="LED8rd" description="LED8 rd"/>
            <bool32 name="LED8gn" description="LED8 gn"/>
            <bool32.rising name="dispres" description="reset display"/>
         </inlets>
         <outlets>
            <bool32 name="button1" description="button1"/>
            <bool32 name="button2" description="button2"/>
            <bool32 name="button3" description="button3"/>
            <bool32 name="button4" description="button4"/>
            <bool32 name="button5" description="button5"/>
            <bool32 name="button6" description="button6"/>
            <bool32 name="button7" description="button7"/>
            <bool32 name="button8" description="button8"/>
         </outlets>
         <displays/>
         <params/>
         <attribs>
            <table name="display"/>
         </attribs>
         <includes/>
         <depends>
            <depend>SPID1</depend>
         </depends>
         <code.declaration><![CDATA[uint8_t *txbuf;
		uint8_t *rxbuf;

		bool btn1;
		bool btn2;
		bool btn3;
		bool btn4;
		bool btn5;
		bool btn6;
		bool btn7;
		bool btn8;
		bool led_red[8]={false};
		bool led_green[8]={false};
		bool i1_prev=false;
		bool i2_prev=false;
		
		char txt[8];

		// Font to use on the display
		// ------------------------------------
		
		uint8_t tm1638_font(char c)
		{
			const uint8_t f[] = {
    			0x00, 0x00, 0x00, 0x00,  0x00, 0x00, 0x00, 0x00,
    			0x00, 0x00, 0x00, 0x00,  0x00, 0x00, 0x00, 0x00,
    			0x00, 0x00, 0x00, 0x00,  0x00, 0x00, 0x00, 0x00,
    			0x00, 0x00, 0x00, 0x00,  0x00, 0x00, 0x00, 0x00,
    			0x00, 0x86, 0x22, 0x7e,  0x6d, 0x00, 0x00, 0x02,
    			0x30, 0x06, 0x63, 0x00,  0x04, 0x40, 0x80, 0x52,
    			0x3f, 0x06, 0x5b, 0x4f,  0x66, 0x6d, 0x7d, 0x27,
    			0x7f, 0x6f, 0x00, 0x00,  0x00, 0x48, 0x00, 0x53,
    			0x5f, 0x77, 0x7f, 0x39,  0x3f, 0x79, 0x71, 0x3d,
    			0x76, 0x06, 0x1f, 0x69,  0x38, 0x15, 0x37, 0x3f,
    			0x73, 0x67, 0x31, 0x6d,  0x78, 0x3e, 0x2a, 0x1d,
    			0x76, 0x6e, 0x5b, 0x39,  0x64, 0x0f, 0x00, 0x08,
    			0x20, 0x5f, 0x7c, 0x58,  0x5e, 0x7b, 0x31, 0x6f,
    			0x74, 0x04, 0x0e, 0x75,  0x30, 0x55, 0x54, 0x5c,
    			0x73, 0x67, 0x50, 0x6d,  0x78, 0x1c, 0x2a, 0x1d,
    			0x76, 0x6e, 0x47, 0x46,  0x06, 0x70, 0x01, 0x00
  			};

  			return (c > 127) ? 0 : f[(unsigned char)c];
		}

		// Send a raw character to the display
		// ------------------------------------

		void tm1638_set_7seg_raw( uint8_t digit, uint8_t n)
		{
			tm1638_send_data( digit << 1, n);
		}

		// Send a text to the display
		// ------------------------------------

		void tm1638_set_7seg_text( const char *str, uint8_t dots)
		{
			const char *p = str;

			for(int i = 0, j = 1; i < 8; i++, j <<= 1) {
				// We want the loop to finish, but don't walk over the end of the string
				char c = *p;
				if (c) {
					p++;
      			}
      			
				uint8_t f =  tm1638_font(c);

				if (dots & j) {
					f |= 128;
				}
				
				tm1638_set_7seg_raw( i, f);
			}
		}


		// Send a command to the TM1638 Chip
		// ------------------------------------

		void tm1638_send_command( uint8_t x )
		{
			SPID1.spi->CR1 |= SPI_CR1_BIDIOE;
			spiSelect( &SPID1 );
			txbuf[0] = x;
			spiSend( &SPID1, 1, &txbuf[0] );
			spiUnselect( &SPID1 );
		}

		// Send data to the TM1638 Chip
		// ------------------------------------

		void tm1638_send_data( uint8_t addr, uint8_t data ){
			SPID1.spi->CR1 |= SPI_CR1_BIDIOE;
			tm1638_send_command( 0x44 );
			txbuf[0] = addr | 0xc0;
			txbuf[1] = data;
			spiSelect( &SPID1 );
			spiSend( &SPID1, 2, txbuf );
			spiUnselect( &SPID1 );
		}

		//Clear display
		//------------------------------------------
		
		void tm1638_reset(){
					
			SPID1.spi->CR1 |= SPI_CR1_BIDIOE;
			tm1638_send_command( 0x40 );
			uint8_t addr;
			spiSelect( &SPID1 );
			addr = 0xc0;
			txbuf[0] = 0xc0;
			for ( uint8_t i=1; i<<17; i++){
				txbuf[i] = 0x00;}
			spiSend( &SPID1, 17, txbuf );
			spiUnselect( &SPID1 );
		}

		void tm1638_read_buttons(){

			//LogTextMessage("Reading Buttons!");
			txbuf[0] = 0x42;
			spiSelect(&SPID1);
			spiSend(&SPID1,1,&txbuf[0]);
			palSetPadMode(GPIOA, 7, PAL_MODE_INPUT); // MOSI -> tristate
			chThdSleepMilliseconds( 1 );
			spiReceive(&SPID1,4,rxbuf);
			spiUnselect(&SPID1);
			palSetPadMode(GPIOA, 7, PAL_MODE_ALTERNATE(5)); // MOSI -> output

		
			 btn1 = rxbuf[0]&0x01 ? true : false;
			 btn2 = rxbuf[1]&0x01 ? true : false;
			 btn3 = rxbuf[2]&0x01 ? true : false;
			 btn4 = rxbuf[3]&0x01 ? true : false;
			 btn5 = rxbuf[0]&0x10 ? true : false;
			 btn6 = rxbuf[1]&0x10 ? true : false;
			 btn7 = rxbuf[2]&0x10 ? true : false;
			 btn8 = rxbuf[3]&0x10 ? true : false;
		 
		
		}


		// Set the color for a single LED
		// ------------------------------------
		// 0 = OFF
		// 1 = GREEN
		// 2 = RED

		void tm1638_set_led( uint8_t led, uint8_t cols ){
			tm1638_send_data( (led << 1) + 1, cols );
		}

		
		// SETUP
		// ------------------

		void setup()
		{
			static uint8_t _txbuf[8] __attribute__ ((section (".sram2")));
			static uint8_t _rxbuf[8] __attribute__ ((section (".sram2")));
			txbuf = _txbuf;
			rxbuf = _rxbuf;

			// initialize display and set brightness (0x8a..0x8f)
			//--------------------------------------------------
			tm1638_send_command(0x8a); 
			
				// Copy the text from the text field into the txt variable
				strcpy( &txt[0], "attr_display" );
				// Send the text to the display
				tm1638_set_7seg_text( txt, 0 );
			
		}

		// LOOP
		// ------------------
		void loop (){
			tm1638_read_buttons();
			//required to handle text display in K-rate
			chThdSleepMilliseconds( 100 );

			//set LEDs to green, red or off
			if ( led_red[1] == true ) {
				tm1638_set_led( 0, 2 );
			} 
			else if ( led_green[1] == true ) {
				tm1638_set_led( 0, 1 );
			} 
			else {
				tm1638_set_led( 0, 0 );
			}

			if ( led_red[2] == true ) {
				tm1638_set_led( 1, 2 );
			} 
			else if ( led_green[2] == true ) {
				tm1638_set_led( 1, 1 );
			} 
			else {
				tm1638_set_led( 1, 0 );
			}

			if ( led_red[3] == true ) {
				tm1638_set_led( 2, 2 );
			} 
			else if ( led_green[3] == true ) {
				tm1638_set_led( 2, 1 );
			} 
			else {
				tm1638_set_led( 2, 0 );
			}

			if ( led_red[4] == true ) {
				tm1638_set_led( 3, 2 );
			} 
			else if ( led_green[4] == true ) {
				tm1638_set_led( 3, 1 );
			} 
			else {
				tm1638_set_led( 3, 0 );
			}

			if ( led_red[5] == true ) {
				tm1638_set_led( 4, 2 );
			} 
			else if ( led_green[5] == true ) {
				tm1638_set_led( 4, 1 );
			} 
			else {
				tm1638_set_led( 4, 0 );
			}

			if ( led_red[6] == true ) {
				tm1638_set_led( 5, 2 );
			} 
			else if ( led_green[6] == true ) {
				tm1638_set_led( 5, 1 );
			} 
			else {
				tm1638_set_led( 5, 0 );
			}

			if ( led_red[7] == true ) {
				tm1638_set_led( 6, 2 );
			} 
			else if ( led_green[7] == true ) {
				tm1638_set_led( 6, 1 );
			} 
			else {
				tm1638_set_led( 6, 0 );
			}

			if ( led_red[8] == true ) {
				tm1638_set_led( 7, 2 );
			} 
			else if ( led_green[8] == true ) {
				tm1638_set_led( 7, 1 );
			} 
			else {
				tm1638_set_led( 7, 0 );
			}

		chThdSleepMilliseconds( 100 );
		}
		// ------------------------------------------------------------------------------------------------
		// THREADS
		// ------------------------------------------------------------------------------------------------

		msg_t ThreadX2()
		{
			setup();
			while ( !chThdShouldTerminate() ) {
			loop();
			chThdSleepMilliseconds( 10 );
			}
	
			chThdExit((msg_t)0);
		}

		static msg_t ThreadX(void *arg) {
			((attr_parent *)arg)->ThreadX2();
		}

		WORKING_AREA(waThreadX, 1024);

		Thread *Thd;]]></code.declaration>
         <code.init><![CDATA[Thd = chThdCreateStatic(waThreadX, sizeof(waThreadX), NORMALPRIO, ThreadX, (void *)this);

//		 btn1 = false;
//		 btn2 = false;
//		 btn3 = false;
//		 btn4 = false;
//		 btn5 = false;
//		 btn6 = false;
//		 btn7 = false;
//		 btn8 = false;
		 
//		 btn1_on = false;
//		 btn2_on = false;
//		 btn3_on = false;
//		 btn4_on = false;
//		 btn5_on = false;
//		 btn6_on = false;
//		 btn7_on = false;
//		 btn8_on = false;
//
//		buttons_prev = 0;]]></code.init>
         <code.dispose><![CDATA[chThdTerminate( Thd );
		chThdWait( Thd );]]></code.dispose>
         <code.krate><![CDATA[//update text display

if (i1_prev == false){
			if (inlet_dispupd == true) {tm1638_set_7seg_text(inlet_display, 0 );
	 				i1_prev = true;
//	 				chThdSleepMilliseconds( 100 );
					}
}
if (i1_prev == true){			
		if (inlet_dispupd == false) {i1_prev = false;
//					chThdSleepMilliseconds( 100 );
			}
	}
//clear text display
if (i2_prev == false){		
		if (inlet_dispres == true) {tm1638_reset();
	 			i2_prev = true;
				//chThdSleepMilliseconds( 10 );
				}		
		}
if (inlet_dispres == false && i2_prev == true) {i2_prev = false;
				//chThdSleepMilliseconds( 10 );
				}

//transfer local variables to outputs		
		 outlet_button1 = btn1;
		 outlet_button2 = btn2;
		 outlet_button3 = btn3;
		 outlet_button4 = btn4;
		 outlet_button5 = btn5;
		 outlet_button6 = btn6;
		 outlet_button7 = btn7;
		 outlet_button8 = btn8;

//transfer inputs to local variables
	led_red[1]=inlet_LED1rd;
	led_red[2]=inlet_LED2rd;
	led_red[3]=inlet_LED3rd;
	led_red[4]=inlet_LED4rd;
	led_red[5]=inlet_LED5rd;
	led_red[6]=inlet_LED6rd;
	led_red[7]=inlet_LED7rd;
	led_red[8]=inlet_LED8rd;
	led_green[1]=inlet_LED1gn;
	led_green[2]=inlet_LED2gn;
	led_green[3]=inlet_LED3gn;
	led_green[4]=inlet_LED4gn;
	led_green[5]=inlet_LED5gn;
	led_green[6]=inlet_LED6gn;
	led_green[7]=inlet_LED7gn;
	led_green[8]=inlet_LED8gn;]]></code.krate>
      </object>
   </patchobj>
   <obj type="gpio/spi/config" uuid="d3e75d8a02e2ccabbbc2af3bc2fcdb8ea65a6133" name="spi.begin_2" x="70" y="168">
      <params/>
      <attribs>
         <combo attributeName="clock_polarity" selection="0 when idle"/>
         <combo attributeName="clock_phase" selection="first clock transition is the first data capture edge"/>
         <combo attributeName="baudrate" selection="FPCLK/128"/>
         <combo attributeName="format" selection="LSB first"/>
      </attribs>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="toggle 1" x="1596" y="182">
      <params/>
      <attribs/>
   </obj>
   <obj type="timer/delayedpulse" uuid="3f05ee534ca67755fb20c7437f9e4de3d4c2f73d" name="delayedpulse_1" x="238" y="210">
      <params>
         <frac32.s.map name="delay" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="980" y="210" text="bottom"/>
   <obj type="gpio/in/digital" uuid="f59f139e8da912742832dc541157f20f30b7ac1b" name="digital_6" x="980" y="224">
      <params/>
      <attribs>
         <combo attributeName="pad" selection="PB9"/>
         <combo attributeName="mode" selection="pulldown"/>
      </attribs>
   </obj>
   <obj type="disp/bool" uuid="a0ee71d48208b71752cbb8c05e55145106ef3946" name="bool_14" x="1064" y="224">
      <params/>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="1204" y="224" text="toggle 2"/>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="toggle 2" x="1596" y="224">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/in/digital" uuid="f59f139e8da912742832dc541157f20f30b7ac1b" name="digital_8" x="1204" y="238">
      <params/>
      <attribs>
         <combo attributeName="pad" selection="PB7"/>
         <combo attributeName="mode" selection="pulldown"/>
      </attribs>
   </obj>
   <obj type="disp/bool" uuid="a0ee71d48208b71752cbb8c05e55145106ef3946" name="bool_16" x="1288" y="238">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/in/analog" uuid="1c0c845ed2d7e06ae5f377ba13d9d09f4747ac87" name="analog_1" x="868" y="350">
      <params/>
      <attribs>
         <combo attributeName="channel" selection="PC0 (ADC1_IN10)"/>
      </attribs>
   </obj>
   <obj type="gpio/in/analog" uuid="1c0c845ed2d7e06ae5f377ba13d9d09f4747ac87" name="analog_2" x="1022" y="350">
      <params/>
      <attribs>
         <combo attributeName="channel" selection="PC1 (ADC1_IN11)"/>
      </attribs>
   </obj>
   <obj type="gpio/in/analog" uuid="1c0c845ed2d7e06ae5f377ba13d9d09f4747ac87" name="analog_3" x="1204" y="350">
      <params/>
      <attribs>
         <combo attributeName="channel" selection="PC2 (ADC1_IN12)"/>
      </attribs>
   </obj>
   <obj type="gpio/in/analog" uuid="1c0c845ed2d7e06ae5f377ba13d9d09f4747ac87" name="analog_4" x="1372" y="350">
      <params/>
      <attribs>
         <combo attributeName="channel" selection="PC3 (ADC1_IN13)"/>
      </attribs>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="dial 1" x="1596" y="350">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="dial 2" x="1596" y="392">
      <params/>
      <attribs/>
   </obj>
   <obj type="disp/dial p" uuid="44fd18b562e434b3230441681132dbeabb15cdc5" name="dial_1" x="924" y="406">
      <params/>
      <attribs/>
   </obj>
   <obj type="disp/dial p" uuid="44fd18b562e434b3230441681132dbeabb15cdc5" name="dial_2" x="1078" y="406">
      <params/>
      <attribs/>
   </obj>
   <obj type="disp/dial p" uuid="44fd18b562e434b3230441681132dbeabb15cdc5" name="dial_3" x="1260" y="406">
      <params/>
      <attribs/>
   </obj>
   <obj type="disp/dial p" uuid="44fd18b562e434b3230441681132dbeabb15cdc5" name="dial_4" x="1428" y="406">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="dial 3" x="1596" y="434">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="dial 4" x="1596" y="476">
      <params/>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="462" y="504" text="forward"/>
   <obj type="gpio/in/digital" uuid="f59f139e8da912742832dc541157f20f30b7ac1b" name="digital_1" x="462" y="518">
      <params/>
      <attribs>
         <combo attributeName="pad" selection="PA0"/>
         <combo attributeName="mode" selection="pulldown"/>
      </attribs>
   </obj>
   <comment type="patch/comment" x="1050" y="518" text="button 2"/>
   <comment type="patch/comment" x="1400" y="518" text="button 4"/>
   <obj type="disp/bool" uuid="a0ee71d48208b71752cbb8c05e55145106ef3946" name="bool_9" x="546" y="532">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/in/digital" uuid="f59f139e8da912742832dc541157f20f30b7ac1b" name="digital_10" x="1050" y="532">
      <params/>
      <attribs>
         <combo attributeName="pad" selection="PB1"/>
         <combo attributeName="mode" selection="pulldown"/>
      </attribs>
   </obj>
   <obj type="disp/bool" uuid="a0ee71d48208b71752cbb8c05e55145106ef3946" name="bool_18" x="1134" y="532">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/in/digital" uuid="f59f139e8da912742832dc541157f20f30b7ac1b" name="digital_12" x="1400" y="532">
      <params/>
      <attribs>
         <combo attributeName="pad" selection="PC5"/>
         <combo attributeName="mode" selection="pulldown"/>
      </attribs>
   </obj>
   <obj type="disp/bool" uuid="a0ee71d48208b71752cbb8c05e55145106ef3946" name="bool_20" x="1484" y="532">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="button 1" x="1596" y="588">
      <params/>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="364" y="602" text="down"/>
   <comment type="patch/comment" x="560" y="602" text="up"/>
   <comment type="patch/comment" x="882" y="602" text="button 1"/>
   <comment type="patch/comment" x="1218" y="602" text="button 3"/>
   <obj type="gpio/in/digital" uuid="f59f139e8da912742832dc541157f20f30b7ac1b" name="digital_4" x="364" y="616">
      <params/>
      <attribs>
         <combo attributeName="pad" selection="PA2"/>
         <combo attributeName="mode" selection="pulldown"/>
      </attribs>
   </obj>
   <obj type="disp/bool" uuid="a0ee71d48208b71752cbb8c05e55145106ef3946" name="bool_12" x="448" y="616">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/in/digital" uuid="f59f139e8da912742832dc541157f20f30b7ac1b" name="digital_2" x="560" y="616">
      <params/>
      <attribs>
         <combo attributeName="pad" selection="PA3"/>
         <combo attributeName="mode" selection="pulldown"/>
      </attribs>
   </obj>
   <obj type="disp/bool" uuid="a0ee71d48208b71752cbb8c05e55145106ef3946" name="bool_10" x="644" y="616">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/in/digital" uuid="f59f139e8da912742832dc541157f20f30b7ac1b" name="digital_9" x="882" y="616">
      <params/>
      <attribs>
         <combo attributeName="pad" selection="PB0"/>
         <combo attributeName="mode" selection="pulldown"/>
      </attribs>
   </obj>
   <obj type="disp/bool" uuid="a0ee71d48208b71752cbb8c05e55145106ef3946" name="bool_17" x="966" y="616">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/in/digital" uuid="f59f139e8da912742832dc541157f20f30b7ac1b" name="digital_11" x="1218" y="616">
      <params/>
      <attribs>
         <combo attributeName="pad" selection="PC4"/>
         <combo attributeName="mode" selection="pulldown"/>
      </attribs>
   </obj>
   <obj type="disp/bool" uuid="a0ee71d48208b71752cbb8c05e55145106ef3946" name="bool_19" x="1302" y="616">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="button 2" x="1596" y="630">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="button 3" x="1596" y="672">
      <params/>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="476" y="700" text="back"/>
   <obj type="gpio/in/digital" uuid="f59f139e8da912742832dc541157f20f30b7ac1b" name="digital_3" x="476" y="714">
      <params/>
      <attribs>
         <combo attributeName="pad" selection="PA1"/>
         <combo attributeName="mode" selection="pulldown"/>
      </attribs>
   </obj>
   <obj type="disp/bool" uuid="a0ee71d48208b71752cbb8c05e55145106ef3946" name="bool_11" x="560" y="714">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="button 4" x="1596" y="714">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="forward" x="1596" y="798">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/button" uuid="ef3d13774349df85aa9bfecf30dbc91ab8488b3f" name="button_1" x="238" y="812">
      <params>
         <bool32.mom name="b" value="0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="backward" x="1596" y="840">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/i" uuid="a3786816db6ea5bc6ac4193a5cccdb2c83b83496" name="i_1" x="252" y="882">
      <params>
         <int32 name="value" value="2"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="up" x="1596" y="882">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet i" uuid="f11927f00c59219df0c50f73056aa19f125540b7" name="green" x="42" y="896">
      <params/>
      <attribs/>
   </obj>
   <patcher type="patch/patcher" uuid="50baba42-b143-4459-ace5-d3dec6457267" name="patcher_2" x="154" y="896">
      <params/>
      <attribs/>
      <subpatch appVersion="1.0.12">
         <obj type="patch/inlet i" uuid="f11927f00c59219df0c50f73056aa19f125540b7" name="setnumber" x="14" y="14">
            <params/>
            <attribs/>
         </obj>
         <obj type="mux/mux 2" uuid="16f90f81694766b0bc8187bfcba5a021e5701d81" name="mux_1" x="532" y="28">
            <params/>
            <attribs/>
         </obj>
         <obj type="patch/outlet i" uuid="aae2176b26209e34e4fdeba5edb1ace82d178655" name="in" x="672" y="42">
            <params/>
            <attribs/>
         </obj>
         <obj type="logic/change" uuid="96e39ae624c3f3c952cec4a95e1986ee0104f718" name="change_1" x="98" y="70">
            <params/>
            <attribs/>
         </obj>
         <obj type="drj/math/== const i" uuid="36ae23539d64bc2fb798a1b4a65cf9dda17a1952" name="==_1" x="350" y="70">
            <params/>
            <attribs>
               <spinner attributeName="value" value="7"/>
            </attribs>
         </obj>
         <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="def" x="672" y="98">
            <params/>
            <attribs/>
         </obj>
         <obj type="rbrt/control/gate i" uuid="1c6fad01-84d2-4635-9ce0-11270f15d835" name="gate_1" x="364" y="140">
            <params/>
            <attribs/>
         </obj>
         <obj type="lfo/square" uuid="de6909eb64db13af5b43f979a4c130024b3a4793" name="square_1" x="140" y="168">
            <params>
               <frac32.s.map name="pitch" value="0.0"/>
            </params>
            <attribs/>
         </obj>
         <obj type="logic/counter" uuid="7a141ba82230e54e5f5cd12da5dbe5a74ba854a5" name="counter_1" x="252" y="168">
            <params>
               <int32 name="maximum" value="8"/>
            </params>
            <attribs/>
         </obj>
         <obj type="logic/inv" uuid="2bd44b865d3b63ff9b80862242bf5be779e3ad5" name="inv_1" x="546" y="168">
            <params/>
            <attribs/>
         </obj>
         <obj type="logic/flipflop toggle" uuid="195e489e5fc3d275944b0de56c7a91c8641ea22a" name="flipflop_1" x="364" y="210">
            <params/>
            <attribs/>
         </obj>
         <nets>
            <net>
               <source obj="square_1" outlet="wave"/>
               <dest obj="counter_1" inlet="trig"/>
            </net>
            <net>
               <source obj="change_1" outlet="trig"/>
               <dest obj="square_1" inlet="reset"/>
               <dest obj="counter_1" inlet="r"/>
               <dest obj="flipflop_1" inlet="set"/>
            </net>
            <net>
               <source obj="counter_1" outlet="o"/>
               <dest obj="gate_1" inlet="in"/>
               <dest obj="==_1" inlet="in"/>
            </net>
            <net>
               <source obj="gate_1" outlet="out"/>
               <dest obj="mux_1" inlet="i2"/>
            </net>
            <net>
               <source obj="flipflop_1" outlet="o"/>
               <dest obj="gate_1" inlet="control"/>
               <dest obj="inv_1" inlet="i"/>
               <dest obj="mux_1" inlet="s"/>
            </net>
            <net>
               <source obj="==_1" outlet="out"/>
               <dest obj="flipflop_1" inlet="reset"/>
            </net>
            <net>
               <source obj="inv_1" outlet="o"/>
               <dest obj="def" inlet="outlet"/>
            </net>
            <net>
               <source obj="mux_1" outlet="o"/>
               <dest obj="in" inlet="outlet"/>
            </net>
            <net>
               <source obj="setnumber" outlet="inlet"/>
               <dest obj="mux_1" inlet="i1"/>
               <dest obj="change_1" inlet="in"/>
            </net>
         </nets>
         <settings>
            <subpatchmode>no</subpatchmode>
         </settings>
         <notes><![CDATA[]]></notes>
         <windowPos>
            <x>0</x>
            <y>23</y>
            <width>931</width>
            <height>602</height>
         </windowPos>
      </subpatch>
   </patcher>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="down" x="1596" y="924">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet i" uuid="f11927f00c59219df0c50f73056aa19f125540b7" name="red" x="42" y="952">
      <params/>
      <attribs/>
   </obj>
   <patcher type="patch/patcher" uuid="e7131996-0c3c-43fe-af2e-f88bd1b09282" name="patcher_3" x="154" y="1008">
      <params/>
      <attribs/>
      <subpatch appVersion="1.0.12">
         <obj type="patch/inlet i" uuid="f11927f00c59219df0c50f73056aa19f125540b7" name="setnumber" x="14" y="14">
            <params/>
            <attribs/>
         </obj>
         <obj type="mux/mux 2" uuid="16f90f81694766b0bc8187bfcba5a021e5701d81" name="mux_1" x="532" y="28">
            <params/>
            <attribs/>
         </obj>
         <obj type="patch/outlet i" uuid="aae2176b26209e34e4fdeba5edb1ace82d178655" name="in" x="672" y="42">
            <params/>
            <attribs/>
         </obj>
         <obj type="logic/change" uuid="96e39ae624c3f3c952cec4a95e1986ee0104f718" name="change_1" x="98" y="70">
            <params/>
            <attribs/>
         </obj>
         <obj type="drj/math/== const i" uuid="36ae23539d64bc2fb798a1b4a65cf9dda17a1952" name="==_1" x="350" y="70">
            <params/>
            <attribs>
               <spinner attributeName="value" value="7"/>
            </attribs>
         </obj>
         <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="def" x="672" y="98">
            <params/>
            <attribs/>
         </obj>
         <obj type="rbrt/control/gate i" uuid="1c6fad01-84d2-4635-9ce0-11270f15d835" name="gate_1" x="364" y="140">
            <params/>
            <attribs/>
         </obj>
         <obj type="lfo/square" uuid="de6909eb64db13af5b43f979a4c130024b3a4793" name="square_1" x="140" y="168">
            <params>
               <frac32.s.map name="pitch" value="0.0"/>
            </params>
            <attribs/>
         </obj>
         <obj type="logic/counter" uuid="7a141ba82230e54e5f5cd12da5dbe5a74ba854a5" name="counter_1" x="252" y="168">
            <params>
               <int32 name="maximum" value="8"/>
            </params>
            <attribs/>
         </obj>
         <obj type="logic/inv" uuid="2bd44b865d3b63ff9b80862242bf5be779e3ad5" name="inv_1" x="546" y="168">
            <params/>
            <attribs/>
         </obj>
         <obj type="logic/flipflop toggle" uuid="195e489e5fc3d275944b0de56c7a91c8641ea22a" name="flipflop_1" x="364" y="210">
            <params/>
            <attribs/>
         </obj>
         <nets>
            <net>
               <source obj="square_1" outlet="wave"/>
               <dest obj="counter_1" inlet="trig"/>
            </net>
            <net>
               <source obj="change_1" outlet="trig"/>
               <dest obj="square_1" inlet="reset"/>
               <dest obj="counter_1" inlet="r"/>
               <dest obj="flipflop_1" inlet="set"/>
            </net>
            <net>
               <source obj="counter_1" outlet="o"/>
               <dest obj="gate_1" inlet="in"/>
               <dest obj="==_1" inlet="in"/>
            </net>
            <net>
               <source obj="gate_1" outlet="out"/>
               <dest obj="mux_1" inlet="i2"/>
            </net>
            <net>
               <source obj="flipflop_1" outlet="o"/>
               <dest obj="gate_1" inlet="control"/>
               <dest obj="inv_1" inlet="i"/>
               <dest obj="mux_1" inlet="s"/>
            </net>
            <net>
               <source obj="==_1" outlet="out"/>
               <dest obj="flipflop_1" inlet="reset"/>
            </net>
            <net>
               <source obj="inv_1" outlet="o"/>
               <dest obj="def" inlet="outlet"/>
            </net>
            <net>
               <source obj="mux_1" outlet="o"/>
               <dest obj="in" inlet="outlet"/>
            </net>
            <net>
               <source obj="setnumber" outlet="inlet"/>
               <dest obj="mux_1" inlet="i1"/>
               <dest obj="change_1" inlet="in"/>
            </net>
         </nets>
         <settings>
            <subpatchmode>no</subpatchmode>
         </settings>
         <notes><![CDATA[]]></notes>
         <windowPos>
            <x>0</x>
            <y>23</y>
            <width>931</width>
            <height>602</height>
         </windowPos>
      </subpatch>
   </patcher>
   <nets>
      <net>
         <source obj="digital_1" outlet="out"/>
         <dest obj="bool_9" inlet="in"/>
         <dest obj="forward" inlet="outlet"/>
      </net>
      <net>
         <source obj="digital_2" outlet="out"/>
         <dest obj="bool_10" inlet="in"/>
         <dest obj="up" inlet="outlet"/>
      </net>
      <net>
         <source obj="digital_3" outlet="out"/>
         <dest obj="bool_11" inlet="in"/>
         <dest obj="backward" inlet="outlet"/>
      </net>
      <net>
         <source obj="digital_4" outlet="out"/>
         <dest obj="bool_12" inlet="in"/>
         <dest obj="down" inlet="outlet"/>
      </net>
      <net>
         <source obj="analog_1" outlet="out"/>
         <dest obj="dial_1" inlet="in"/>
         <dest obj="dial 1" inlet="outlet"/>
      </net>
      <net>
         <source obj="analog_2" outlet="out"/>
         <dest obj="dial_2" inlet="in"/>
         <dest obj="dial 2" inlet="outlet"/>
      </net>
      <net>
         <source obj="analog_3" outlet="out"/>
         <dest obj="dial_3" inlet="in"/>
         <dest obj="dial 3" inlet="outlet"/>
      </net>
      <net>
         <source obj="analog_4" outlet="out"/>
         <dest obj="dial_4" inlet="in"/>
         <dest obj="dial 4" inlet="outlet"/>
      </net>
      <net>
         <source obj="digital_5" outlet="out"/>
         <dest obj="bool_13" inlet="in"/>
         <dest obj="top" inlet="outlet"/>
      </net>
      <net>
         <source obj="digital_7" outlet="out"/>
         <dest obj="bool_15" inlet="in"/>
         <dest obj="toggle 1" inlet="outlet"/>
      </net>
      <net>
         <source obj="digital_8" outlet="out"/>
         <dest obj="bool_16" inlet="in"/>
         <dest obj="toggle 2" inlet="outlet"/>
      </net>
      <net>
         <source obj="digital_9" outlet="out"/>
         <dest obj="bool_17" inlet="in"/>
         <dest obj="button 1" inlet="outlet"/>
      </net>
      <net>
         <source obj="digital_10" outlet="out"/>
         <dest obj="bool_18" inlet="in"/>
         <dest obj="button 2" inlet="outlet"/>
      </net>
      <net>
         <source obj="digital_11" outlet="out"/>
         <dest obj="bool_19" inlet="in"/>
         <dest obj="button 3" inlet="outlet"/>
      </net>
      <net>
         <source obj="digital_12" outlet="out"/>
         <dest obj="bool_20" inlet="in"/>
         <dest obj="button 4" inlet="outlet"/>
      </net>
      <net>
         <source obj="digital_6" outlet="out"/>
         <dest obj="bottom" inlet="outlet"/>
         <dest obj="bool_14" inlet="in"/>
      </net>
      <net>
         <source obj="green" outlet="inlet"/>
         <dest obj="patcher_2" inlet="setnumber"/>
      </net>
      <net>
         <source obj="red" outlet="inlet"/>
         <dest obj="patcher_3" inlet="setnumber"/>
      </net>
      <net>
         <source obj="loadbang_1" outlet="pulse"/>
         <dest obj="delayedpulse_1" inlet="trig"/>
      </net>
      <net>
         <source obj="delayedpulse_1" outlet="pulse"/>
         <dest obj="lkm1638_full_1" inlet="dispupd"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>no</subpatchmode>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>0</x>
      <y>23</y>
      <width>1920</width>
      <height>1177</height>
   </windowPos>
</patch-1.0>