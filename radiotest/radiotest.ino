
/*
* Getting Started example sketch for nRF24L01+ radios
* This is a very basic example of how to send data from one node to another
* Updated: Dec 2014 by TMRh20
*/

#include <SPI.h>
#include "RF24.h"

/****************** User Config ***************************/
/***      Set this radio as radio number 0 or 1         ***/
bool radioNumber = 0;

/* Hardware configuration: Set up nRF24L01 radio on SPI bus plus pins 7 & 8 */
RF24 radio(2,3);
/**********************************************************/
int t = 1;
byte addresses[][6] = {"1Node","2Node"};

// Used to control whether this node is sending or receiving
bool role = 1;
unsigned int output;
void setup() {
  output = 0;
  Serial.begin(115200);
  Serial.println(F("RF24/examples/GettingStarted"));
  Serial.println(F("*** PRESS 'T' to begin transmitting to the other node"));
  
  radio.begin();

  // Set the PA Level low to prevent power supply related issues since this is a
 // getting_started sketch, and the likelihood of close proximity of the devices. RF24_PA_MAX is default.
  radio.setPALevel(RF24_PA_MAX);
  radio.setDataRate(RF24_250KBPS);
  radio.setAutoAck(true);
  
  // Open a writing and reading pipe on each radio, with opposite addresses
  /*if(radioNumber){
    radio.openWritingPipe(addresses[1]);
    radio.openReadingPipe(1,addresses[0]);
  }else{
    
    radio.openReadingPipe(1,addresses[1]);
  }*/
  
  // Start the radio listening for data
  radio.openWritingPipe(addresses[0]);
  //radio.startListening();
}

void loop() {
    //output = 0xC040;
    radio.write(&output, 2);
    
    while(1){
      if (Serial.available() >= 2) {
        byte a = Serial.read();
        byte b = Serial.read();
        output = (((int)a|0x80) << 8) | b;
        Serial.println(output);
      }
      else{
        break;
      }
    }


} // Loop
