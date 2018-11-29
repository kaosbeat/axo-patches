int i;   // select y-input

void setup(void){
	palSetPadMode(GPIOC,0,PAL_MODE_OUTPUT_PUSHPULL);	// s0 Pin of 4051
	palSetPadMode(GPIOC,1,PAL_MODE_OUTPUT_PUSHPULL);	// S1 Pin of 4051
	palSetPadMode(GPIOC,2,PAL_MODE_OUTPUT_PUSHPULL);	// s2 Pin of 4051

	i = 0;
}

void loop(void){

	i++;
	if (i == 8) {
		i = 0;
	}

	palWritePad(GPIOC,0,((i& 0x01) > 0));		// write s0
	palWritePad(GPIOC,1,(((i>>1)& 0x01) > 0));	// write s1
	palWritePad(GPIOC,2,(((i>>2)& 0x01) > 0));	// write s2

	// int z = adcvalues[5]<<15;			// ADC z-input
	int z1 = adcvalues[13]<<15;	
	// int z2 = adcvalues[14]<<15;	
	// int z3 = adcvalues[13]<<15;	
	// int z4 = adcvalues[14]<<15;


	switch (i){
		case 0: 
			PExParameterChange(&parent->PExch[PARAM_INDEX_y0a_value],z1,0xFFFD); break;	//connect in1 to dial (named y0)
			// PExParameterChange(&parent->PExch[PARAM_INDEX_y0b_value],z2,0xFFFD); break;
			// PExParameterChange(&parent->PExch[PARAM_INDEX_y0c_value],z3,0xFFFD); break;
			// PExParameterChange(&parent->PExch[PARAM_INDEX_y0d_value],z4,0xFFFD); break;
		case 1: 
			PExParameterChange(&parent->PExch[PARAM_INDEX_y1a_value],z1,0xFFFD); break;	//connect in2 to dial (named y1)
			// PExParameterChange(&parent->PExch[PARAM_INDEX_y1b_value],z2,0xFFFD); break;
			// PExParameterChange(&parent->PExch[PARAM_INDEX_y1c_value],z3,0xFFFD); break;
			// PExParameterChange(&parent->PExch[PARAM_INDEX_y1d_value],z4,0xFFFD); break;
		case 2: 
			PExParameterChange(&parent->PExch[PARAM_INDEX_y2a_value],z1,0xFFFD); break;	//connect in3 to dial (named y2)
			// PExParameterChange(&parent->PExch[PARAM_INDEX_y2b_value],z2,0xFFFD); break;
			// PExParameterChange(&parent->PExch[PARAM_INDEX_y2c_value],z3,0xFFFD); break;
			// PExParameterChange(&parent->PExch[PARAM_INDEX_y2d_value],z4,0xFFFD); break;
		case 3: 
			PExParameterChange(&parent->PExch[PARAM_INDEX_y3a_value],z1,0xFFFD); break;	//connect in4 to dial (named y3)
			// PExParameterChange(&parent->PExch[PARAM_INDEX_y3b_value],z2,0xFFFD); break;
			// PExParameterChange(&parent->PExch[PARAM_INDEX_y3c_value],z3,0xFFFD); break;
			// PExParameterChange(&parent->PExch[PARAM_INDEX_y3d_value],z4,0xFFFD); break;
		case 4: 
			PExParameterChange(&parent->PExch[PARAM_INDEX_y4a_value],z1,0xFFFD); break;	//connect in5 to dial (named y4)
			// PExParameterChange(&parent->PExch[PARAM_INDEX_y4b_value],z2,0xFFFD); break;
			// PExParameterChange(&parent->PExch[PARAM_INDEX_y4c_value],z3,0xFFFD); break;
			// PExParameterChange(&parent->PExch[PARAM_INDEX_y4d_value],z4,0xFFFD); break;
		case 5: 
			PExParameterChange(&parent->PExch[PARAM_INDEX_y5a_value],z1,0xFFFD); break;	//connect in6 to dial (named y5)
			// PExParameterChange(&parent->PExch[PARAM_INDEX_y5b_value],z2,0xFFFD); break;
			// PExParameterChange(&parent->PExch[PARAM_INDEX_y5c_value],z3,0xFFFD); break;
			// PExParameterChange(&parent->PExch[PARAM_INDEX_y5d_value],z4,0xFFFD); break;
		case 6: 
			PExParameterChange(&parent->PExch[PARAM_INDEX_y6a_value],z1,0xFFFD); break;	//connect in7 to dial (named y6)
			// PExParameterChange(&parent->PExch[PARAM_INDEX_y6b_value],z2,0xFFFD); break;
			// PExParameterChange(&parent->PExch[PARAM_INDEX_y6c_value],z3,0xFFFD); break;
			// PExParameterChange(&parent->PExch[PARAM_INDEX_y6d_value],z4,0xFFFD); break;
		case 7: 
			PExParameterChange(&parent->PExch[PARAM_INDEX_y7a_value],z1,0xFFFD); break;	//connect in8 to dial (named y7)
			// PExParameterChange(&parent->PExch[PARAM_INDEX_y7b_value],z2,0xFFFD); break;
			// PExParameterChange(&parent->PExch[PARAM_INDEX_y7c_value],z3,0xFFFD); break;
			// PExParameterChange(&parent->PExch[PARAM_INDEX_y7d_value],z4,0xFFFD); break;
	}

	
	chThdSleepMilliseconds(5);	// short delay
}



// PA1 (ADC1_IN1)	= 1
// PA2 (ADC1_IN2) = 2
// PA3 (ADC1_IN3)	= 3
// PA4 (ADC1_IN4)	= 4
// PA5 (ADC1_IN5)	= 5
// PA6 (ADC1_IN6)	= 6
// PA7 (ADC1_IN7)	= 7
// PB0 (ADC1_IN8)	= 8
// PB1 (ADC1_IN9)	= 9
// PC0 (ADC1_IN10)	= 10
// PC1 (ADC1_IN11)	= 11
// PC2 (ADC1_IN12)	= 12
// PC3 (ADC1_IN13)	= 13
// PC4 (ADC1_IN14)	= 14


