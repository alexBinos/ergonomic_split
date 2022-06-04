EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 7
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
Power
$Comp
L power:+5V #PWR?
U 1 1 61533A36
P 5325 3600
AR Path="/6114D32E/61533A36" Ref="#PWR?"  Part="1" 
AR Path="/6247A5CE/61533A36" Ref="#PWR?"  Part="1" 
AR Path="/612340DE/61533A36" Ref="#PWR?"  Part="1" 
AR Path="/62F6B81F/61533A36" Ref="#PWR?"  Part="1" 
AR Path="/613390DE/61533A36" Ref="#PWR0519"  Part="1" 
AR Path="/6D0600A2/61533A36" Ref="#PWR0519"  Part="1" 
F 0 "#PWR0519" H 5325 3450 50  0001 C CNN
F 1 "+5V" H 5340 3773 50  0000 C CNN
F 2 "" H 5325 3600 50  0001 C CNN
F 3 "" H 5325 3600 50  0001 C CNN
	1    5325 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5325 3700 5375 3700
$Comp
L power:GND #PWR?
U 1 1 61533A3D
P 6125 4025
AR Path="/6114D32E/61533A3D" Ref="#PWR?"  Part="1" 
AR Path="/6247A5CE/61533A3D" Ref="#PWR?"  Part="1" 
AR Path="/612340DE/61533A3D" Ref="#PWR?"  Part="1" 
AR Path="/62F6B81F/61533A3D" Ref="#PWR?"  Part="1" 
AR Path="/613390DE/61533A3D" Ref="#PWR0520"  Part="1" 
AR Path="/6D0600A2/61533A3D" Ref="#PWR0520"  Part="1" 
F 0 "#PWR0520" H 6125 3775 50  0001 C CNN
F 1 "GND" H 6130 3852 50  0000 C CNN
F 2 "" H 6125 4025 50  0001 C CNN
F 3 "" H 6125 4025 50  0001 C CNN
	1    6125 4025
	1    0    0    -1  
$EndComp
Wire Wire Line
	6125 3900 6075 3900
$Comp
L power:+3.3V #PWR?
U 1 1 61533A44
P 6125 3625
AR Path="/6114D32E/61533A44" Ref="#PWR?"  Part="1" 
AR Path="/6247A5CE/61533A44" Ref="#PWR?"  Part="1" 
AR Path="/612340DE/61533A44" Ref="#PWR?"  Part="1" 
AR Path="/62F6B81F/61533A44" Ref="#PWR?"  Part="1" 
AR Path="/613390DE/61533A44" Ref="#PWR0521"  Part="1" 
AR Path="/6D0600A2/61533A44" Ref="#PWR0521"  Part="1" 
F 0 "#PWR0521" H 6125 3475 50  0001 C CNN
F 1 "+3.3V" H 6140 3798 50  0000 C CNN
F 2 "" H 6125 3625 50  0001 C CNN
F 3 "" H 6125 3625 50  0001 C CNN
	1    6125 3625
	1    0    0    -1  
$EndComp
Wire Wire Line
	6075 3700 6125 3700
Wire Wire Line
	6125 3700 6125 3625
Text Notes 4550 3225 0    50   ~ 0
5V to 3V3 LDO\n200mA
Wire Wire Line
	5375 3900 5325 3900
Wire Wire Line
	5325 3900 5325 3700
Wire Wire Line
	5325 3600 5325 3700
Connection ~ 5325 3700
$Comp
L Device:C C?
U 1 1 61533A6D
P 6425 3825
AR Path="/61533A6D" Ref="C?"  Part="1" 
AR Path="/60D44BDB/61533A6D" Ref="C?"  Part="1" 
AR Path="/62022D96/61533A6D" Ref="C?"  Part="1" 
AR Path="/6247A5CE/61533A6D" Ref="C?"  Part="1" 
AR Path="/6114D32E/61533A6D" Ref="C?"  Part="1" 
AR Path="/612340DE/61533A6D" Ref="C?"  Part="1" 
AR Path="/62F6B81F/61533A6D" Ref="C?"  Part="1" 
AR Path="/613390DE/61533A6D" Ref="C120"  Part="1" 
AR Path="/6D0600A2/61533A6D" Ref="C120"  Part="1" 
F 0 "C120" V 6625 3800 50  0000 L CNN
F 1 "1uF" V 6550 3750 50  0000 L CNN
F 2 "Capacitor_smd:C_0603_1608Metric" H 6463 3675 50  0001 C CNN
F 3 "~" H 6425 3825 50  0001 C CNN
	1    6425 3825
	1    0    0    -1  
$EndComp
Wire Wire Line
	6425 3625 6425 3675
$Comp
L power:GND #PWR?
U 1 1 61533A74
P 6425 4025
AR Path="/6114D32E/61533A74" Ref="#PWR?"  Part="1" 
AR Path="/6247A5CE/61533A74" Ref="#PWR?"  Part="1" 
AR Path="/612340DE/61533A74" Ref="#PWR?"  Part="1" 
AR Path="/62F6B81F/61533A74" Ref="#PWR?"  Part="1" 
AR Path="/613390DE/61533A74" Ref="#PWR0524"  Part="1" 
AR Path="/6D0600A2/61533A74" Ref="#PWR0524"  Part="1" 
F 0 "#PWR0524" H 6425 3775 50  0001 C CNN
F 1 "GND" H 6430 3852 50  0000 C CNN
F 2 "" H 6425 4025 50  0001 C CNN
F 3 "" H 6425 4025 50  0001 C CNN
	1    6425 4025
	1    0    0    -1  
$EndComp
Wire Wire Line
	6425 4025 6425 3975
$Comp
L power:+3.3V #PWR?
U 1 1 61533A7B
P 6425 3625
AR Path="/6114D32E/61533A7B" Ref="#PWR?"  Part="1" 
AR Path="/6247A5CE/61533A7B" Ref="#PWR?"  Part="1" 
AR Path="/612340DE/61533A7B" Ref="#PWR?"  Part="1" 
AR Path="/62F6B81F/61533A7B" Ref="#PWR?"  Part="1" 
AR Path="/613390DE/61533A7B" Ref="#PWR0525"  Part="1" 
AR Path="/6D0600A2/61533A7B" Ref="#PWR0525"  Part="1" 
F 0 "#PWR0525" H 6425 3475 50  0001 C CNN
F 1 "+3.3V" H 6440 3798 50  0000 C CNN
F 2 "" H 6425 3625 50  0001 C CNN
F 3 "" H 6425 3625 50  0001 C CNN
	1    6425 3625
	1    0    0    -1  
$EndComp
Wire Wire Line
	4975 3600 4975 3650
$Comp
L power:GND #PWR?
U 1 1 61533A82
P 4975 4025
AR Path="/6114D32E/61533A82" Ref="#PWR?"  Part="1" 
AR Path="/6247A5CE/61533A82" Ref="#PWR?"  Part="1" 
AR Path="/612340DE/61533A82" Ref="#PWR?"  Part="1" 
AR Path="/62F6B81F/61533A82" Ref="#PWR?"  Part="1" 
AR Path="/613390DE/61533A82" Ref="#PWR0526"  Part="1" 
AR Path="/6D0600A2/61533A82" Ref="#PWR0526"  Part="1" 
F 0 "#PWR0526" H 4975 3775 50  0001 C CNN
F 1 "GND" H 4980 3852 50  0000 C CNN
F 2 "" H 4975 4025 50  0001 C CNN
F 3 "" H 4975 4025 50  0001 C CNN
	1    4975 4025
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 61533A88
P 4975 3800
AR Path="/61533A88" Ref="C?"  Part="1" 
AR Path="/60D44BDB/61533A88" Ref="C?"  Part="1" 
AR Path="/60D99CF5/61533A88" Ref="C?"  Part="1" 
AR Path="/60D44364/61533A88" Ref="C?"  Part="1" 
AR Path="/61150193/61533A88" Ref="C?"  Part="1" 
AR Path="/61D5AB4C/61533A88" Ref="C?"  Part="1" 
AR Path="/6247A5CE/61533A88" Ref="C?"  Part="1" 
AR Path="/6114D32E/61533A88" Ref="C?"  Part="1" 
AR Path="/612340DE/61533A88" Ref="C?"  Part="1" 
AR Path="/62F6B81F/61533A88" Ref="C?"  Part="1" 
AR Path="/613390DE/61533A88" Ref="C5"  Part="1" 
AR Path="/6D0600A2/61533A88" Ref="C5"  Part="1" 
F 0 "C5" H 4875 3900 50  0000 L CNN
F 1 "100nF" V 5050 3850 50  0000 L CNN
F 2 "Capacitor_smd:C_0603_1608Metric" H 5013 3650 50  0001 C CNN
F 3 "~" H 4975 3800 50  0001 C CNN
	1    4975 3800
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61533A8E
P 4975 3600
AR Path="/6114D32E/61533A8E" Ref="#PWR?"  Part="1" 
AR Path="/6247A5CE/61533A8E" Ref="#PWR?"  Part="1" 
AR Path="/612340DE/61533A8E" Ref="#PWR?"  Part="1" 
AR Path="/62F6B81F/61533A8E" Ref="#PWR?"  Part="1" 
AR Path="/613390DE/61533A8E" Ref="#PWR0527"  Part="1" 
AR Path="/6D0600A2/61533A8E" Ref="#PWR0527"  Part="1" 
F 0 "#PWR0527" H 4975 3450 50  0001 C CNN
F 1 "+5V" H 4990 3773 50  0000 C CNN
F 2 "" H 4975 3600 50  0001 C CNN
F 3 "" H 4975 3600 50  0001 C CNN
	1    4975 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6125 3900 6125 4025
Wire Wire Line
	4975 3950 4975 4025
Wire Notes Line
	7075 3000 7075 4500
Wire Notes Line
	7075 4500 4500 4500
Wire Notes Line
	4500 4500 4500 3000
Wire Notes Line
	4500 3000 7075 3000
$Comp
L custom_parts_library:TCR2EF33 U?
U 1 1 61533A30
P 5825 4000
AR Path="/6114D32E/61533A30" Ref="U?"  Part="1" 
AR Path="/6247A5CE/61533A30" Ref="U?"  Part="1" 
AR Path="/612340DE/61533A30" Ref="U?"  Part="1" 
AR Path="/62F6B81F/61533A30" Ref="U?"  Part="1" 
AR Path="/613390DE/61533A30" Ref="U9"  Part="1" 
AR Path="/6D0600A2/61533A30" Ref="U9"  Part="1" 
F 0 "U9" H 5725 4525 50  0000 C CNN
F 1 "TCR2EF33" H 5725 4434 50  0000 C CNN
F 2 "custom_footprint_library:TCR2EF33_SOT25" H 5025 4700 50  0001 C CNN
F 3 "" H 5025 4700 50  0001 C CNN
	1    5825 4000
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 62F25DCF
P 1500 5550
F 0 "H1" H 1600 5599 50  0000 L CNN
F 1 "MountingHole_Pad" H 1600 5508 50  0000 L CNN
F 2 "mounting_hole:MountingHole_3.2mm_M3_ISO7380_Pad" H 1500 5550 50  0001 C CNN
F 3 "~" H 1500 5550 50  0001 C CNN
	1    1500 5550
	1    0    0    -1  
$EndComp
NoConn ~ 1500 5650
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 62F281A1
P 1500 6050
F 0 "H2" H 1600 6099 50  0000 L CNN
F 1 "MountingHole_Pad" H 1600 6008 50  0000 L CNN
F 2 "mounting_hole:MountingHole_3.2mm_M3_ISO7380_Pad" H 1500 6050 50  0001 C CNN
F 3 "~" H 1500 6050 50  0001 C CNN
	1    1500 6050
	1    0    0    -1  
$EndComp
NoConn ~ 1500 6150
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 62F28C3F
P 1500 6550
F 0 "H3" H 1600 6599 50  0000 L CNN
F 1 "MountingHole_Pad" H 1600 6508 50  0000 L CNN
F 2 "mounting_hole:MountingHole_3.2mm_M3_ISO7380_Pad" H 1500 6550 50  0001 C CNN
F 3 "~" H 1500 6550 50  0001 C CNN
	1    1500 6550
	1    0    0    -1  
$EndComp
NoConn ~ 1500 6650
$Comp
L Mechanical:MountingHole_Pad H4
U 1 1 62F2B314
P 2500 5550
F 0 "H4" H 2600 5599 50  0000 L CNN
F 1 "MountingHole_Pad" H 2600 5508 50  0000 L CNN
F 2 "mounting_hole:MountingHole_3.2mm_M3_ISO7380_Pad" H 2500 5550 50  0001 C CNN
F 3 "~" H 2500 5550 50  0001 C CNN
	1    2500 5550
	1    0    0    -1  
$EndComp
NoConn ~ 2500 5650
$Comp
L Mechanical:MountingHole_Pad H5
U 1 1 62F2B31B
P 2500 6050
F 0 "H5" H 2600 6099 50  0000 L CNN
F 1 "MountingHole_Pad" H 2600 6008 50  0000 L CNN
F 2 "mounting_hole:MountingHole_3.2mm_M3_ISO7380_Pad" H 2500 6050 50  0001 C CNN
F 3 "~" H 2500 6050 50  0001 C CNN
	1    2500 6050
	1    0    0    -1  
$EndComp
NoConn ~ 2500 6150
$Comp
L Mechanical:MountingHole_Pad H6
U 1 1 62F2B322
P 2500 6550
F 0 "H6" H 2600 6599 50  0000 L CNN
F 1 "MountingHole_Pad" H 2600 6508 50  0000 L CNN
F 2 "mounting_hole:MountingHole_3.2mm_M3_ISO7380_Pad" H 2500 6550 50  0001 C CNN
F 3 "~" H 2500 6550 50  0001 C CNN
	1    2500 6550
	1    0    0    -1  
$EndComp
NoConn ~ 2500 6650
$Comp
L Mechanical:MountingHole_Pad H7
U 1 1 62F2BF2F
P 3500 5550
F 0 "H7" H 3600 5599 50  0000 L CNN
F 1 "MountingHole_Pad" H 3600 5508 50  0000 L CNN
F 2 "mounting_hole:MountingHole_3.2mm_M3_ISO7380_Pad" H 3500 5550 50  0001 C CNN
F 3 "~" H 3500 5550 50  0001 C CNN
	1    3500 5550
	1    0    0    -1  
$EndComp
NoConn ~ 3500 5650
$Comp
L Mechanical:MountingHole_Pad H8
U 1 1 62F2BF36
P 3500 6050
F 0 "H8" H 3600 6099 50  0000 L CNN
F 1 "MountingHole_Pad" H 3600 6008 50  0000 L CNN
F 2 "mounting_hole:MountingHole_3.2mm_M3_ISO7380_Pad" H 3500 6050 50  0001 C CNN
F 3 "~" H 3500 6050 50  0001 C CNN
	1    3500 6050
	1    0    0    -1  
$EndComp
NoConn ~ 3500 6150
$Comp
L Mechanical:MountingHole_Pad H9
U 1 1 62F2BF3D
P 3500 6550
F 0 "H9" H 3600 6599 50  0000 L CNN
F 1 "MountingHole_Pad" H 3600 6508 50  0000 L CNN
F 2 "mounting_hole:MountingHole_3.2mm_M3_ISO7380_Pad" H 3500 6550 50  0001 C CNN
F 3 "~" H 3500 6550 50  0001 C CNN
	1    3500 6550
	1    0    0    -1  
$EndComp
NoConn ~ 3500 6650
$Comp
L Mechanical:MountingHole_Pad H?
U 1 1 629C12E0
P 4500 5550
F 0 "H?" H 4600 5599 50  0000 L CNN
F 1 "MountingHole_Pad" H 4600 5508 50  0000 L CNN
F 2 "mounting_hole:MountingHole_3.2mm_M3_ISO7380_Pad" H 4500 5550 50  0001 C CNN
F 3 "~" H 4500 5550 50  0001 C CNN
	1    4500 5550
	1    0    0    -1  
$EndComp
NoConn ~ 4500 5650
$EndSCHEMATC
