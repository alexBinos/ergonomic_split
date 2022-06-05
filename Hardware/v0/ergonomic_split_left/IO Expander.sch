EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 7
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
L custom_parts_library:PCAL9555AHF U2
U 1 1 6E82DD01
P 5650 3625
F 0 "U2" H 5900 4650 50  0000 C CNN
F 1 "PCAL9555AHF" H 5925 4575 50  0000 C CNN
F 2 "custom_footprint_library:QFN-24_EP_5x5_Pitch0.5mm" H 4550 4525 50  0001 C CNN
F 3 "" H 4550 4525 50  0001 C CNN
	1    5650 3625
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6E9E1FFF
P 5700 4700
AR Path="/6114D32E/6E9E1FFF" Ref="#PWR?"  Part="1" 
AR Path="/6247A5CE/6E9E1FFF" Ref="#PWR?"  Part="1" 
AR Path="/612340DE/6E9E1FFF" Ref="#PWR?"  Part="1" 
AR Path="/62F6B81F/6E9E1FFF" Ref="#PWR?"  Part="1" 
AR Path="/629982B4/6E9E1FFF" Ref="#PWR?"  Part="1" 
AR Path="/62999965/6E9E1FFF" Ref="#PWR?"  Part="1" 
AR Path="/629997F8/6E9E1FFF" Ref="#PWR0199"  Part="1" 
F 0 "#PWR0199" H 5700 4450 50  0001 C CNN
F 1 "GND" H 5705 4527 50  0000 C CNN
F 2 "" H 5700 4700 50  0001 C CNN
F 3 "" H 5700 4700 50  0001 C CNN
	1    5700 4700
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 6E9E2005
P 5650 2575
AR Path="/6E9E2005" Ref="#PWR?"  Part="1" 
AR Path="/60D44BDB/6E9E2005" Ref="#PWR?"  Part="1" 
AR Path="/62022D96/6E9E2005" Ref="#PWR?"  Part="1" 
AR Path="/612342D1/6E9E2005" Ref="#PWR?"  Part="1" 
AR Path="/63013830/6E9E2005" Ref="#PWR?"  Part="1" 
AR Path="/62999575/6E9E2005" Ref="#PWR?"  Part="1" 
AR Path="/62999965/6E9E2005" Ref="#PWR?"  Part="1" 
AR Path="/629997F8/6E9E2005" Ref="#PWR0200"  Part="1" 
F 0 "#PWR0200" H 5650 2425 50  0001 C CNN
F 1 "+3.3V" H 5665 2748 50  0000 C CNN
F 2 "" H 5650 2575 50  0001 C CNN
F 3 "" H 5650 2575 50  0001 C CNN
	1    5650 2575
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 4625 5600 4675
Wire Wire Line
	5600 4675 5700 4675
Wire Wire Line
	5700 4675 5700 4700
Wire Wire Line
	5700 4625 5700 4675
Connection ~ 5700 4675
Wire Wire Line
	5650 2575 5650 2625
Text HLabel 6650 2825 2    50   Input ~ 0
ROW[0]
Text HLabel 6650 2925 2    50   Input ~ 0
ROW[1]
Text HLabel 6650 3025 2    50   Input ~ 0
ROW[2]
Text HLabel 6650 3125 2    50   Input ~ 0
ROW[3]
Text HLabel 6650 3225 2    50   Input ~ 0
ROW[4]
Text HLabel 6650 3325 2    50   Input ~ 0
ROW[5]
Wire Wire Line
	6650 2825 6150 2825
Wire Wire Line
	6650 2925 6150 2925
Wire Wire Line
	6650 3025 6150 3025
Wire Wire Line
	6650 3125 6150 3125
Wire Wire Line
	6650 3225 6150 3225
Wire Wire Line
	6650 3325 6150 3325
Text HLabel 6650 3825 2    50   Output ~ 0
COL[1]
Text HLabel 6650 3925 2    50   Output ~ 0
COL[2]
Text HLabel 6650 4025 2    50   Output ~ 0
COL[3]
Text HLabel 6650 4125 2    50   Output ~ 0
COL[4]
Text HLabel 6650 4225 2    50   Output ~ 0
COL[5]
Wire Wire Line
	6650 3725 6150 3725
Wire Wire Line
	6650 3825 6150 3825
Wire Wire Line
	6650 3925 6150 3925
Wire Wire Line
	6650 4025 6150 4025
Wire Wire Line
	6650 4125 6150 4125
Wire Wire Line
	6650 4225 6150 4225
Wire Wire Line
	6650 4325 6150 4325
Text HLabel 6650 4325 2    50   Output ~ 0
COL[6]
Text HLabel 6650 3725 2    50   Output ~ 0
COL[0]
NoConn ~ 5150 3125
Text HLabel 4650 2825 0    50   BiDi ~ 0
SDA
Text HLabel 4650 2925 0    50   BiDi ~ 0
SCL
Wire Wire Line
	4650 2825 5150 2825
Wire Wire Line
	4650 2925 5150 2925
$Comp
L Device:R R?
U 1 1 6EA76BBA
P 4925 4325
AR Path="/6EA76BBA" Ref="R?"  Part="1" 
AR Path="/60D44BDB/6EA76BBA" Ref="R?"  Part="1" 
AR Path="/62022D96/6EA76BBA" Ref="R?"  Part="1" 
AR Path="/612342D1/6EA76BBA" Ref="R?"  Part="1" 
AR Path="/63013830/6EA76BBA" Ref="R?"  Part="1" 
AR Path="/62999575/6EA76BBA" Ref="R?"  Part="1" 
AR Path="/62999965/6EA76BBA" Ref="R?"  Part="1" 
AR Path="/629997F8/6EA76BBA" Ref="R12"  Part="1" 
F 0 "R12" V 4925 3875 50  0000 L CNN
F 1 "10K" V 4925 4275 50  0000 L CNN
F 2 "resistor_smd:R_0603_1608Metric" V 4855 4325 50  0001 C CNN
F 3 "~" H 4925 4325 50  0001 C CNN
	1    4925 4325
	0    1    1    0   
$EndComp
Text Notes 4550 2625 0    50   ~ 0
I2C Address: 0x22
$Comp
L Device:R R?
U 1 1 6EA77A2E
P 4925 4225
AR Path="/6EA77A2E" Ref="R?"  Part="1" 
AR Path="/60D44BDB/6EA77A2E" Ref="R?"  Part="1" 
AR Path="/62022D96/6EA77A2E" Ref="R?"  Part="1" 
AR Path="/612342D1/6EA77A2E" Ref="R?"  Part="1" 
AR Path="/63013830/6EA77A2E" Ref="R?"  Part="1" 
AR Path="/62999575/6EA77A2E" Ref="R?"  Part="1" 
AR Path="/62999965/6EA77A2E" Ref="R?"  Part="1" 
AR Path="/629997F8/6EA77A2E" Ref="R11"  Part="1" 
F 0 "R11" V 4925 3775 50  0000 L CNN
F 1 "10K" V 4925 4175 50  0000 L CNN
F 2 "resistor_smd:R_0603_1608Metric" V 4855 4225 50  0001 C CNN
F 3 "~" H 4925 4225 50  0001 C CNN
	1    4925 4225
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 6EA77EC1
P 4925 4425
AR Path="/6EA77EC1" Ref="R?"  Part="1" 
AR Path="/60D44BDB/6EA77EC1" Ref="R?"  Part="1" 
AR Path="/62022D96/6EA77EC1" Ref="R?"  Part="1" 
AR Path="/612342D1/6EA77EC1" Ref="R?"  Part="1" 
AR Path="/63013830/6EA77EC1" Ref="R?"  Part="1" 
AR Path="/62999575/6EA77EC1" Ref="R?"  Part="1" 
AR Path="/62999965/6EA77EC1" Ref="R?"  Part="1" 
AR Path="/629997F8/6EA77EC1" Ref="R13"  Part="1" 
F 0 "R13" V 4925 3975 50  0000 L CNN
F 1 "10K" V 4925 4375 50  0000 L CNN
F 2 "resistor_smd:R_0603_1608Metric" V 4855 4425 50  0001 C CNN
F 3 "~" H 4925 4425 50  0001 C CNN
	1    4925 4425
	0    1    1    0   
$EndComp
Wire Wire Line
	5075 4225 5150 4225
Wire Wire Line
	5075 4325 5150 4325
Wire Wire Line
	5075 4425 5150 4425
$Comp
L power:GND #PWR?
U 1 1 6EA799DB
P 4675 4575
AR Path="/6114D32E/6EA799DB" Ref="#PWR?"  Part="1" 
AR Path="/6247A5CE/6EA799DB" Ref="#PWR?"  Part="1" 
AR Path="/612340DE/6EA799DB" Ref="#PWR?"  Part="1" 
AR Path="/62F6B81F/6EA799DB" Ref="#PWR?"  Part="1" 
AR Path="/629982B4/6EA799DB" Ref="#PWR?"  Part="1" 
AR Path="/62999965/6EA799DB" Ref="#PWR?"  Part="1" 
AR Path="/629997F8/6EA799DB" Ref="#PWR0201"  Part="1" 
F 0 "#PWR0201" H 4675 4325 50  0001 C CNN
F 1 "GND" H 4680 4402 50  0000 C CNN
F 2 "" H 4675 4575 50  0001 C CNN
F 3 "" H 4675 4575 50  0001 C CNN
	1    4675 4575
	1    0    0    -1  
$EndComp
Wire Wire Line
	4775 4225 4675 4225
Wire Wire Line
	4675 4225 4675 4425
Wire Wire Line
	4775 4425 4675 4425
Connection ~ 4675 4425
Wire Wire Line
	4675 4425 4675 4575
$Comp
L power:+3.3V #PWR?
U 1 1 6EA7AC5A
P 4625 4175
AR Path="/6EA7AC5A" Ref="#PWR?"  Part="1" 
AR Path="/60D44BDB/6EA7AC5A" Ref="#PWR?"  Part="1" 
AR Path="/62022D96/6EA7AC5A" Ref="#PWR?"  Part="1" 
AR Path="/612342D1/6EA7AC5A" Ref="#PWR?"  Part="1" 
AR Path="/63013830/6EA7AC5A" Ref="#PWR?"  Part="1" 
AR Path="/62999575/6EA7AC5A" Ref="#PWR?"  Part="1" 
AR Path="/62999965/6EA7AC5A" Ref="#PWR?"  Part="1" 
AR Path="/629997F8/6EA7AC5A" Ref="#PWR0202"  Part="1" 
F 0 "#PWR0202" H 4625 4025 50  0001 C CNN
F 1 "+3.3V" H 4640 4348 50  0000 C CNN
F 2 "" H 4625 4175 50  0001 C CNN
F 3 "" H 4625 4175 50  0001 C CNN
	1    4625 4175
	1    0    0    -1  
$EndComp
Wire Wire Line
	4625 4175 4625 4325
Wire Wire Line
	4625 4325 4775 4325
Text HLabel 6650 3425 2    50   Input ~ 0
ROW[6]
Wire Wire Line
	6650 3425 6150 3425
Wire Wire Line
	3775 2825 3775 2775
Wire Wire Line
	3775 3125 3775 3175
$Comp
L power:GND #PWR?
U 1 1 62EDB2E6
P 3775 3175
AR Path="/62EDB2E6" Ref="#PWR?"  Part="1" 
AR Path="/60D44BDB/62EDB2E6" Ref="#PWR?"  Part="1" 
AR Path="/62022D96/62EDB2E6" Ref="#PWR?"  Part="1" 
AR Path="/612342D1/62EDB2E6" Ref="#PWR?"  Part="1" 
AR Path="/63013830/62EDB2E6" Ref="#PWR?"  Part="1" 
AR Path="/62999575/62EDB2E6" Ref="#PWR?"  Part="1" 
AR Path="/629997F8/62EDB2E6" Ref="#PWR017"  Part="1" 
F 0 "#PWR017" H 3775 2925 50  0001 C CNN
F 1 "GND" H 3780 3002 50  0000 C CNN
F 2 "" H 3775 3175 50  0001 C CNN
F 3 "" H 3775 3175 50  0001 C CNN
	1    3775 3175
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 62EDB2EC
P 3775 2975
AR Path="/62EDB2EC" Ref="C?"  Part="1" 
AR Path="/60D44BDB/62EDB2EC" Ref="C?"  Part="1" 
AR Path="/62022D96/62EDB2EC" Ref="C?"  Part="1" 
AR Path="/612342D1/62EDB2EC" Ref="C?"  Part="1" 
AR Path="/63013830/62EDB2EC" Ref="C?"  Part="1" 
AR Path="/62999575/62EDB2EC" Ref="C?"  Part="1" 
AR Path="/629997F8/62EDB2EC" Ref="C7"  Part="1" 
F 0 "C7" H 3775 3125 50  0000 L CNN
F 1 "100nF" H 3775 3050 50  0000 L CNN
F 2 "Capacitor_smd:C_0603_1608Metric" H 3813 2825 50  0001 C CNN
F 3 "~" H 3775 2975 50  0001 C CNN
	1    3775 2975
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 62EDB2F2
P 3775 2775
AR Path="/62EDB2F2" Ref="#PWR?"  Part="1" 
AR Path="/60D44BDB/62EDB2F2" Ref="#PWR?"  Part="1" 
AR Path="/62022D96/62EDB2F2" Ref="#PWR?"  Part="1" 
AR Path="/612342D1/62EDB2F2" Ref="#PWR?"  Part="1" 
AR Path="/63013830/62EDB2F2" Ref="#PWR?"  Part="1" 
AR Path="/62999575/62EDB2F2" Ref="#PWR?"  Part="1" 
AR Path="/629997F8/62EDB2F2" Ref="#PWR016"  Part="1" 
F 0 "#PWR016" H 3775 2625 50  0001 C CNN
F 1 "+3.3V" H 3790 2948 50  0000 C CNN
F 2 "" H 3775 2775 50  0001 C CNN
F 3 "" H 3775 2775 50  0001 C CNN
	1    3775 2775
	1    0    0    -1  
$EndComp
NoConn ~ 6150 3525
NoConn ~ 6150 4425
Text Notes 750  1000 0    315  ~ 0
IO Expander
Wire Notes Line
	3500 5000 7250 5000
Wire Notes Line
	3500 2250 3500 5000
Wire Notes Line
	7250 5000 7250 2250
Wire Notes Line
	3500 2250 7250 2250
$EndSCHEMATC
