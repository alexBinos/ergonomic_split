EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 7
Title "TKL Keyboard"
Date ""
Rev "0"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 750  1000 0    315  ~ 0
USB Upstream
$Comp
L Connector:USB_C_Receptacle_USB2.0 J1
U 1 1 60D529C7
P 3950 3325
AR Path="/6114D32E/60D529C7" Ref="J1"  Part="1" 
AR Path="/6247A5CE/60D529C7" Ref="J?"  Part="1" 
AR Path="/612340DE/60D529C7" Ref="J1"  Part="1" 
AR Path="/62F6B81F/60D529C7" Ref="J1"  Part="1" 
AR Path="/629982B4/60D529C7" Ref="J1"  Part="1" 
F 0 "J1" H 3950 4175 50  0000 C CNN
F 1 "USB_C_Receptacle_USB2.0" H 4000 4100 50  0000 C CNN
F 2 "Connector_USB:USB_C_Receptacle_GCT_USB4085" H 4100 3325 50  0001 C CNN
F 3 "https://www.usb.org/sites/default/files/documents/usb_type-c.zip" H 4100 3325 50  0001 C CNN
	1    3950 3325
	1    0    0    -1  
$EndComp
$Comp
L power:VBUS #PWR09
U 1 1 60D529CD
P 4625 2600
AR Path="/6114D32E/60D529CD" Ref="#PWR09"  Part="1" 
AR Path="/6247A5CE/60D529CD" Ref="#PWR?"  Part="1" 
AR Path="/612340DE/60D529CD" Ref="#PWR09"  Part="1" 
AR Path="/62F6B81F/60D529CD" Ref="#PWR04"  Part="1" 
AR Path="/629982B4/60D529CD" Ref="#PWR04"  Part="1" 
F 0 "#PWR04" H 4625 2450 50  0001 C CNN
F 1 "VBUS" H 4640 2773 50  0000 C CNN
F 2 "" H 4625 2600 50  0001 C CNN
F 3 "" H 4625 2600 50  0001 C CNN
	1    4625 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 4225 3950 4275
$Comp
L power:GND #PWR08
U 1 1 60D529D7
P 4375 4775
AR Path="/6114D32E/60D529D7" Ref="#PWR08"  Part="1" 
AR Path="/6247A5CE/60D529D7" Ref="#PWR?"  Part="1" 
AR Path="/612340DE/60D529D7" Ref="#PWR08"  Part="1" 
AR Path="/62F6B81F/60D529D7" Ref="#PWR03"  Part="1" 
AR Path="/629982B4/60D529D7" Ref="#PWR03"  Part="1" 
F 0 "#PWR03" H 4375 4525 50  0001 C CNN
F 1 "GND" H 4380 4602 50  0000 C CNN
F 2 "" H 4375 4775 50  0001 C CNN
F 3 "" H 4375 4775 50  0001 C CNN
	1    4375 4775
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 3525 4650 3475
Wire Wire Line
	4550 3525 4650 3525
Wire Wire Line
	4650 3325 4650 3275
Wire Wire Line
	4550 3325 4650 3325
Wire Wire Line
	4550 3225 4650 3225
Wire Wire Line
	4550 3425 4650 3425
$Comp
L Device:Ferrite_Bead FB2
U 1 1 60D529E6
P 4925 2725
AR Path="/6114D32E/60D529E6" Ref="FB2"  Part="1" 
AR Path="/6247A5CE/60D529E6" Ref="FB?"  Part="1" 
AR Path="/612340DE/60D529E6" Ref="FB2"  Part="1" 
AR Path="/62F6B81F/60D529E6" Ref="FB3"  Part="1" 
AR Path="/629982B4/60D529E6" Ref="FB3"  Part="1" 
F 0 "FB3" V 5000 2850 50  0000 C CNN
F 1 "Ferrite_Bead" V 5000 2975 50  0001 C CNN
F 2 "Inductor_SMD:L_0805_2012Metric" V 4855 2725 50  0001 C CNN
F 3 "~" H 4925 2725 50  0001 C CNN
	1    4925 2725
	0    1    1    0   
$EndComp
Wire Wire Line
	5075 2725 5175 2725
$Comp
L Device:Ferrite_Bead FB1
U 1 1 60D529ED
P 4150 4275
AR Path="/6114D32E/60D529ED" Ref="FB1"  Part="1" 
AR Path="/6247A5CE/60D529ED" Ref="FB?"  Part="1" 
AR Path="/612340DE/60D529ED" Ref="FB1"  Part="1" 
AR Path="/62F6B81F/60D529ED" Ref="FB2"  Part="1" 
AR Path="/629982B4/60D529ED" Ref="FB2"  Part="1" 
F 0 "FB2" V 4350 4250 50  0000 C CNN
F 1 "Ferrite_Bead" V 4250 3775 50  0001 C CNN
F 2 "Inductor_SMD:L_0805_2012Metric" V 4080 4275 50  0001 C CNN
F 3 "~" H 4150 4275 50  0001 C CNN
	1    4150 4275
	0    1    1    0   
$EndComp
Wire Wire Line
	3950 4275 4000 4275
Connection ~ 3950 4275
Wire Wire Line
	4300 4275 4375 4275
Wire Wire Line
	4550 2725 4625 2725
Wire Wire Line
	4625 2725 4625 2600
Connection ~ 4625 2725
Connection ~ 4650 3275
Wire Wire Line
	4650 3275 4650 3225
Connection ~ 4650 3475
Wire Wire Line
	4650 3475 4650 3425
NoConn ~ 4550 3825
NoConn ~ 4550 3925
$Comp
L Device:R R3
U 1 1 60D52A23
P 4750 3750
AR Path="/6114D32E/60D52A23" Ref="R3"  Part="1" 
AR Path="/6247A5CE/60D52A23" Ref="R?"  Part="1" 
AR Path="/612340DE/60D52A23" Ref="R3"  Part="1" 
AR Path="/62F6B81F/60D52A23" Ref="R1"  Part="1" 
AR Path="/629982B4/60D52A23" Ref="R1"  Part="1" 
F 0 "R1" V 4675 3750 50  0000 C CNN
F 1 "5K1" V 4750 3750 50  0000 C CNN
F 2 "resistor_smd:R_0603_1608Metric" V 4680 3750 50  0001 C CNN
F 3 "~" H 4750 3750 50  0001 C CNN
	1    4750 3750
	1    0    0    1   
$EndComp
$Comp
L Device:R R4
U 1 1 60D52A29
P 4925 3750
AR Path="/6114D32E/60D52A29" Ref="R4"  Part="1" 
AR Path="/6247A5CE/60D52A29" Ref="R?"  Part="1" 
AR Path="/612340DE/60D52A29" Ref="R4"  Part="1" 
AR Path="/62F6B81F/60D52A29" Ref="R2"  Part="1" 
AR Path="/629982B4/60D52A29" Ref="R2"  Part="1" 
F 0 "R2" V 4850 3750 50  0000 C CNN
F 1 "5K1" V 4925 3750 50  0000 C CNN
F 2 "resistor_smd:R_0603_1608Metric" V 4855 3750 50  0001 C CNN
F 3 "~" H 4925 3750 50  0001 C CNN
	1    4925 3750
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR011
U 1 1 60D52A2F
P 4925 3950
AR Path="/6114D32E/60D52A2F" Ref="#PWR011"  Part="1" 
AR Path="/6247A5CE/60D52A2F" Ref="#PWR?"  Part="1" 
AR Path="/612340DE/60D52A2F" Ref="#PWR011"  Part="1" 
AR Path="/62F6B81F/60D52A2F" Ref="#PWR06"  Part="1" 
AR Path="/629982B4/60D52A2F" Ref="#PWR06"  Part="1" 
F 0 "#PWR06" H 4925 3700 50  0001 C CNN
F 1 "GND" H 4930 3777 50  0000 C CNN
F 2 "" H 4925 3950 50  0001 C CNN
F 3 "" H 4925 3950 50  0001 C CNN
	1    4925 3950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 60D52A35
P 4750 3950
AR Path="/6114D32E/60D52A35" Ref="#PWR010"  Part="1" 
AR Path="/6247A5CE/60D52A35" Ref="#PWR?"  Part="1" 
AR Path="/612340DE/60D52A35" Ref="#PWR010"  Part="1" 
AR Path="/62F6B81F/60D52A35" Ref="#PWR05"  Part="1" 
AR Path="/629982B4/60D52A35" Ref="#PWR05"  Part="1" 
F 0 "#PWR05" H 4750 3700 50  0001 C CNN
F 1 "GND" H 4755 3777 50  0000 C CNN
F 2 "" H 4750 3950 50  0001 C CNN
F 3 "" H 4750 3950 50  0001 C CNN
	1    4750 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 3900 4750 3950
Wire Wire Line
	4925 3900 4925 3950
Wire Wire Line
	4550 3025 4750 3025
Wire Wire Line
	4750 3025 4750 3600
Wire Wire Line
	4550 2925 4925 2925
Wire Wire Line
	4925 2925 4925 3600
Wire Wire Line
	6325 4075 6325 4125
Wire Wire Line
	6325 5175 6325 5125
$Comp
L power:GND #PWR015
U 1 1 60D52A01
P 6325 5175
AR Path="/6114D32E/60D52A01" Ref="#PWR015"  Part="1" 
AR Path="/6247A5CE/60D52A01" Ref="#PWR?"  Part="1" 
AR Path="/612340DE/60D52A01" Ref="#PWR015"  Part="1" 
AR Path="/62F6B81F/60D52A01" Ref="#PWR010"  Part="1" 
AR Path="/629982B4/60D52A01" Ref="#PWR010"  Part="1" 
F 0 "#PWR010" H 6325 4925 50  0001 C CNN
F 1 "GND" H 6330 5002 50  0000 C CNN
F 2 "" H 6325 5175 50  0001 C CNN
F 3 "" H 6325 5175 50  0001 C CNN
	1    6325 5175
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 3475 6900 3475
Wire Wire Line
	6800 3275 6900 3275
$Comp
L Device:R R7
U 1 1 60D529C1
P 6650 3275
AR Path="/6114D32E/60D529C1" Ref="R7"  Part="1" 
AR Path="/6247A5CE/60D529C1" Ref="R?"  Part="1" 
AR Path="/612340DE/60D529C1" Ref="R7"  Part="1" 
AR Path="/62F6B81F/60D529C1" Ref="R5"  Part="1" 
AR Path="/629982B4/60D529C1" Ref="R5"  Part="1" 
F 0 "R5" V 6550 3275 50  0000 C CNN
F 1 "22R" V 6650 3275 50  0000 C CNN
F 2 "resistor_smd:R_0603_1608Metric" V 6580 3275 50  0001 C CNN
F 3 "~" H 6650 3275 50  0001 C CNN
	1    6650 3275
	0    1    1    0   
$EndComp
$Comp
L Device:R R8
U 1 1 60D529BB
P 6650 3475
AR Path="/6114D32E/60D529BB" Ref="R8"  Part="1" 
AR Path="/6247A5CE/60D529BB" Ref="R?"  Part="1" 
AR Path="/612340DE/60D529BB" Ref="R8"  Part="1" 
AR Path="/62F6B81F/60D529BB" Ref="R6"  Part="1" 
AR Path="/629982B4/60D529BB" Ref="R6"  Part="1" 
F 0 "R6" V 6575 3475 50  0000 C CNN
F 1 "22R" V 6650 3475 50  0000 C CNN
F 2 "resistor_smd:R_0603_1608Metric" V 6580 3475 50  0001 C CNN
F 3 "~" H 6650 3475 50  0001 C CNN
	1    6650 3475
	0    1    -1   0   
$EndComp
$Comp
L Device:L_Core_Iron_Coupled_1423 L1
U 1 1 60DDC17D
P 5975 3375
AR Path="/6114D32E/60DDC17D" Ref="L1"  Part="1" 
AR Path="/6247A5CE/60DDC17D" Ref="L?"  Part="1" 
AR Path="/612340DE/60DDC17D" Ref="L1"  Part="1" 
AR Path="/62F6B81F/60DDC17D" Ref="L1"  Part="1" 
AR Path="/629982B4/60DDC17D" Ref="L1"  Part="1" 
F 0 "L1" H 6175 3400 50  0000 C CNN
F 1 "L_Core_Iron_Coupled_1423" H 6300 3600 50  0000 C CNN
F 2 "custom_footprint_library:SMM2012E" H 5975 3375 50  0001 C CNN
F 3 "~" H 5975 3375 50  0001 C CNN
	1    5975 3375
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5575 3275 5575 3800
NoConn ~ 6825 4725
Wire Wire Line
	5475 2425 5475 2375
Wire Wire Line
	5475 2725 5475 2775
Wire Wire Line
	3225 3875 3225 3825
Wire Wire Line
	2775 3875 2775 3825
$Comp
L power:VBUS #PWR?
U 1 1 60E2AA62
P 3225 3825
AR Path="/60E2AA62" Ref="#PWR?"  Part="1" 
AR Path="/60D44BDB/60E2AA62" Ref="#PWR?"  Part="1" 
AR Path="/60D99CF5/60E2AA62" Ref="#PWR?"  Part="1" 
AR Path="/6114D32E/60E2AA62" Ref="#PWR03"  Part="1" 
AR Path="/6247A5CE/60E2AA62" Ref="#PWR?"  Part="1" 
AR Path="/612340DE/60E2AA62" Ref="#PWR03"  Part="1" 
AR Path="/62F6B81F/60E2AA62" Ref="#PWR02"  Part="1" 
AR Path="/629982B4/60E2AA62" Ref="#PWR02"  Part="1" 
F 0 "#PWR02" H 3225 3675 50  0001 C CNN
F 1 "VBUS" H 3240 3998 50  0000 C CNN
F 2 "" H 3225 3825 50  0001 C CNN
F 3 "" H 3225 3825 50  0001 C CNN
	1    3225 3825
	1    0    0    -1  
$EndComp
$Comp
L power:VBUS #PWR?
U 1 1 60E2AA68
P 2775 3825
AR Path="/60E2AA68" Ref="#PWR?"  Part="1" 
AR Path="/60D44BDB/60E2AA68" Ref="#PWR?"  Part="1" 
AR Path="/60D99CF5/60E2AA68" Ref="#PWR?"  Part="1" 
AR Path="/6114D32E/60E2AA68" Ref="#PWR02"  Part="1" 
AR Path="/6247A5CE/60E2AA68" Ref="#PWR?"  Part="1" 
AR Path="/612340DE/60E2AA68" Ref="#PWR02"  Part="1" 
AR Path="/62F6B81F/60E2AA68" Ref="#PWR01"  Part="1" 
AR Path="/629982B4/60E2AA68" Ref="#PWR01"  Part="1" 
F 0 "#PWR01" H 2775 3675 50  0001 C CNN
F 1 "VBUS" H 2790 3998 50  0000 C CNN
F 2 "" H 2775 3825 50  0001 C CNN
F 3 "" H 2775 3825 50  0001 C CNN
	1    2775 3825
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 60E2AA7C
P 3225 4025
AR Path="/60E2AA7C" Ref="C?"  Part="1" 
AR Path="/60D44BDB/60E2AA7C" Ref="C?"  Part="1" 
AR Path="/60D99CF5/60E2AA7C" Ref="C?"  Part="1" 
AR Path="/6114D32E/60E2AA7C" Ref="C2"  Part="1" 
AR Path="/6247A5CE/60E2AA7C" Ref="C?"  Part="1" 
AR Path="/612340DE/60E2AA7C" Ref="C2"  Part="1" 
AR Path="/62F6B81F/60E2AA7C" Ref="C2"  Part="1" 
AR Path="/629982B4/60E2AA7C" Ref="C2"  Part="1" 
F 0 "C2" H 3340 4071 50  0000 L CNN
F 1 "1uF" H 3340 3980 50  0000 L CNN
F 2 "Capacitor_smd:C_0603_1608Metric" H 3263 3875 50  0001 C CNN
F 3 "~" H 3225 4025 50  0001 C CNN
	1    3225 4025
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 60E2AA82
P 2775 4025
AR Path="/60E2AA82" Ref="C?"  Part="1" 
AR Path="/60D44BDB/60E2AA82" Ref="C?"  Part="1" 
AR Path="/60D99CF5/60E2AA82" Ref="C?"  Part="1" 
AR Path="/6114D32E/60E2AA82" Ref="C1"  Part="1" 
AR Path="/6247A5CE/60E2AA82" Ref="C?"  Part="1" 
AR Path="/612340DE/60E2AA82" Ref="C1"  Part="1" 
AR Path="/62F6B81F/60E2AA82" Ref="C1"  Part="1" 
AR Path="/629982B4/60E2AA82" Ref="C1"  Part="1" 
F 0 "C1" H 2890 4071 50  0000 L CNN
F 1 "10uF" H 2890 3980 50  0000 L CNN
F 2 "Capacitor_smd:C_0603_1608Metric" H 2813 3875 50  0001 C CNN
F 3 "~" H 2775 4025 50  0001 C CNN
	1    2775 4025
	1    0    0    -1  
$EndComp
Text Notes 2725 3500 0    50   ~ 0
VBUS Decoupling
$Comp
L power:VBUS #PWR014
U 1 1 60FA6CB5
P 6325 4075
AR Path="/6114D32E/60FA6CB5" Ref="#PWR014"  Part="1" 
AR Path="/6247A5CE/60FA6CB5" Ref="#PWR?"  Part="1" 
AR Path="/612340DE/60FA6CB5" Ref="#PWR014"  Part="1" 
AR Path="/62F6B81F/60FA6CB5" Ref="#PWR09"  Part="1" 
AR Path="/629982B4/60FA6CB5" Ref="#PWR09"  Part="1" 
F 0 "#PWR09" H 6325 3925 50  0001 C CNN
F 1 "VBUS" H 6340 4248 50  0000 C CNN
F 2 "" H 6325 4075 50  0001 C CNN
F 3 "" H 6325 4075 50  0001 C CNN
	1    6325 4075
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 60E2AA5A
P 5475 2575
AR Path="/60E2AA5A" Ref="C?"  Part="1" 
AR Path="/60D44BDB/60E2AA5A" Ref="C?"  Part="1" 
AR Path="/60D99CF5/60E2AA5A" Ref="C?"  Part="1" 
AR Path="/6114D32E/60E2AA5A" Ref="C3"  Part="1" 
AR Path="/6247A5CE/60E2AA5A" Ref="C?"  Part="1" 
AR Path="/612340DE/60E2AA5A" Ref="C3"  Part="1" 
AR Path="/62F6B81F/60E2AA5A" Ref="C3"  Part="1" 
AR Path="/629982B4/60E2AA5A" Ref="C3"  Part="1" 
F 0 "C3" H 5590 2621 50  0000 L CNN
F 1 "100nF" H 5590 2530 50  0000 L CNN
F 2 "Capacitor_smd:C_0603_1608Metric" H 5513 2425 50  0001 C CNN
F 3 "~" H 5475 2575 50  0001 C CNN
	1    5475 2575
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60E2AA54
P 5475 2775
AR Path="/60E2AA54" Ref="#PWR?"  Part="1" 
AR Path="/60D44BDB/60E2AA54" Ref="#PWR?"  Part="1" 
AR Path="/60D99CF5/60E2AA54" Ref="#PWR?"  Part="1" 
AR Path="/6114D32E/60E2AA54" Ref="#PWR013"  Part="1" 
AR Path="/6247A5CE/60E2AA54" Ref="#PWR?"  Part="1" 
AR Path="/612340DE/60E2AA54" Ref="#PWR013"  Part="1" 
AR Path="/62F6B81F/60E2AA54" Ref="#PWR08"  Part="1" 
AR Path="/629982B4/60E2AA54" Ref="#PWR08"  Part="1" 
F 0 "#PWR08" H 5475 2525 50  0001 C CNN
F 1 "GND" H 5480 2602 50  0000 C CNN
F 2 "" H 5475 2775 50  0001 C CNN
F 3 "" H 5475 2775 50  0001 C CNN
	1    5475 2775
	1    0    0    -1  
$EndComp
Wire Wire Line
	2775 4275 3225 4275
Wire Wire Line
	2775 4175 2775 4275
Wire Wire Line
	3225 4175 3225 4275
Connection ~ 3225 4275
Text Label 6375 3275 0    50   ~ 0
D-
Text Label 6375 3475 0    50   ~ 0
D+
$Comp
L Device:Ferrite_Bead FB3
U 1 1 60DECA32
P 4125 4650
AR Path="/6114D32E/60DECA32" Ref="FB3"  Part="1" 
AR Path="/6247A5CE/60DECA32" Ref="FB?"  Part="1" 
AR Path="/612340DE/60DECA32" Ref="FB3"  Part="1" 
AR Path="/62F6B81F/60DECA32" Ref="FB1"  Part="1" 
AR Path="/629982B4/60DECA32" Ref="FB1"  Part="1" 
F 0 "FB1" V 4300 4650 50  0000 C CNN
F 1 "Ferrite_Bead" V 4075 4050 50  0001 C CNN
F 2 "Inductor_SMD:L_0805_2012Metric" V 4055 4650 50  0001 C CNN
F 3 "~" H 4125 4650 50  0001 C CNN
	1    4125 4650
	0    1    1    0   
$EndComp
Wire Wire Line
	3225 4275 3650 4275
Wire Wire Line
	3650 4275 3900 4275
Connection ~ 3650 4275
Wire Wire Line
	3650 4225 3650 4275
Wire Wire Line
	5175 2375 5475 2375
Text Notes 5575 3950 0    50   ~ 0
ESD Protection
Wire Wire Line
	5575 3800 6975 3800
Wire Wire Line
	6975 3800 6975 4525
NoConn ~ 5825 4525
Wire Wire Line
	3975 4650 3900 4650
Wire Wire Line
	3900 4650 3900 4275
Connection ~ 3900 4275
Wire Wire Line
	3900 4275 3950 4275
Wire Wire Line
	4375 4275 4375 4650
Wire Wire Line
	4275 4650 4375 4650
Connection ~ 4375 4650
Wire Wire Line
	4375 4650 4375 4775
Wire Wire Line
	4625 2725 4775 2725
Wire Wire Line
	5175 2375 5175 2725
Wire Notes Line
	2500 2000 7875 2000
Wire Notes Line
	7875 2000 7875 5550
Wire Notes Line
	7875 5550 2500 5550
Wire Notes Line
	2500 5550 2500 2000
$Comp
L Power_Protection:SRV05-4 U2
U 1 1 60D529F9
P 6325 4625
AR Path="/6114D32E/60D529F9" Ref="U2"  Part="1" 
AR Path="/6247A5CE/60D529F9" Ref="U?"  Part="1" 
AR Path="/612340DE/60D529F9" Ref="U2"  Part="1" 
AR Path="/62F6B81F/60D529F9" Ref="U1"  Part="1" 
AR Path="/629982B4/60D529F9" Ref="U1"  Part="1" 
F 0 "U1" H 6075 5150 50  0000 C CNN
F 1 "SRV05-4" H 6050 5075 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 7025 4175 50  0001 C CNN
F 3 "http://www.onsemi.com/pub/Collateral/SRV05-4-D.PDF" H 6325 4625 50  0001 C CNN
	1    6325 4625
	1    0    0    -1  
$EndComp
Text HLabel 6900 3475 2    50   Output ~ 0
USB_UPSTREAM_OUT+
Text HLabel 6900 3275 2    50   Output ~ 0
USB_UPSTREAM_OUT-
Wire Wire Line
	4650 3275 5575 3275
Wire Wire Line
	4650 3475 5450 3475
Connection ~ 5575 3275
Connection ~ 5450 3475
Text Label 5025 3275 0    50   ~ 0
CD-
Text Label 5025 3475 0    50   ~ 0
CD+
Wire Wire Line
	5575 3275 5775 3275
Wire Wire Line
	6175 3275 6500 3275
Wire Wire Line
	5450 3475 5775 3475
Wire Wire Line
	6175 3475 6275 3475
Text GLabel 5750 2375 2    50   Input ~ 0
+5V0_USB
Wire Wire Line
	5750 2375 5475 2375
Connection ~ 5475 2375
Wire Wire Line
	5450 4725 5825 4725
Wire Wire Line
	5450 3475 5450 4725
Wire Wire Line
	6825 4525 6975 4525
$Comp
L Device:R R?
U 1 1 614B1649
P 6275 2975
AR Path="/6114D32E/614B1649" Ref="R?"  Part="1" 
AR Path="/6247A5CE/614B1649" Ref="R?"  Part="1" 
AR Path="/612340DE/614B1649" Ref="R?"  Part="1" 
AR Path="/62F6B81F/614B1649" Ref="R42"  Part="1" 
AR Path="/629982B4/614B1649" Ref="R42"  Part="1" 
F 0 "R42" V 6200 2975 50  0000 C CNN
F 1 "1K5" V 6275 2975 50  0000 C CNN
F 2 "resistor_smd:R_0603_1608Metric" V 6205 2975 50  0001 C CNN
F 3 "~" H 6275 2975 50  0001 C CNN
	1    6275 2975
	1    0    0    1   
$EndComp
Wire Wire Line
	6275 3125 6275 3475
Connection ~ 6275 3475
Wire Wire Line
	6275 3475 6500 3475
$Comp
L power:+3.3V #PWR?
U 1 1 614B6C4F
P 6275 2775
AR Path="/6114D32E/614B6C4F" Ref="#PWR?"  Part="1" 
AR Path="/6247A5CE/614B6C4F" Ref="#PWR?"  Part="1" 
AR Path="/612340DE/614B6C4F" Ref="#PWR?"  Part="1" 
AR Path="/62F6B81F/614B6C4F" Ref="#PWR0538"  Part="1" 
AR Path="/613390DE/614B6C4F" Ref="#PWR?"  Part="1" 
AR Path="/629982B4/614B6C4F" Ref="#PWR0538"  Part="1" 
F 0 "#PWR0538" H 6275 2625 50  0001 C CNN
F 1 "+3.3V" H 6290 2948 50  0000 C CNN
F 2 "" H 6275 2775 50  0001 C CNN
F 3 "" H 6275 2775 50  0001 C CNN
	1    6275 2775
	1    0    0    -1  
$EndComp
Wire Wire Line
	6275 2825 6275 2775
$EndSCHEMATC
