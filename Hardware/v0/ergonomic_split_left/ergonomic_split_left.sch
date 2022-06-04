EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 7
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 5250 3450 925  1500
U 629997F8
F0 "IO Expander" 50
F1 "IO Expander.sch" 50
F2 "SDA" B L 5250 3500 50 
F3 "SCL" B L 5250 3575 50 
F4 "ROW[0]" I R 6175 3500 50 
F5 "ROW[1]" I R 6175 3600 50 
F6 "ROW[2]" I R 6175 3700 50 
F7 "ROW[3]" I R 6175 3800 50 
F8 "ROW[4]" I R 6175 3900 50 
F9 "ROW[5]" I R 6175 4000 50 
F10 "COL[0]" O R 6175 4300 50 
F11 "COL[1]" O R 6175 4400 50 
F12 "COL[2]" O R 6175 4500 50 
F13 "COL[3]" O R 6175 4600 50 
F14 "COL[4]" O R 6175 4700 50 
F15 "COL[5]" O R 6175 4800 50 
F16 "COL[6]" O R 6175 4900 50 
F17 "ROW[6]" I R 6175 4100 50 
$EndSheet
$Sheet
S 8500 2475 700  625 
U 62999A71
F0 "Right Interface" 50
F1 "Right Interface.sch" 50
F2 "ENCODER_A_R" O L 8500 2825 50 
F3 "ENCODER_B_R" O L 8500 2900 50 
F4 "SDA" B L 8500 2525 50 
F5 "SCL" B L 8500 2600 50 
F6 "RGB_DIN" B L 8500 3050 50 
$EndSheet
Wire Wire Line
	7925 3050 8500 3050
$Sheet
S 6750 3000 1175 1950
U 62999965
F0 "Switch Matrix" 50
F1 "Switch Matrix.sch" 50
F2 "RGB_DIN" I L 6750 3050 50 
F3 "ROW[6]" O L 6750 4100 50 
F4 "ENCODER_A_L" O L 6750 3275 50 
F5 "ENCODER_B_L" O L 6750 3350 50 
F6 "ROW[0]" O L 6750 3500 50 
F7 "ROW[1]" O L 6750 3600 50 
F8 "ROW[2]" O L 6750 3700 50 
F9 "ROW[3]" O L 6750 3800 50 
F10 "ROW[4]" O L 6750 3900 50 
F11 "ROW[5]" O L 6750 4000 50 
F12 "COL[0]" I L 6750 4300 50 
F13 "COL[1]" I L 6750 4400 50 
F14 "COL[2]" I L 6750 4500 50 
F15 "COL[3]" I L 6750 4600 50 
F16 "COL[4]" I L 6750 4700 50 
F17 "COL[5]" I L 6750 4800 50 
F18 "COL[6]" I L 6750 4900 50 
F19 "RGB_DOUT" I R 7925 3050 50 
$EndSheet
Wire Wire Line
	6175 3500 6750 3500
Wire Wire Line
	6175 3600 6750 3600
Wire Wire Line
	6175 3700 6750 3700
Wire Wire Line
	6175 3800 6750 3800
Wire Wire Line
	6175 3900 6750 3900
Wire Wire Line
	6175 4000 6750 4000
Wire Wire Line
	6175 4100 6750 4100
Wire Wire Line
	6175 4300 6750 4300
Wire Wire Line
	6175 4400 6750 4400
Wire Wire Line
	6175 4500 6750 4500
Wire Wire Line
	6175 4600 6750 4600
Wire Wire Line
	6175 4700 6750 4700
Wire Wire Line
	6175 4800 6750 4800
Wire Wire Line
	6175 4900 6750 4900
Wire Wire Line
	2750 2800 3500 2800
Wire Wire Line
	3500 2725 2750 2725
$Sheet
S 3500 2475 1075 925 
U 62999575
F0 "uController" 50
F1 "uController.sch" 50
F2 "RGB_DOUT" O R 4575 3050 50 
F3 "SDA" B R 4575 2525 50 
F4 "SCL" B R 4575 2600 50 
F5 "USB+" B L 3500 2725 50 
F6 "USB-" B L 3500 2800 50 
F7 "ENCODER_A_R" I R 4575 2825 50 
F8 "ENCODER_B_R" I R 4575 2900 50 
F9 "ENCODER_A_L" I R 4575 3275 50 
F10 "ENCODER_B_L" I R 4575 3350 50 
$EndSheet
$Sheet
S 1750 3500 1000 500 
U 6D0600A2
F0 "Power" 50
F1 "Power.sch" 50
$EndSheet
$Sheet
S 1750 2500 1000 500 
U 629982B4
F0 "USB_UPSTREAM" 50
F1 "USB_UPSTREAM.sch" 50
F2 "USB+" B R 2750 2725 50 
F3 "USB-" B R 2750 2800 50 
$EndSheet
Wire Wire Line
	4575 3275 6750 3275
Wire Wire Line
	4575 3350 6750 3350
Wire Wire Line
	4575 3050 6750 3050
Wire Wire Line
	4575 2825 8500 2825
Wire Wire Line
	4575 2900 8500 2900
Wire Wire Line
	4575 2525 5175 2525
Wire Wire Line
	4575 2600 5100 2600
Wire Wire Line
	5250 3500 5175 3500
Wire Wire Line
	5175 3500 5175 2525
Wire Wire Line
	5250 3575 5100 3575
Wire Wire Line
	5100 3575 5100 2600
Connection ~ 5100 2600
Wire Wire Line
	5100 2600 8500 2600
Connection ~ 5175 2525
Wire Wire Line
	5175 2525 8500 2525
$EndSCHEMATC
