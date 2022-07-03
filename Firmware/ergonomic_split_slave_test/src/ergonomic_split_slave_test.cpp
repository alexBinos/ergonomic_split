/*
 This project is designed to test the ergonomic split I2C master interface to
 the PCAL9555 IO expander.
 There is a PCAL9555 on both the master and slave sides of the ergonomic split
 keyboard. This part is responsible for detecting keyswitch events on the
 keyboard and relaying back to the ATMEGA32U4 for processing.
*/

#include <Arduino.h>
#include <Wire.h>
#include <pcal9555.h>

#define SLAVE_ADDR 0x25
#define KEY_1 0x31
#define KEY_2 0x32
#define KEY_3 0x33

void receiveEvent(int len);
void requestEvent(void);
void debug_dump_counters(void);
void debug_dump_registers(void);

uint8_t  row_register;
uint8_t  col_register;
uint8_t  command_register;
uint32_t request_counter;

void setup() {
   Wire.begin(SLAVE_ADDR);
   Wire.onReceive(receiveEvent);
   Wire.onRequest(requestEvent);
   
   row_register       = 0xFF;
   col_register       = 0xFF;
   command_register   = 0x00;
   request_counter    = 0x00000000;
   
   Serial.begin(9600);
   Serial.println("Starting test");
}

void loop() {
   delay(100);
   
   
}

void receiveEvent(int len) {
   // TODO: I2C recieve handler
   
}

void requestEvent(void) {
   // TODO: I2C slave transmit handler
   
}

void serialEvent(void) {
   while (Serial.available()) {
      uint8_t read_byte = Serial.read();
      
      switch (read_byte) {
         case (KEY_1) : 
            Serial.println("Detected A key");
            break;
         case (KEY_2) : 
            Serial.println("Detected B key");
            break;
         case (KEY_3) :
            
            break;
         default : 
            Serial.print("Invalid key detected: ");
            Serial.println(read_byte, HEX);
            break;
      }
   }
}

void debug_dump_counters(void) {
   // TODO :Print counter information over serial
   
}

void debug_dump_registers(void) {
   // TODO: Print register information over serial
   
}
