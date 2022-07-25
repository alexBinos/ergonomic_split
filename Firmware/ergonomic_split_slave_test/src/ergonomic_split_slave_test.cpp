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

#define UPDATE_TIME 50

#define TEMP_REGB 0x12

#define SLAVE_ADDR 0x22
#define KEY_1 0x31
#define KEY_2 0x32
#define KEY_3 0x33

void receiveEvent(uint8_t len);
void requestEvent();
void debug_dump_counters(void);
void debug_dump_registers(void);
void rx_process_data(uint8_t addr, uint8_t data);
void update_bit_positions();
void write_column(void);

char debug_buf[40];

uint32_t    scan_timeout;
uint8_t     current_row;
uint8_t     current_col;

uint8_t     row;
uint8_t     col;
uint8_t     register_command;
uint32_t    request_counter;

uint8_t     register_input0;
uint8_t     register_input1;
uint8_t     register_output0;
uint8_t     register_output1;
uint8_t     register_conf0;
uint8_t     register_conf1;
uint8_t     register_puden0;
uint8_t     register_puden1;
uint8_t     register_pud0;
uint8_t     register_pud1;
uint16_t    register_invalid;

void setup() {
   // Configure I2C slave
   Wire.begin(SLAVE_ADDR);
   Wire.onReceive(receiveEvent);
   Wire.onRequest(requestEvent);
   
   scan_timeout       = 0x00000000;
   current_row        = 0x01;
   current_col        = 0x01;
   
   // Keyboard registers
   row                = 0xFF;
   col                = 0xFF;
   request_counter    = 0x00000000;
   
   // PCAL9555 register values
   register_command   = 0x00;
   register_input0    = 0x00;
   register_input1    = 0x00;
   register_output0   = 0x00;
   register_output1   = 0x00;
   register_conf0     = 0x00;
   register_conf1     = 0x00;
   register_puden0    = 0x00;
   register_puden1    = 0x00;
   register_pud0      = 0x00;
   register_pud1      = 0x00;
   register_invalid   = 0x00000;
   
   // Debug serial port
   Serial.begin(9600);
   Serial.println("Starting test");
}

void loop() {
   delay(100);
}

void receiveEvent(uint8_t len) {
   uint8_t rx_byte;
   register_command = Wire.read();
   len--;
   
   while (len != 0) {
      len--;
      rx_byte = Wire.read();
      rx_process_data(register_command, rx_byte);
      register_command++; // Implements auto address increment
   }
   return;
}

void requestEvent(void) {
   // TODO: I2C slave transmit handler
   
   request_counter++;
   update_bit_positions();
   write_column();
   Wire.write(col);
   
   Serial.print("Writing ");
   Serial.println(col, HEX);
   
}

void update_bit_positions(void) {
   scan_timeout++;
   if (scan_timeout >= UPDATE_TIME) {
      // Serial.println("Updating values");
      scan_timeout = 0x00000000;
      current_row = (current_row == 0x40) ? 0x01 : (current_row << 1);
      current_col = (current_row == 0x40) ? (current_col == 0x40) ? 0x01 : (current_col << 1) : current_col;
   }
}

void write_column(void) {
   if ((~register_output1) & current_row) {
      col = ~current_col;
   }
   else {
      col = 0xFF;
   }
}

void rx_process_data(uint8_t addr, uint8_t data) {
   switch (addr) {
      case(ADDR_PCAL9555_INPUT0) :  register_input0    = data; break;
      case(ADDR_PCAL9555_INPUT1) :  register_input1    = data; break;
      case(ADDR_PCAL9555_OUTPUT0) : register_output0   = data; break;
      case(ADDR_PCAL9555_OUTPUT1) : register_output1   = data; break;
      case(ADDR_PCAL9555_CONF0) :   register_conf0     = data; break;
      case(ADDR_PCAL9555_CONF1) :   register_conf1     = data; break;
      case(ADDR_PCAL9555_PUDEN0) :  register_puden0    = data; break;
      case(ADDR_PCAL9555_PUDEN1) :  register_puden1    = data; break;
      case(ADDR_PCAL9555_PUD0) :    register_pud0      = data; break;
      case(ADDR_PCAL9555_PUD1) :    register_pud1      = data; break;
      case(TEMP_REGB) :             row                = data; break;
      default : register_invalid = ((addr << 8) | (data)); break;
   }
   return;
}

void serialEvent(void) {
   while (Serial.available()) {
      uint8_t read_byte = Serial.read();
      
      switch (read_byte) {
         case (KEY_1) : 
            Serial.println("Detected A key");
            break;
         case (KEY_2) : 
            debug_dump_registers();
            break;
         case (KEY_3) :
            
            break;
         default : 
            Serial.print("Invalid key detected: ");
            Serial.println(read_byte, HEX);
            break;
      }
   }
   return;
}

void debug_dump_counters(void) {
   // TODO :Print counter information over serial
   
}

void debug_dump_registers(void) {
   Serial.println("***** Debug register dump *****");
   
   Serial.print("INPUT0:  ");
   Serial.println(register_input0, HEX);
   Serial.print("INPUT1:  ");
   Serial.println(register_input1, HEX);
   Serial.print("OUTPUT:  ");
   Serial.println(register_output0, HEX);
   Serial.print("OUTPUT:  ");
   Serial.println(register_output1, HEX);
   Serial.print("CONF:    ");
   Serial.println(register_conf0, HEX);
   Serial.print("CONF:    ");
   Serial.println(register_conf1, HEX);
   Serial.print("PUDEN:   ");
   Serial.println(register_puden0, HEX);
   Serial.print("PUDEN:   ");
   Serial.println(register_puden1, HEX);
   Serial.print("PUD:     ");
   Serial.println(register_pud0, HEX);
   Serial.print("PUD:     ");
   Serial.println(register_pud1, HEX);
   Serial.print("INVALID: ");
   Serial.println(register_invalid, HEX);
   Serial.println("*******************************");
   return;
}
