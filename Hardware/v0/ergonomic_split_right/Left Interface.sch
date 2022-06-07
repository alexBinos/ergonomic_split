EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 5
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
P 5525 3475
AR Path="/629982B4/6EAD1643" Ref="#PWR?"  Part="1" 
AR Path="/62999A71/6EAD1643" Ref="#PWR0204"  Part="1" 
F 0 "#PWR0204" H 5525 3325 50  0001 C CNN
F 1 "+5V" H 5500 3625 50  0000 C CNN
F 2 "" H 5525 3475 50  0001 C CNN
F 3 "" H 5525 3475 50  0001 C CNN
	1    5525 3475
	1    0    0    -1  
$EndComp
Text HLabel 6325 3750 2    50   Output ~ 0
ENCODER_B_R
Text HLabel 5375 3750 0    50   Output ~ 0
ENCODER_A_R
$Comp
L power:GND #PWR?
U 1 1 62D970D0
P 6150 3900
AR Path="/6114D32E/62D970D0" Ref="#PWR?"  Part="1" 
AR Path="/6247A5CE/62D970D0" Ref="#PWR?"  Part="1" 
AR Path="/612340DE/62D970D0" Ref="#PWR?"  Part="1" 
AR Path="/62F6B81F/62D970D0" Ref="#PWR?"  Part="1" 
AR Path="/629982B4/62D970D0" Ref="#PWR?"  Part="1" 
AR Path="/62999A71/62D970D0" Ref="#PWR018"  Part="1" 
F 0 "#PWR018" H 6150 3650 50  0001 C CNN
F 1 "GND" H 6155 3727 50  0000 C CNN
F 2 "" H 6150 3900 50  0001 C CNN
F 3 "" H 6150 3900 50  0001 C CNN
	1    6150 3900
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x04_Odd_Even J2
U 1 1 62DC873B
P 5800 3650
F 0 "J2" H 5850 3967 50  0000 C CNN
F 1 "Left_Interface" H 5850 3876 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Horizontal" H 5800 3650 50  0001 C CNN
F 3 "~" H 5800 3650 50  0001 C CNN
	1    5800 3650
	1    0    0    -1  
$EndComp
Text HLabel 5375 3850 0    50   Output ~ 0
RGB_DOUT
Text HLabel 6325 3650 2    50   BiDi ~ 0
SCL
Text HLabel 5375 3650 0    50   BiDi ~ 0
SDA
Wire Wire Line
	5525 3475 5525 3550
Wire Wire Line
	5525 3550 5600 3550
Wire Wire Line
	5375 3650 5600 3650
Wire Wire Line
	5375 3750 5600 3750
Wire Wire Line
	5600 3850 5375 3850
Wire Wire Line
	6100 3650 6325 3650
Wire Wire Line
	6100 3750 6325 3750
Wire Wire Line
	6150 3900 6150 3850
Wire Wire Line
	6150 3550 6100 3550
Wire Wire Line
	6100 3850 6150 3850
Connection ~ 6150 3850
Wire Wire Line
	6150 3850 6150 3550
Text Notes 750  1000 0    315  ~ 0
Left Interface
Wire Notes Line
	4500 4250 7000 4250
Wire Notes Line
	4500 3000 4500 4250
Wire Notes Line
	7000 4250 7000 3000
Wire Notes Line
	7000 3000 4500 3000
$EndSCHEMATC
