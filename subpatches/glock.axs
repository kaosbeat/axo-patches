<patch-1.0 appVersion="1.0.12">
   <obj type="env/d" uuid="190ae648e41832b41adbedb465317c18a010aefe" name="d_2" x="700" y="14">
      <params>
         <frac32.s.map name="d" value="1.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="midi/in/keyb" uuid="53b04874696932f38aceaa168bd5d9efb743716d" name="keyb_1" x="0" y="56">
      <params/>
      <attribs/>
   </obj>
   <patchobj type="patch/object" uuid="9405ecde-a266-424f-a36a-c81b1ee8caa5" name="multiWave_1" x="140" y="56">
      <params>
         <int32.vradio name="waveform" value="3"/>
         <frac32.s.map name="pitch" MidiCC="13" value="40.0"/>
         <frac32.u.map name="shape" MidiCC="29" value="0.0"/>
         <frac32.u.map name="amount" MidiCC="49" value="0.0"/>
      </params>
      <attribs/>
      <object id="patch/object" uuid="9405ecde-a266-424f-a36a-c81b1ee8caa5">
         <sDescription>multi waveform oscilator: sine, triangle, saw, square
each waveform (except sine) is able to change its shape (e.g. square = pwm).</sDescription>
         <author>Beat Rossmy</author>
         <license>BSD</license>
         <inlets>
            <frac32.bipolar name="pitch"/>
            <frac32buffer name="freq" description="phase increment"/>
            <bool32.rising name="reset" description="reset phase"/>
            <frac32.bipolar name="shape" description="wave shaper"/>
            <int32.positive name="wave" description="wave select"/>
         </inlets>
         <outlets>
            <frac32buffer.bipolar name="out" description="output"/>
         </outlets>
         <displays/>
         <params>
            <int32.vradio name="waveform" description="sine, triangle, saw, square" noLabel="false">
               <MaxValue i="4"/>
            </int32.vradio>
            <frac32.s.map.pitch name="pitch" noLabel="true"/>
            <frac32.u.map name="shape" description="changes shape of the selected waveform" noLabel="false"/>
            <frac32.u.map name="amount" description="amount of shape"/>
         </params>
         <attribs/>
         <includes/>
         <code.declaration><![CDATA[
static uint8_t const sin = 0;
static uint8_t const tri = 1;
static uint8_t const saw = 2;
static uint8_t const pwm = 3;

uint32_t phase;
int32_t phasor;
int32_t phaseCounter;
uint32_t r;
int32_t a;
int32_t b;
		  ]]></code.declaration>
         <code.init><![CDATA[
phase = 0;
phasor = 0;
phaseCounter = 0;

r = 1;
a = 0;
b = 0;
]]></code.init>
         <code.krate><![CDATA[
uint32_t freq;
MTOFEXTENDED(param_pitch + inlet_pitch,freq);

int32_t shape;
shape = __USAT(param_shape + (___SMMUL(param_amount,inlet_shape)<<1), 27);

int32_t waveform;
waveform = (param_waveform + (inlet_wave>>4))%4;]]></code.krate>
         <code.srate><![CDATA[
/* reset phase if retriggered */
if (inlet_reset && r) {
	phase = 0;
	phaseCounter = 0;
	r = 0;
} else { 
	if (!inlet_reset) r = 1;
	phase += (freq>>0) + inlet_freq;
	/* if new phasor value is smaller then last one -> increment phaseCounter */
	a = phase>>5;
	/* first or second phase cycle */
	if (a < phasor) {
		phaseCounter++;
		if (phaseCounter == 2) phaseCounter = 0;
	}
	/* set new phasor value */
	phasor = a;
}

/* calculate waveforms based on phasor value */
switch (waveform) {
	case sin:
		/* phasor to sine */
		SINE2TINTERP(phasor<<5,a) /* calculate sine wave via function */
		outlet_out= (a>>4);
		break;

	case tri:
		/* phasor to triangle */
		b = (phasor>0x07FFFFFF/4)? phasor-0x07FFFFFF/4:phasor+0x07FFFFFF/4*3; /* phase shift to correct wave startpoint*/
		a = (b-(1<<26))<<1; /* phasor to sawUp (bipolar) -> -a = sawDown (bipolar) */
		a = (a>0)? a:-a; /* merge sawUp and sawDown to triangle -> unipolar */
		a = (a-(1<<26))<<1; /* unipolar to bipolar */
		b = 0x07FFFFFF-(shape/10*8);
		a = (a>b || a<-b)? -a+((a>0)?2:-2)*b:a; /* param_shape threshold for wavefolding */
		outlet_out = a;
		break;

	case saw:
		/* phasor to saw */
		b = (phasor>0x07FFFFFF/2)? phasor-0x07FFFFFF/2:phasor+0x07FFFFFF/2; /* phase shift to correct wave startpoint*/
		a = (b-(1<<26))<<1; /* phasor to sawUp (bipolar) */
		outlet_out = (phaseCounter==1 && (phasor>0x07FFFFFF/2-shape/2 && phasor<0x07FFFFFF/2+shape/2))? -a:a;
		break;

	case pwm:
		/* phasor to pulse width */
		outlet_out = (phasor>=0x07FFFFFF/2+shape/2)? -0x08000000:0x07FFFFFF; /* pulse width depending on shape value*/
		break;
}
	  ]]></code.srate>
      </object>
   </patchobj>
   <patchobj type="patch/object" uuid="22c0416b-e7d6-409e-a30f-41d1e25c0c6a" name="multiWave_2" x="294" y="56">
      <params>
         <int32.vradio name="waveform" value="3"/>
         <frac32.s.map name="pitch" MidiCC="14" value="26.0"/>
         <frac32.u.map name="shape" value="0.0"/>
         <frac32.u.map name="amount" value="0.0"/>
      </params>
      <attribs/>
      <object id="patch/object" uuid="22c0416b-e7d6-409e-a30f-41d1e25c0c6a">
         <sDescription>multi waveform oscilator: sine, triangle, saw, square
each waveform (except sine) is able to change its shape (e.g. square = pwm).</sDescription>
         <author>Beat Rossmy</author>
         <license>BSD</license>
         <inlets>
            <frac32.bipolar name="pitch"/>
            <frac32buffer name="freq" description="phase increment"/>
            <bool32.rising name="reset" description="reset phase"/>
            <frac32.bipolar name="shape" description="wave shaper"/>
            <int32.positive name="wave" description="wave select"/>
         </inlets>
         <outlets>
            <frac32buffer.bipolar name="out" description="output"/>
         </outlets>
         <displays/>
         <params>
            <int32.vradio name="waveform" description="sine, triangle, saw, square" noLabel="false">
               <MaxValue i="4"/>
            </int32.vradio>
            <frac32.s.map.pitch name="pitch" noLabel="true"/>
            <frac32.u.map name="shape" description="changes shape of the selected waveform" noLabel="false"/>
            <frac32.u.map name="amount" description="amount of shape"/>
         </params>
         <attribs/>
         <includes/>
         <code.declaration><![CDATA[
static uint8_t const sin = 0;
static uint8_t const tri = 1;
static uint8_t const saw = 2;
static uint8_t const pwm = 3;

uint32_t phase;
int32_t phasor;
int32_t phaseCounter;
uint32_t r;
int32_t a;
int32_t b;
		  ]]></code.declaration>
         <code.init><![CDATA[
phase = 0;
phasor = 0;
phaseCounter = 0;

r = 1;
a = 0;
b = 0;
]]></code.init>
         <code.krate><![CDATA[
uint32_t freq;
MTOFEXTENDED(param_pitch + inlet_pitch,freq);

int32_t shape;
shape = __USAT(param_shape + (___SMMUL(param_amount,inlet_shape)<<1), 27);

int32_t waveform;
waveform = (param_waveform + (inlet_wave>>4))%4;]]></code.krate>
         <code.srate><![CDATA[
/* reset phase if retriggered */
if (inlet_reset && r) {
	phase = 0;
	phaseCounter = 0;
	r = 0;
} else { 
	if (!inlet_reset) r = 1;
	phase += (freq>>0) + inlet_freq;
	/* if new phasor value is smaller then last one -> increment phaseCounter */
	a = phase>>5;
	/* first or second phase cycle */
	if (a < phasor) {
		phaseCounter++;
		if (phaseCounter == 2) phaseCounter = 0;
	}
	/* set new phasor value */
	phasor = a;
}

/* calculate waveforms based on phasor value */
switch (waveform) {
	case sin:
		/* phasor to sine */
		SINE2TINTERP(phasor<<5,a) /* calculate sine wave via function */
		outlet_out= (a>>4);
		break;

	case tri:
		/* phasor to triangle */
		b = (phasor>0x07FFFFFF/4)? phasor-0x07FFFFFF/4:phasor+0x07FFFFFF/4*3; /* phase shift to correct wave startpoint*/
		a = (b-(1<<26))<<1; /* phasor to sawUp (bipolar) -> -a = sawDown (bipolar) */
		a = (a>0)? a:-a; /* merge sawUp and sawDown to triangle -> unipolar */
		a = (a-(1<<26))<<1; /* unipolar to bipolar */
		b = 0x07FFFFFF-(shape/10*8);
		a = (a>b || a<-b)? -a+((a>0)?2:-2)*b:a; /* param_shape threshold for wavefolding */
		outlet_out = a;
		break;

	case saw:
		/* phasor to saw */
		b = (phasor>0x07FFFFFF/2)? phasor-0x07FFFFFF/2:phasor+0x07FFFFFF/2; /* phase shift to correct wave startpoint*/
		a = (b-(1<<26))<<1; /* phasor to sawUp (bipolar) */
		outlet_out = (phaseCounter==1 && (phasor>0x07FFFFFF/2-shape/2 && phasor<0x07FFFFFF/2+shape/2))? -a:a;
		break;

	case pwm:
		/* phasor to pulse width */
		outlet_out = (phasor>=0x07FFFFFF/2+shape/2)? -0x08000000:0x07FFFFFF; /* pulse width depending on shape value*/
		break;
}
	  ]]></code.srate>
      </object>
   </patchobj>
   <patchobj type="patch/object" uuid="e73f7f3a-e1c7-427c-afab-6d14f6f04ac6" name="multiWave_3" x="448" y="56">
      <params>
         <int32.vradio name="waveform" value="3"/>
         <frac32.s.map name="pitch" MidiCC="15" value="21.0"/>
         <frac32.u.map name="shape" value="0.0"/>
         <frac32.u.map name="amount" value="0.0"/>
      </params>
      <attribs/>
      <object id="patch/object" uuid="e73f7f3a-e1c7-427c-afab-6d14f6f04ac6">
         <sDescription>multi waveform oscilator: sine, triangle, saw, square
each waveform (except sine) is able to change its shape (e.g. square = pwm).</sDescription>
         <author>Beat Rossmy</author>
         <license>BSD</license>
         <inlets>
            <frac32.bipolar name="pitch"/>
            <frac32buffer name="freq" description="phase increment"/>
            <bool32.rising name="reset" description="reset phase"/>
            <frac32.bipolar name="shape" description="wave shaper"/>
            <int32.positive name="wave" description="wave select"/>
         </inlets>
         <outlets>
            <frac32buffer.bipolar name="out" description="output"/>
         </outlets>
         <displays/>
         <params>
            <int32.vradio name="waveform" description="sine, triangle, saw, square" noLabel="false">
               <MaxValue i="4"/>
            </int32.vradio>
            <frac32.s.map.pitch name="pitch" noLabel="true"/>
            <frac32.u.map name="shape" description="changes shape of the selected waveform" noLabel="false"/>
            <frac32.u.map name="amount" description="amount of shape"/>
         </params>
         <attribs/>
         <includes/>
         <code.declaration><![CDATA[
static uint8_t const sin = 0;
static uint8_t const tri = 1;
static uint8_t const saw = 2;
static uint8_t const pwm = 3;

uint32_t phase;
int32_t phasor;
int32_t phaseCounter;
uint32_t r;
int32_t a;
int32_t b;
		  ]]></code.declaration>
         <code.init><![CDATA[
phase = 0;
phasor = 0;
phaseCounter = 0;

r = 1;
a = 0;
b = 0;
]]></code.init>
         <code.krate><![CDATA[
uint32_t freq;
MTOFEXTENDED(param_pitch + inlet_pitch,freq);

int32_t shape;
shape = __USAT(param_shape + (___SMMUL(param_amount,inlet_shape)<<1), 27);

int32_t waveform;
waveform = (param_waveform + (inlet_wave>>4))%4;]]></code.krate>
         <code.srate><![CDATA[
/* reset phase if retriggered */
if (inlet_reset && r) {
	phase = 0;
	phaseCounter = 0;
	r = 0;
} else { 
	if (!inlet_reset) r = 1;
	phase += (freq>>0) + inlet_freq;
	/* if new phasor value is smaller then last one -> increment phaseCounter */
	a = phase>>5;
	/* first or second phase cycle */
	if (a < phasor) {
		phaseCounter++;
		if (phaseCounter == 2) phaseCounter = 0;
	}
	/* set new phasor value */
	phasor = a;
}

/* calculate waveforms based on phasor value */
switch (waveform) {
	case sin:
		/* phasor to sine */
		SINE2TINTERP(phasor<<5,a) /* calculate sine wave via function */
		outlet_out= (a>>4);
		break;

	case tri:
		/* phasor to triangle */
		b = (phasor>0x07FFFFFF/4)? phasor-0x07FFFFFF/4:phasor+0x07FFFFFF/4*3; /* phase shift to correct wave startpoint*/
		a = (b-(1<<26))<<1; /* phasor to sawUp (bipolar) -> -a = sawDown (bipolar) */
		a = (a>0)? a:-a; /* merge sawUp and sawDown to triangle -> unipolar */
		a = (a-(1<<26))<<1; /* unipolar to bipolar */
		b = 0x07FFFFFF-(shape/10*8);
		a = (a>b || a<-b)? -a+((a>0)?2:-2)*b:a; /* param_shape threshold for wavefolding */
		outlet_out = a;
		break;

	case saw:
		/* phasor to saw */
		b = (phasor>0x07FFFFFF/2)? phasor-0x07FFFFFF/2:phasor+0x07FFFFFF/2; /* phase shift to correct wave startpoint*/
		a = (b-(1<<26))<<1; /* phasor to sawUp (bipolar) */
		outlet_out = (phaseCounter==1 && (phasor>0x07FFFFFF/2-shape/2 && phasor<0x07FFFFFF/2+shape/2))? -a:a;
		break;

	case pwm:
		/* phasor to pulse width */
		outlet_out = (phasor>=0x07FFFFFF/2+shape/2)? -0x08000000:0x07FFFFFF; /* pulse width depending on shape value*/
		break;
}
	  ]]></code.srate>
      </object>
   </patchobj>
   <obj type="env/ahd" uuid="2139369d6de2ba5ddf76e602d1d25df653ca9eed" name="ahd_1" x="840" y="84">
      <params>
         <frac32.s.map name="a" value="5.0"/>
         <frac32.s.map name="d" value="-22.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/*c" uuid="7d5ef61c3bcd571ee6bbd8437ef3612125dfb225" name="*c_1" x="1008" y="98">
      <params>
         <frac32.u.map name="amp" value="13.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="mix/mix 3" uuid="8be16f2156012a4a8974804178cece51555f272b" name="mix_1" x="574" y="112">
      <params>
         <frac32.u.map name="gain1" value="51.0"/>
         <frac32.u.map name="gain2" value="47.5"/>
         <frac32.u.map name="gain3" value="54.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="filter/lp" uuid="1427779cf086ab83c8b03eeeac69c2a97759c651" name="lp_1" x="658" y="140">
      <params>
         <frac32.s.map name="pitch" value="49.0"/>
         <frac32.u.map name="reso" value="12.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/*c" uuid="7d5ef61c3bcd571ee6bbd8437ef3612125dfb225" name="*c_2" x="770" y="154">
      <params>
         <frac32.u.map name="amp" value="24.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="disp/bool" uuid="a0ee71d48208b71752cbb8c05e55145106ef3946" name="bool_1" x="28" y="210">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/*c" uuid="7d5ef61c3bcd571ee6bbd8437ef3612125dfb225" name="*c_3" x="854" y="210">
      <params>
         <frac32.u.map name="amp" value="23.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="env/d m" uuid="85e82f54dfc28839d300cda777af8907ae2a28d0" name="d_1" x="980" y="210">
      <params>
         <frac32.s.map name="d" value="-9.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="filter/bp m" uuid="f26437572c3a1f6be883bb219c773a9906ff8296" name="bp_1" x="742" y="266">
      <params>
         <frac32.s.map name="pitch" value="9.0"/>
         <frac32.u.map name="reso" value="8.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/*" uuid="922423f2db9f222aa3e5ba095778288c446da47a" name="*_1" x="1092" y="266">
      <params/>
      <attribs/>
   </obj>
   <obj type="filter/hp m" uuid="fdba806c3cfd2b7aca3256c733379a06e5811e66" name="hp_1" x="868" y="294">
      <params>
         <frac32.s.map name="pitch" value="18.0"/>
         <frac32.u.map name="reso" value="0.5"/>
      </params>
      <attribs/>
   </obj>
   <patchobj type="patch/object" uuid="3ed45b2e-a6ce-48f3-82b1-b6b6db421de2" name="multiWave_4" x="140" y="336">
      <params>
         <int32.vradio name="waveform" value="3"/>
         <frac32.s.map name="pitch" MidiCC="16" value="37.39999961853027"/>
         <frac32.u.map name="shape" value="0.0"/>
         <frac32.u.map name="amount" value="0.0"/>
      </params>
      <attribs/>
      <object id="patch/object" uuid="3ed45b2e-a6ce-48f3-82b1-b6b6db421de2">
         <sDescription>multi waveform oscilator: sine, triangle, saw, square
each waveform (except sine) is able to change its shape (e.g. square = pwm).</sDescription>
         <author>Beat Rossmy</author>
         <license>BSD</license>
         <inlets>
            <frac32.bipolar name="pitch"/>
            <frac32buffer name="freq" description="phase increment"/>
            <bool32.rising name="reset" description="reset phase"/>
            <frac32.bipolar name="shape" description="wave shaper"/>
            <int32.positive name="wave" description="wave select"/>
         </inlets>
         <outlets>
            <frac32buffer.bipolar name="out" description="output"/>
         </outlets>
         <displays/>
         <params>
            <int32.vradio name="waveform" description="sine, triangle, saw, square" noLabel="false">
               <MaxValue i="4"/>
            </int32.vradio>
            <frac32.s.map.pitch name="pitch" noLabel="true"/>
            <frac32.u.map name="shape" description="changes shape of the selected waveform" noLabel="false"/>
            <frac32.u.map name="amount" description="amount of shape"/>
         </params>
         <attribs/>
         <includes/>
         <code.declaration><![CDATA[
static uint8_t const sin = 0;
static uint8_t const tri = 1;
static uint8_t const saw = 2;
static uint8_t const pwm = 3;

uint32_t phase;
int32_t phasor;
int32_t phaseCounter;
uint32_t r;
int32_t a;
int32_t b;
		  ]]></code.declaration>
         <code.init><![CDATA[
phase = 0;
phasor = 0;
phaseCounter = 0;

r = 1;
a = 0;
b = 0;
]]></code.init>
         <code.krate><![CDATA[
uint32_t freq;
MTOFEXTENDED(param_pitch + inlet_pitch,freq);

int32_t shape;
shape = __USAT(param_shape + (___SMMUL(param_amount,inlet_shape)<<1), 27);

int32_t waveform;
waveform = (param_waveform + (inlet_wave>>4))%4;]]></code.krate>
         <code.srate><![CDATA[
/* reset phase if retriggered */
if (inlet_reset && r) {
	phase = 0;
	phaseCounter = 0;
	r = 0;
} else { 
	if (!inlet_reset) r = 1;
	phase += (freq>>0) + inlet_freq;
	/* if new phasor value is smaller then last one -> increment phaseCounter */
	a = phase>>5;
	/* first or second phase cycle */
	if (a < phasor) {
		phaseCounter++;
		if (phaseCounter == 2) phaseCounter = 0;
	}
	/* set new phasor value */
	phasor = a;
}

/* calculate waveforms based on phasor value */
switch (waveform) {
	case sin:
		/* phasor to sine */
		SINE2TINTERP(phasor<<5,a) /* calculate sine wave via function */
		outlet_out= (a>>4);
		break;

	case tri:
		/* phasor to triangle */
		b = (phasor>0x07FFFFFF/4)? phasor-0x07FFFFFF/4:phasor+0x07FFFFFF/4*3; /* phase shift to correct wave startpoint*/
		a = (b-(1<<26))<<1; /* phasor to sawUp (bipolar) -> -a = sawDown (bipolar) */
		a = (a>0)? a:-a; /* merge sawUp and sawDown to triangle -> unipolar */
		a = (a-(1<<26))<<1; /* unipolar to bipolar */
		b = 0x07FFFFFF-(shape/10*8);
		a = (a>b || a<-b)? -a+((a>0)?2:-2)*b:a; /* param_shape threshold for wavefolding */
		outlet_out = a;
		break;

	case saw:
		/* phasor to saw */
		b = (phasor>0x07FFFFFF/2)? phasor-0x07FFFFFF/2:phasor+0x07FFFFFF/2; /* phase shift to correct wave startpoint*/
		a = (b-(1<<26))<<1; /* phasor to sawUp (bipolar) */
		outlet_out = (phaseCounter==1 && (phasor>0x07FFFFFF/2-shape/2 && phasor<0x07FFFFFF/2+shape/2))? -a:a;
		break;

	case pwm:
		/* phasor to pulse width */
		outlet_out = (phasor>=0x07FFFFFF/2+shape/2)? -0x08000000:0x07FFFFFF; /* pulse width depending on shape value*/
		break;
}
	  ]]></code.srate>
      </object>
   </patchobj>
   <patchobj type="patch/object" uuid="e873a06c-b241-4afc-a73f-d3f2c500fb83" name="multiWave_5" x="294" y="336">
      <params>
         <int32.vradio name="waveform" value="3"/>
         <frac32.s.map name="pitch" MidiCC="17" value="32.0"/>
         <frac32.u.map name="shape" value="0.0"/>
         <frac32.u.map name="amount" value="0.0"/>
      </params>
      <attribs/>
      <object id="patch/object" uuid="e873a06c-b241-4afc-a73f-d3f2c500fb83">
         <sDescription>multi waveform oscilator: sine, triangle, saw, square
each waveform (except sine) is able to change its shape (e.g. square = pwm).</sDescription>
         <author>Beat Rossmy</author>
         <license>BSD</license>
         <inlets>
            <frac32.bipolar name="pitch"/>
            <frac32buffer name="freq" description="phase increment"/>
            <bool32.rising name="reset" description="reset phase"/>
            <frac32.bipolar name="shape" description="wave shaper"/>
            <int32.positive name="wave" description="wave select"/>
         </inlets>
         <outlets>
            <frac32buffer.bipolar name="out" description="output"/>
         </outlets>
         <displays/>
         <params>
            <int32.vradio name="waveform" description="sine, triangle, saw, square" noLabel="false">
               <MaxValue i="4"/>
            </int32.vradio>
            <frac32.s.map.pitch name="pitch" noLabel="true"/>
            <frac32.u.map name="shape" description="changes shape of the selected waveform" noLabel="false"/>
            <frac32.u.map name="amount" description="amount of shape"/>
         </params>
         <attribs/>
         <includes/>
         <code.declaration><![CDATA[
static uint8_t const sin = 0;
static uint8_t const tri = 1;
static uint8_t const saw = 2;
static uint8_t const pwm = 3;

uint32_t phase;
int32_t phasor;
int32_t phaseCounter;
uint32_t r;
int32_t a;
int32_t b;
		  ]]></code.declaration>
         <code.init><![CDATA[
phase = 0;
phasor = 0;
phaseCounter = 0;

r = 1;
a = 0;
b = 0;
]]></code.init>
         <code.krate><![CDATA[
uint32_t freq;
MTOFEXTENDED(param_pitch + inlet_pitch,freq);

int32_t shape;
shape = __USAT(param_shape + (___SMMUL(param_amount,inlet_shape)<<1), 27);

int32_t waveform;
waveform = (param_waveform + (inlet_wave>>4))%4;]]></code.krate>
         <code.srate><![CDATA[
/* reset phase if retriggered */
if (inlet_reset && r) {
	phase = 0;
	phaseCounter = 0;
	r = 0;
} else { 
	if (!inlet_reset) r = 1;
	phase += (freq>>0) + inlet_freq;
	/* if new phasor value is smaller then last one -> increment phaseCounter */
	a = phase>>5;
	/* first or second phase cycle */
	if (a < phasor) {
		phaseCounter++;
		if (phaseCounter == 2) phaseCounter = 0;
	}
	/* set new phasor value */
	phasor = a;
}

/* calculate waveforms based on phasor value */
switch (waveform) {
	case sin:
		/* phasor to sine */
		SINE2TINTERP(phasor<<5,a) /* calculate sine wave via function */
		outlet_out= (a>>4);
		break;

	case tri:
		/* phasor to triangle */
		b = (phasor>0x07FFFFFF/4)? phasor-0x07FFFFFF/4:phasor+0x07FFFFFF/4*3; /* phase shift to correct wave startpoint*/
		a = (b-(1<<26))<<1; /* phasor to sawUp (bipolar) -> -a = sawDown (bipolar) */
		a = (a>0)? a:-a; /* merge sawUp and sawDown to triangle -> unipolar */
		a = (a-(1<<26))<<1; /* unipolar to bipolar */
		b = 0x07FFFFFF-(shape/10*8);
		a = (a>b || a<-b)? -a+((a>0)?2:-2)*b:a; /* param_shape threshold for wavefolding */
		outlet_out = a;
		break;

	case saw:
		/* phasor to saw */
		b = (phasor>0x07FFFFFF/2)? phasor-0x07FFFFFF/2:phasor+0x07FFFFFF/2; /* phase shift to correct wave startpoint*/
		a = (b-(1<<26))<<1; /* phasor to sawUp (bipolar) */
		outlet_out = (phaseCounter==1 && (phasor>0x07FFFFFF/2-shape/2 && phasor<0x07FFFFFF/2+shape/2))? -a:a;
		break;

	case pwm:
		/* phasor to pulse width */
		outlet_out = (phasor>=0x07FFFFFF/2+shape/2)? -0x08000000:0x07FFFFFF; /* pulse width depending on shape value*/
		break;
}
	  ]]></code.srate>
      </object>
   </patchobj>
   <patchobj type="patch/object" uuid="97a8c6c4-c80b-4f64-bee7-ecf1aa762593" name="multiWave_6" x="448" y="336">
      <params>
         <int32.vradio name="waveform" value="3"/>
         <frac32.s.map name="pitch" MidiCC="18" value="29.09999990463257"/>
         <frac32.u.map name="shape" value="0.0"/>
         <frac32.u.map name="amount" value="0.0"/>
      </params>
      <attribs/>
      <object id="patch/object" uuid="97a8c6c4-c80b-4f64-bee7-ecf1aa762593">
         <sDescription>multi waveform oscilator: sine, triangle, saw, square
each waveform (except sine) is able to change its shape (e.g. square = pwm).</sDescription>
         <author>Beat Rossmy</author>
         <license>BSD</license>
         <inlets>
            <frac32.bipolar name="pitch"/>
            <frac32buffer name="freq" description="phase increment"/>
            <bool32.rising name="reset" description="reset phase"/>
            <frac32.bipolar name="shape" description="wave shaper"/>
            <int32.positive name="wave" description="wave select"/>
         </inlets>
         <outlets>
            <frac32buffer.bipolar name="out" description="output"/>
         </outlets>
         <displays/>
         <params>
            <int32.vradio name="waveform" description="sine, triangle, saw, square" noLabel="false">
               <MaxValue i="4"/>
            </int32.vradio>
            <frac32.s.map.pitch name="pitch" noLabel="true"/>
            <frac32.u.map name="shape" description="changes shape of the selected waveform" noLabel="false"/>
            <frac32.u.map name="amount" description="amount of shape"/>
         </params>
         <attribs/>
         <includes/>
         <code.declaration><![CDATA[
static uint8_t const sin = 0;
static uint8_t const tri = 1;
static uint8_t const saw = 2;
static uint8_t const pwm = 3;

uint32_t phase;
int32_t phasor;
int32_t phaseCounter;
uint32_t r;
int32_t a;
int32_t b;
		  ]]></code.declaration>
         <code.init><![CDATA[
phase = 0;
phasor = 0;
phaseCounter = 0;

r = 1;
a = 0;
b = 0;
]]></code.init>
         <code.krate><![CDATA[
uint32_t freq;
MTOFEXTENDED(param_pitch + inlet_pitch,freq);

int32_t shape;
shape = __USAT(param_shape + (___SMMUL(param_amount,inlet_shape)<<1), 27);

int32_t waveform;
waveform = (param_waveform + (inlet_wave>>4))%4;]]></code.krate>
         <code.srate><![CDATA[
/* reset phase if retriggered */
if (inlet_reset && r) {
	phase = 0;
	phaseCounter = 0;
	r = 0;
} else { 
	if (!inlet_reset) r = 1;
	phase += (freq>>0) + inlet_freq;
	/* if new phasor value is smaller then last one -> increment phaseCounter */
	a = phase>>5;
	/* first or second phase cycle */
	if (a < phasor) {
		phaseCounter++;
		if (phaseCounter == 2) phaseCounter = 0;
	}
	/* set new phasor value */
	phasor = a;
}

/* calculate waveforms based on phasor value */
switch (waveform) {
	case sin:
		/* phasor to sine */
		SINE2TINTERP(phasor<<5,a) /* calculate sine wave via function */
		outlet_out= (a>>4);
		break;

	case tri:
		/* phasor to triangle */
		b = (phasor>0x07FFFFFF/4)? phasor-0x07FFFFFF/4:phasor+0x07FFFFFF/4*3; /* phase shift to correct wave startpoint*/
		a = (b-(1<<26))<<1; /* phasor to sawUp (bipolar) -> -a = sawDown (bipolar) */
		a = (a>0)? a:-a; /* merge sawUp and sawDown to triangle -> unipolar */
		a = (a-(1<<26))<<1; /* unipolar to bipolar */
		b = 0x07FFFFFF-(shape/10*8);
		a = (a>b || a<-b)? -a+((a>0)?2:-2)*b:a; /* param_shape threshold for wavefolding */
		outlet_out = a;
		break;

	case saw:
		/* phasor to saw */
		b = (phasor>0x07FFFFFF/2)? phasor-0x07FFFFFF/2:phasor+0x07FFFFFF/2; /* phase shift to correct wave startpoint*/
		a = (b-(1<<26))<<1; /* phasor to sawUp (bipolar) */
		outlet_out = (phaseCounter==1 && (phasor>0x07FFFFFF/2-shape/2 && phasor<0x07FFFFFF/2+shape/2))? -a:a;
		break;

	case pwm:
		/* phasor to pulse width */
		outlet_out = (phasor>=0x07FFFFFF/2+shape/2)? -0x08000000:0x07FFFFFF; /* pulse width depending on shape value*/
		break;
}
	  ]]></code.srate>
      </object>
   </patchobj>
   <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_1" x="1134" y="378">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="outlet_1" x="1232" y="392">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="multiWave_1" outlet="out"/>
         <dest obj="multiWave_4" inlet="freq"/>
      </net>
      <net>
         <source obj="multiWave_2" outlet="out"/>
         <dest obj="multiWave_5" inlet="freq"/>
      </net>
      <net>
         <source obj="multiWave_3" outlet="out"/>
         <dest obj="multiWave_6" inlet="freq"/>
      </net>
      <net>
         <source obj="multiWave_4" outlet="out"/>
         <dest obj="mix_1" inlet="in1"/>
      </net>
      <net>
         <source obj="multiWave_5" outlet="out"/>
         <dest obj="mix_1" inlet="in2"/>
      </net>
      <net>
         <source obj="multiWave_6" outlet="out"/>
         <dest obj="mix_1" inlet="in3"/>
      </net>
      <net>
         <source obj="mix_1" outlet="out"/>
         <dest obj="lp_1" inlet="in"/>
      </net>
      <net>
         <source obj="d_1" outlet="env"/>
         <dest obj="*_1" inlet="a"/>
      </net>
      <net>
         <source obj="d_2" outlet="env"/>
         <dest obj="*c_2" inlet="in"/>
      </net>
      <net>
         <source obj="ahd_1" outlet="env"/>
         <dest obj="*c_1" inlet="in"/>
      </net>
      <net>
         <source obj="keyb_1" outlet="gate2"/>
         <dest obj="d_2" inlet="trig"/>
         <dest obj="ahd_1" inlet="gate"/>
         <dest obj="bool_1" inlet="in"/>
         <dest obj="d_1" inlet="trig"/>
      </net>
      <net>
         <source obj="keyb_1" outlet="note"/>
         <dest obj="multiWave_3" inlet="pitch"/>
         <dest obj="multiWave_2" inlet="pitch"/>
         <dest obj="multiWave_1" inlet="pitch"/>
         <dest obj="multiWave_4" inlet="pitch"/>
         <dest obj="multiWave_5" inlet="pitch"/>
         <dest obj="multiWave_6" inlet="pitch"/>
      </net>
      <net>
         <source obj="bp_1" outlet="out"/>
         <dest obj="hp_1" inlet="in"/>
      </net>
      <net>
         <source obj="*c_1" outlet="out"/>
         <dest obj="hp_1" inlet="pitch"/>
      </net>
      <net>
         <source obj="*c_2" outlet="out"/>
         <dest obj="bp_1" inlet="pitch"/>
      </net>
      <net>
         <source obj="*_1" outlet="result"/>
         <dest obj="vca_1" inlet="v"/>
      </net>
      <net>
         <source obj="keyb_1" outlet="velocity"/>
         <dest obj="*_1" inlet="b"/>
         <dest obj="*c_3" inlet="in"/>
      </net>
      <net>
         <source obj="*c_3" outlet="out"/>
         <dest obj="d_1" inlet="d"/>
      </net>
      <net>
         <source obj="lp_1" outlet="out"/>
         <dest obj="bp_1" inlet="in"/>
      </net>
      <net>
         <source obj="hp_1" outlet="out"/>
         <dest obj="vca_1" inlet="a"/>
      </net>
      <net>
         <source obj="vca_1" outlet="o"/>
         <dest obj="outlet_1" inlet="outlet"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>normal</subpatchmode>
      <MidiChannel>1</MidiChannel>
      <HasMidiChannelSelector>true</HasMidiChannelSelector>
      <NPresets>8</NPresets>
      <NPresetEntries>32</NPresetEntries>
      <NModulationSources>8</NModulationSources>
      <NModulationTargetsPerSource>8</NModulationTargetsPerSource>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>1759</x>
      <y>170</y>
      <width>1384</width>
      <height>719</height>
   </windowPos>
</patch-1.0>