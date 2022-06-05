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
P 6875 2450
AR Path="/629982B4/6EAD1643" Ref="#PWR?"  Part="1" 
AR Path="/62999A71/6EAD1643" Ref="#PWR0204"  Part="1" 
F 0 "#PWR0204" H 6875 2300 50  0001 C CNN
F 1 "+5V" H 6850 2600 50  0000 C CNN
F 2 "" H 6875 2450 50  0001 C CNN
F 3 "" H 6875 2450 50  0001 C CNN
	1    6875 2450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6EADCE66
P 6925 4350
AR Path="/6114D32E/6EADCE66" Ref="#PWR?"  Part="1" 
AR Path="/6247A5CE/6EADCE66" Ref="#PWR?"  Part="1" 
AR Path="/612340DE/6EADCE66" Ref="#PWR?"  Part="1" 
AR Path="/62F6B81F/6EADCE66" Ref="#PWR?"  Part="1" 
AR Path="/629982B4/6EADCE66" Ref="#PWR?"  Part="1" 
AR Path="/62999A71/6EADCE66" Ref="#PWR0206"  Part="1" 
F 0 "#PWR0206" H 6925 4100 50  0001 C CNN
F 1 "GND" H 6930 4177 50  0000 C CNN
F 2 "" H 6925 4350 50  0001 C CNN
F 3 "" H 6925 4350 50  0001 C CNN
	1    6925 4350
	1    0    0    -1  
$EndComp
Text HLabel 6750 2950 0    50   BiDi ~ 0
RGB_DIN
Text HLabel 6750 3250 0    50   BiDi ~ 0
SDA
Text HLabel 6750 3450 0    50   BiDi ~ 0
SCL
Text HLabel 6750 4200 0    50   Output ~ 0
ENCODER_B_R
Text HLabel 6750 3750 0    50   Output ~ 0
ENCODER_A_R
$Comp
L Connector:USB_C_Receptacle_USB2.0 J?
U 1 1 62D74C82
P 2575 2375
AR Path="/6114D32E/62D74C82" Ref="J?"  Part="1" 
AR Path="/6247A5CE/62D74C82" Ref="J?"  Part="1" 
AR Path="/612340DE/62D74C82" Ref="J?"  Part="1" 
AR Path="/62F6B81F/62D74C82" Ref="J?"  Part="1" 
AR Path="/629982B4/62D74C82" Ref="J?"  Part="1" 
AR Path="/62999A71/62D74C82" Ref="J?"  Part="1" 
F 0 "J?" H 2575 3225 50  0000 C CNN
F 1 "USB_C_Receptacle_USB2.0" H 2625 3150 50  0000 C CNN
F 2 "Connector_USB:USB_C_Receptacle_GCT_USB4085" H 2725 2375 50  0001 C CNN
F 3 "https://www.usb.org/sites/default/files/documents/usb_type-c.zip" H 2725 2375 50  0001 C CNN
	1    2575 2375
	-1   0    0    -1  
$EndComp
$Comp
L custom_parts_library:USB_C_Receptical_USB4085 J?
U 1 1 62D93B58
P 7575 3400
F 0 "J?" H 7683 4500 50  0000 C CNN
F 1 "USB_C_Receptical_USB4085" H 7683 4409 50  0000 C CNN
F 2 "" H 7600 4425 50  0001 C CNN
F 3 "" H 7600 4425 50  0001 C CNN
	1    7575 3400
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 62D970D0
P 7575 4600
AR Path="/6114D32E/62D970D0" Ref="#PWR?"  Part="1" 
AR Path="/6247A5CE/62D970D0" Ref="#PWR?"  Part="1" 
AR Path="/612340DE/62D970D0" Ref="#PWR?"  Part="1" 
AR Path="/62F6B81F/62D970D0" Ref="#PWR?"  Part="1" 
AR Path="/629982B4/62D970D0" Ref="#PWR?"  Part="1" 
AR Path="/62999A71/62D970D0" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7575 4350 50  0001 C CNN
F 1 "GND" H 7580 4427 50  0000 C CNN
F 2 "" H 7575 4600 50  0001 C CNN
F 3 "" H 7575 4600 50  0001 C CNN
	1    7575 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6875 2450 6875 2525
Wire Wire Line
	6875 2750 6950 2750
Wire Wire Line
	6950 2675 6875 2675
Connection ~ 6875 2675
Wire Wire Line
	6875 2675 6875 2750
Wire Wire Line
	6950 2600 6875 2600
Connection ~ 6875 2600
Wire Wire Line
	6875 2600 6875 2675
Wire Wire Line
	6950 2525 6875 2525
Connection ~ 6875 2525
Wire Wire Line
	6875 2525 6875 2600
Wire Wire Line
	6750 2950 6875 2950
Wire Wire Line
	6950 3050 6875 3050
Wire Wire Line
	6875 3050 6875 2950
Connection ~ 6875 2950
Wire Wire Line
	6875 2950 6950 2950
Wire Wire Line
	6750 3250 6875 3250
Wire Wire Line
	6950 3350 6875 3350
Wire Wire Line
	6875 3350 6875 3250
Connection ~ 6875 3250
Wire Wire Line
	6875 3250 6950 3250
Wire Wire Line
	6750 3450 6875 3450
Wire Wire Line
	6950 3550 6875 3550
Wire Wire Line
	6875 3550 6875 3450
Connection ~ 6875 3450
Wire Wire Line
	6875 3450 6950 3450
Wire Wire Line
	6750 3750 6875 3750
Wire Wire Line
	6950 3850 6875 3850
Wire Wire Line
	6875 3850 6875 3750
Connection ~ 6875 3750
Wire Wire Line
	6875 3750 6950 3750
Wire Wire Line
	6750 4200 6875 4200
Wire Wire Line
	6875 4275 6875 4200
Connection ~ 6875 4200
Wire Wire Line
	6875 4200 6950 4200
Wire Wire Line
	6875 4275 6950 4275
Wire Wire Line
	6925 4050 6950 4050
Wire Wire Line
	6950 4125 6925 4125
Wire Wire Line
	6925 4050 6925 4125
Connection ~ 6925 4125
Wire Wire Line
	6925 4125 6925 4350
Wire Wire Line
	7575 4600 7575 4550
$EndSCHEMATC
