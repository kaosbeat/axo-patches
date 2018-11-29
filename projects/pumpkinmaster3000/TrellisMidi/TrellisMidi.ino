//Trellis goes midi
//for the softmidi
// Variables: 
byte note = 0;            // The MIDI note value to be played
byte velocity = 0;
int MidiTX = 2;
int MidiRX = 3; 
 //software serial

#include <Wire.h>
#include "Adafruit_Trellis.h"
int SCLpin = 5;
int SDApin = 6;

/*************************************************** 
  This example shows reading buttons and setting/clearing buttons in a loop
  "momentary" mode has the LED light up only when a button is pressed
  "latching" mode lets you turn the LED on/off when pressed

  Up to 8 matrices can be used but this example will show 4 or 1
 ****************************************************/

#define MOMENTARY 0
#define LATCHING 1
// set the mode here
#define MODE MOMENTARY 


Adafruit_Trellis matrix0 = Adafruit_Trellis();
Adafruit_Trellis matrix1 = Adafruit_Trellis();

// Just one
//Adafruit_TrellisSet trellis =  Adafruit_TrellisSet(&matrix0);
// or use the below to select 4, up to 8 can be passed in
Adafruit_TrellisSet trellis =  Adafruit_TrellisSet(&matrix0, &matrix1);

// set to however many you're working with here, up to 8
#define NUMTRELLIS 2
#define numKeys (NUMTRELLIS * 16)

// Connect Trellis Vin to 5V and Ground to ground.
// Connect the INT wire to pin #A2 (can change later!)
#define INTPIN 5
// Connect I2C SDA pin to your Arduino SDA line
// Connect I2C SCL pin to your Arduino SCL line
// All Trellises share the SDA, SCL and INT pin! 
// Even 8 tiles use only 3 wires max


void setup() {
  Serial.begin(115200,2,3);
//  Serial.println("Trellis Demo");
  Wire.beginOnPins(SCLpin, SDApin);
  // INT pin requires a pullup
  pinMode(INTPIN, INPUT);
  digitalWrite(INTPIN, HIGH);
  // begin() with the addresses of each panel in order
  // I find it easiest if the addresses are in order
//  trellis.begin(0x70);  // only one
   trellis.begin(0x70, 0x71);  // or four!

  // light up all the LEDs in order
  for (uint8_t i=0; i<numKeys; i++) {
    trellis.setLED(i);
    trellis.writeDisplay();    
    delay(50);
  }
  // then turn them off
  for (uint8_t i=0; i<numKeys; i++) {
    trellis.clrLED(i);
    trellis.writeDisplay();    
    delay(50);
  }
}


  void noteOn(byte cmd, byte data1, byte data2) {
  //  plays a MIDI note.  Doesn't check to see that
  //  cmd is greater than 127, or that data values are  less than 127:
    Serial.write(0x90); //noteon = cmd = 0x90
    Serial.write(data1);
    Serial.write(data2);
     //prints the values in the serial monitor so we can see what note we're playing
//    Serial.print("cmd: ");
//     Serial.print(cmd);
//       Serial.print(", data1: ");
//   Serial.print(data1);
//      Serial.print(", data2: ");
//    Serial.println(data2);


  }

  void CC(byte cmd, byte data1, byte data2) {
    Serial.write(0xb0); //CCmessage
    Serial.write(data1);
    Serial.write(data2);
  }


void loop() {
  delay(30); // 30ms delay is required, dont remove me!  
  if (MODE == MOMENTARY) {
    // If a button was just pressed or released...
    if (trellis.readSwitches()) {
      // go through every button
      for (uint8_t i=0; i<numKeys; i++) {
	// if it was pressed, turn it on
	if (trellis.justPressed(i)) {
	  //Serial.print("v"); Serial.println(i);
	  trellis.setLED(i);
          noteOn(0x90, i, 0x80); 
          CC(0xb4,1,i);
	} 
	// if it was released, turn it off
	if (trellis.justReleased(i)) {
	  //Serial.print("^"); Serial.println(i);
	  trellis.clrLED(i);
          noteOn(0x90, i, 0x00); 
          CC(0xb4,1,81);

	}
      }
      // tell the trellis to set the LEDs we requested
      trellis.writeDisplay();
    }
  }

if (MODE == LATCHING) {
    // If a button was just pressed or released...
    if (trellis.readSwitches()) {
      // go through every button
      for (uint8_t i=0; i<numKeys; i++) {
        // if it was pressed...
	if (trellis.justPressed(i)) {
	  //Serial.print("v"); Serial.println(i);
	  // Alternate the LED
	  if (trellis.isLED(i)){
	    trellis.clrLED(i);
             noteOn(0x90, i, 0x00);
            }else{
	    trellis.setLED(i);
            noteOn(0x90, i, 0x80);
            }
        } 
      }
      // tell the trellis to set the LEDs we requested
      trellis.writeDisplay();
    }
  }
  
}

