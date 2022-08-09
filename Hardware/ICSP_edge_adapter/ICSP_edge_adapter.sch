EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L Connector_Generic:Conn_02x03_Odd_Even J1
U 1 1 62C90E4F
P 4450 3600
F 0 "J1" H 4500 3917 50  0000 C CNN
F 1 "Conn_02x03_Odd_Even" H 4325 3800 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical_SMD" H 4450 3600 50  0001 C CNN
F 3 "~" H 4450 3600 50  0001 C CNN
	1    4450 3600
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J2
U 1 1 62C9153A
P 7200 3600
F 0 "J2" H 7250 3917 50  0000 C CNN
F 1 "Conn_02x03_Odd_Even" H 7250 3826 50  0000 C CNN
F 2 "custom_footprint_library:Conn_AVX_PCB_Edge_02x03_Receptical" H 7200 3600 50  0001 C CNN
F 3 "~" H 7200 3600 50  0001 C CNN
	1    7200 3600
	1    0    0    -1  
$EndComp
Text Label 3500 3500 0    50   ~ 0
MISO
Wire Wire Line
	3500 3500 4250 3500
Text Label 3500 3600 0    50   ~ 0
SCK
Wire Wire Line
	3500 3600 4250 3600
Text Label 3500 3700 0    50   ~ 0
RST
Wire Wire Line
	3500 3700 4250 3700
Text Label 5500 3600 2    50   ~ 0
MOSI
Wire Wire Line
	5500 3600 4750 3600
$Comp
L power:+3V3 #PWR01
U 1 1 62C97781
P 4825 3450
F 0 "#PWR01" H 4825 3300 50  0001 C CNN
F 1 "+3V3" H 4840 3623 50  0000 C CNN
F 2 "" H 4825 3450 50  0001 C CNN
F 3 "" H 4825 3450 50  0001 C CNN
	1    4825 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4825 3450 4825 3500
Wire Wire Line
	4825 3500 4750 3500
$Comp
L power:GND #PWR02
U 1 1 62C98795
P 4825 3750
F 0 "#PWR02" H 4825 3500 50  0001 C CNN
F 1 "GND" H 4830 3577 50  0000 C CNN
F 2 "" H 4825 3750 50  0001 C CNN
F 3 "" H 4825 3750 50  0001 C CNN
	1    4825 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4825 3750 4825 3700
Wire Wire Line
	4825 3700 4750 3700
Text Label 6250 3500 0    50   ~ 0
MISO
Wire Wire Line
	6250 3500 7000 3500
Text Label 6250 3600 0    50   ~ 0
SCK
Wire Wire Line
	6250 3600 7000 3600
Text Label 6250 3700 0    50   ~ 0
RST
Wire Wire Line
	6250 3700 7000 3700
Text Label 8250 3600 2    50   ~ 0
MOSI
Wire Wire Line
	8250 3600 7500 3600
$Comp
L power:+3V3 #PWR03
U 1 1 62C9ACE9
P 7575 3450
F 0 "#PWR03" H 7575 3300 50  0001 C CNN
F 1 "+3V3" H 7590 3623 50  0000 C CNN
F 2 "" H 7575 3450 50  0001 C CNN
F 3 "" H 7575 3450 50  0001 C CNN
	1    7575 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7575 3450 7575 3500
Wire Wire Line
	7575 3500 7500 3500
$Comp
L power:GND #PWR04
U 1 1 62C9ACF1
P 7575 3750
F 0 "#PWR04" H 7575 3500 50  0001 C CNN
F 1 "GND" H 7580 3577 50  0000 C CNN
F 2 "" H 7575 3750 50  0001 C CNN
F 3 "" H 7575 3750 50  0001 C CNN
	1    7575 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7575 3750 7575 3700
Wire Wire Line
	7575 3700 7500 3700
Text Notes 750  1000 0    197  ~ 0
ISCP 0.1" Header to Edge Adapter
$EndSCHEMATC
