EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 7
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:+5V #PWR?
U 1 1 6EAD1643
P 4175 2025
AR Path="/629982B4/6EAD1643" Ref="#PWR?"  Part="1" 
AR Path="/62999A71/6EAD1643" Ref="#PWR0204"  Part="1" 
F 0 "#PWR0204" H 4175 1875 50  0001 C CNN
F 1 "+5V" H 4150 2175 50  0000 C CNN
F 2 "" H 4175 2025 50  0001 C CNN
F 3 "" H 4175 2025 50  0001 C CNN
	1    4175 2025
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6EADCE66
P 4175 2725
AR Path="/6114D32E/6EADCE66" Ref="#PWR?"  Part="1" 
AR Path="/6247A5CE/6EADCE66" Ref="#PWR?"  Part="1" 
AR Path="/612340DE/6EADCE66" Ref="#PWR?"  Part="1" 
AR Path="/62F6B81F/6EADCE66" Ref="#PWR?"  Part="1" 
AR Path="/629982B4/6EADCE66" Ref="#PWR?"  Part="1" 
AR Path="/62999A71/6EADCE66" Ref="#PWR0206"  Part="1" 
F 0 "#PWR0206" H 4175 2475 50  0001 C CNN
F 1 "GND" H 4180 2552 50  0000 C CNN
F 2 "" H 4175 2725 50  0001 C CNN
F 3 "" H 4175 2725 50  0001 C CNN
	1    4175 2725
	1    0    0    -1  
$EndComp
Text HLabel 3950 2350 0    50   BiDi ~ 0
RGB_DIN
Text HLabel 3950 2125 0    50   BiDi ~ 0
SDA
Text HLabel 3950 2200 0    50   BiDi ~ 0
SCL
Text HLabel 3950 2500 0    50   Output ~ 0
ENCODER_B_R
Text HLabel 3950 2600 0    50   Output ~ 0
ENCODER_A_R
$EndSCHEMATC
