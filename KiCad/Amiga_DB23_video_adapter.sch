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
L Amiga_DB23_video_adapter:DB23_Female-Connector J1
U 1 1 5DD24994
P 5500 2450
F 0 "J1" V 5817 2338 50  0000 C CNN
F 1 "DB23_Female" V 5726 2338 50  0000 C CNN
F 2 "Connector_Dsub:DSUB-23_Female_EdgeMount_P2.77mm" H 5500 2250 50  0001 C CNN
F 3 " ~" H 5500 2250 50  0001 C CNN
	1    5500 2450
	0    -1   -1   0   
$EndComp
Text GLabel 4900 2750 3    50   Output ~ 0
AMIGA_R
Text GLabel 5100 2750 3    50   Output ~ 0
AMIGA_G
Text GLabel 5300 2750 3    50   Output ~ 0
AMIGA_B
Text GLabel 7500 3100 3    50   Input ~ 0
AMIGA_R
Text GLabel 5600 3150 3    50   Input ~ 0
GND
Text GLabel 6300 3550 3    50   Output ~ 0
S
Text GLabel 7700 2700 1    50   Input ~ 0
AMIGA_G
Text GLabel 7800 2700 1    50   Input ~ 0
AMIGA_B
Text GLabel 4850 4250 1    50   Input ~ 0
S
Text GLabel 5050 4850 3    50   Input ~ 0
5V
Text GLabel 4950 4850 3    50   Input ~ 0
12V
NoConn ~ 4800 2750
NoConn ~ 5500 2750
NoConn ~ 5700 2750
NoConn ~ 5900 2750
NoConn ~ 6100 2750
NoConn ~ 6200 2750
$Comp
L Device:R R9
U 1 1 5DD5FE14
P 6300 3400
F 0 "R9" H 6150 3400 50  0000 L CNN
F 1 "330" V 6300 3350 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6230 3400 50  0001 C CNN
F 3 "~" H 6300 3400 50  0001 C CNN
	1    6300 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5DD6AC71
P 6400 3400
F 0 "R3" H 6450 3400 50  0000 L CNN
F 1 "1k" V 6400 3350 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 6330 3400 50  0001 C CNN
F 3 "~" H 6400 3400 50  0001 C CNN
	1    6400 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5DD6CE62
P 6750 3350
F 0 "R2" H 6800 3350 50  0000 L CNN
F 1 "75" V 6750 3300 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 6680 3350 50  0001 C CNN
F 3 "~" H 6750 3350 50  0001 C CNN
	1    6750 3350
	1    0    0    -1  
$EndComp
Text GLabel 4500 2750 3    50   Input ~ 0
XCLK
Text GLabel 4850 6700 2    50   Output ~ 0
XCLK
$Comp
L Device:C_Small C1
U 1 1 606A3110
P 10600 2900
F 0 "C1" H 10500 2900 50  0000 R CNN
F 1 "0.1uF" H 10300 2800 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10600 2900 50  0001 C CNN
F 3 "~" H 10600 2900 50  0001 C CNN
	1    10600 2900
	-1   0    0    1   
$EndComp
$Comp
L Switch:SW_SPDT SW1
U 1 1 606AE47A
P 1150 4250
F 0 "SW1" V 1250 4550 50  0000 C CNN
F 1 "SW_SPDT" V 1150 4650 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 1150 4250 50  0001 C CNN
F 3 "~" H 1150 4250 50  0001 C CNN
	1    1150 4250
	0    1    1    0   
$EndComp
Text GLabel 4700 2750 3    50   Input ~ 0
XCLKEN_n
Text GLabel 3900 7050 3    50   Input ~ 0
VCC
Text GLabel 2150 6250 0    50   Input ~ 0
GND
$Comp
L Amiga_DB23_video_adapter:74HCT2G17 U1
U 1 1 60495234
P 6950 4500
F 0 "U1" H 6950 4900 50  0000 C CNN
F 1 "74HCT2G17" H 6950 4100 50  0000 C CNN
F 2 "Package_SO:TSOP-6_1.65x3.05mm_P0.95mm" H 7450 5450 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT2G17.pdf" H 7450 5450 50  0001 C CNN
	1    6950 4500
	1    0    0    -1  
$EndComp
Text GLabel 6500 4700 0    50   Input ~ 0
HSYNC
Text GLabel 6500 4500 0    50   Input ~ 0
GND
Text GLabel 6500 4300 0    50   Input ~ 0
VSYNC
Text GLabel 7400 4700 2    50   Output ~ 0
H
Text GLabel 7600 4500 2    50   Input ~ 0
VCC
Text GLabel 7400 4300 2    50   Output ~ 0
V
Text GLabel 6700 2750 3    50   Output ~ 0
VSYNC
Text GLabel 6500 2750 3    50   Output ~ 0
HSYNC
Text GLabel 6400 3550 3    50   Output ~ 0
12V
Wire Wire Line
	6600 2750 6600 3100
Wire Wire Line
	6750 3100 6750 3200
Wire Wire Line
	6600 3100 6750 3100
Wire Wire Line
	6400 2750 6400 3250
Wire Wire Line
	6300 2750 6300 3250
Text GLabel 6750 3500 3    50   Output ~ 0
5V
Text GLabel 6750 3150 2    50   Input ~ 0
VCC
Text GLabel 4950 4250 1    50   Input ~ 0
H
Text GLabel 5050 4250 1    50   Input ~ 0
V
Text GLabel 4550 4850 3    50   Input ~ 0
GND
$Comp
L Device:C_Small C3
U 1 1 604C0786
P 7600 4400
F 0 "C3" H 7500 4400 50  0000 R CNN
F 1 "0.1uF" H 7700 4400 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 7600 4400 50  0001 C CNN
F 3 "~" H 7600 4400 50  0001 C CNN
	1    7600 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 4500 7400 4500
Text GLabel 7600 4300 1    50   Input ~ 0
GND
Text GLabel 1150 3450 1    50   Input ~ 0
VCC
Text GLabel 1250 4450 3    50   Input ~ 0
GND
$Comp
L Device:C_Small C2
U 1 1 604D1DD2
P 1950 4000
F 0 "C2" H 2050 4150 50  0000 R CNN
F 1 "0.1uF" H 2042 3955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1950 4000 50  0001 C CNN
F 3 "~" H 1950 4000 50  0001 C CNN
	1    1950 4000
	1    0    0    -1  
$EndComp
Text GLabel 1950 4100 3    50   Input ~ 0
GND
$Comp
L Amiga_DB23_video_adapter:74HCT2G14 U2
U 1 1 604D78BF
P 2750 3700
F 0 "U2" H 2750 4100 50  0000 C CNN
F 1 "74HCT2G14" H 2750 3300 50  0000 C CNN
F 2 "Package_SO:TSOP-6_1.65x3.05mm_P0.95mm" H 3250 4650 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT2G14.pdf" H 3250 4650 50  0001 C CNN
	1    2750 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 3900 2300 3900
Connection ~ 1950 3900
Text GLabel 3200 3900 2    50   Output ~ 0
XCLKEN_n
Text GLabel 2300 3700 0    50   Input ~ 0
GND
Text GLabel 3850 3700 2    50   Input ~ 0
VCC
$Comp
L Device:C_Small C4
U 1 1 604F7F40
P 3850 3600
F 0 "C4" H 3750 3600 50  0000 R CNN
F 1 "0.1uF" H 3950 3600 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 3850 3600 50  0001 C CNN
F 3 "~" H 3850 3600 50  0001 C CNN
	1    3850 3600
	1    0    0    -1  
$EndComp
Text GLabel 3850 3500 2    50   Input ~ 0
GND
$Comp
L Device:R R12
U 1 1 6053876C
P 1150 3600
F 0 "R12" H 1200 3600 50  0000 L CNN
F 1 "10k" V 1150 3500 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1080 3600 50  0001 C CNN
F 3 "~" H 1150 3600 50  0001 C CNN
	1    1150 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 6053FB6E
P 1500 3900
F 0 "R5" V 1600 3850 50  0000 L CNN
F 1 "10k" V 1500 3850 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1430 3900 50  0001 C CNN
F 3 "~" H 1500 3900 50  0001 C CNN
	1    1500 3900
	0    1    1    0   
$EndComp
Wire Wire Line
	1150 3750 1150 3900
Wire Wire Line
	1350 3900 1150 3900
Connection ~ 1150 3900
Wire Wire Line
	1650 3900 1950 3900
NoConn ~ 4600 2750
Wire Wire Line
	1150 3900 1150 4050
Text GLabel 2300 3500 0    50   Input ~ 0
XCLKEN_n
Text GLabel 2250 2750 0    50   Input ~ 0
VCC
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 60573639
P 2250 2750
F 0 "#FLG0101" H 2250 2825 50  0001 C CNN
F 1 "PWR_FLAG" H 2250 2923 50  0000 C CNN
F 2 "" H 2250 2750 50  0001 C CNN
F 3 "~" H 2250 2750 50  0001 C CNN
	1    2250 2750
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR0101
U 1 1 60574A8A
P 2250 2750
F 0 "#PWR0101" H 2250 2600 50  0001 C CNN
F 1 "+5V" H 2265 2923 50  0000 C CNN
F 2 "" H 2250 2750 50  0001 C CNN
F 3 "" H 2250 2750 50  0001 C CNN
	1    2250 2750
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 605766E0
P 2600 2750
F 0 "#FLG0102" H 2600 2825 50  0001 C CNN
F 1 "PWR_FLAG" H 2600 2923 50  0000 C CNN
F 2 "" H 2600 2750 50  0001 C CNN
F 3 "~" H 2600 2750 50  0001 C CNN
	1    2600 2750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 60576DC0
P 2600 2750
F 0 "#PWR0102" H 2600 2500 50  0001 C CNN
F 1 "GND" H 2605 2577 50  0000 C CNN
F 2 "" H 2600 2750 50  0001 C CNN
F 3 "" H 2600 2750 50  0001 C CNN
	1    2600 2750
	1    0    0    -1  
$EndComp
Text GLabel 2600 2750 0    50   Input ~ 0
GND
NoConn ~ 1050 4450
Connection ~ 5600 3150
Text Label 6300 3200 2    50   ~ 0
CSYNC
Text Label 6400 3200 0    50   ~ 0
+12V
Text GLabel 2800 6250 2    50   Input ~ 0
GND
$Comp
L Connector_Generic:Conn_01x06 J2
U 1 1 6A1971C6
P 4850 4450
F 0 "J2" V 4750 4750 50  0000 L CNN
F 1 "Conn_01x06" V 4850 4750 50  0000 L CNN
F 2 "Connector_PinHeader_2.00mm:PinHeader_1x06_P2.00mm_Vertical" H 4850 4450 50  0001 C CNN
F 3 "~" H 4850 4450 50  0001 C CNN
	1    4850 4450
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_01x06 J3
U 1 1 6A1ABD54
P 4750 4650
F 0 "J3" V 4650 4150 50  0000 L CNN
F 1 "Conn_01x06" V 4750 3800 50  0000 L CNN
F 2 "Connector_PinHeader_2.00mm:PinHeader_1x06_P2.00mm_Vertical" H 4750 4650 50  0001 C CNN
F 3 "~" H 4750 4650 50  0001 C CNN
	1    4750 4650
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Pack04 RN1
U 1 1 6A1C6A8C
P 7700 2900
F 0 "RN1" H 7888 2946 50  0000 L CNN
F 1 "R_Pack04" H 7888 2855 50  0000 L CNN
F 2 "Amiga_DB23_video_adapter:RESCAF80P320X160X60-8N" V 7975 2900 50  0001 C CNN
F 3 "~" H 7700 2900 50  0001 C CNN
	1    7700 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 4000 4550 4250
Wire Wire Line
	4650 4000 4650 4250
Wire Wire Line
	4750 4000 4750 4250
Text GLabel 7500 2700 1    50   Input ~ 0
GND
Text GLabel 7700 3100 3    50   Input ~ 0
GND
Text GLabel 7800 3100 3    50   Input ~ 0
GND
Text GLabel 7600 2700 1    50   Input ~ 0
GND
Text GLabel 7600 3100 3    50   Input ~ 0
GND
$Comp
L Amiga_DB23_video_adapter:THS7374IPWR U3
U 1 1 6A1E8E09
P 9450 2900
F 0 "U3" H 9450 3465 50  0000 C CNN
F 1 "THS7374IPWR" H 9450 3374 50  0000 C CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 10000 3300 50  0001 L CNN
F 3 "" H 10000 3200 50  0001 L CNN
	1    9450 2900
	1    0    0    -1  
$EndComp
Text GLabel 8750 2700 0    50   Input ~ 0
AMIGA_R
Text GLabel 8750 2800 0    50   Input ~ 0
AMIGA_G
Text GLabel 8750 2600 0    50   Input ~ 0
AMIGA_B
Text GLabel 8750 3000 0    50   Input ~ 0
GND
Wire Wire Line
	8750 2900 8750 3000
Connection ~ 8750 3000
Wire Wire Line
	8750 3000 8750 3100
Text GLabel 10150 3100 2    50   Input ~ 0
GND
NoConn ~ 8750 3200
NoConn ~ 10150 3200
Text GLabel 10700 3000 2    50   Input ~ 0
VCC
Wire Wire Line
	6000 2750 6000 3150
Wire Wire Line
	5600 3150 5800 3150
Wire Wire Line
	5800 2750 5800 3150
Connection ~ 5800 3150
Wire Wire Line
	5800 3150 6000 3150
Wire Wire Line
	5600 2750 5600 3150
Wire Wire Line
	5200 2750 5200 3150
Wire Wire Line
	5200 3150 5400 3150
Wire Wire Line
	5400 2750 5400 3150
Connection ~ 5400 3150
Wire Wire Line
	5400 3150 5600 3150
Text GLabel 10150 2700 2    50   Output ~ 0
RED
Text GLabel 10150 2800 2    50   Output ~ 0
GREEN
Text GLabel 10150 2600 2    50   Output ~ 0
BLUE
NoConn ~ 10150 2900
Text GLabel 10600 2800 1    50   Input ~ 0
GND
Wire Wire Line
	10150 3000 10600 3000
Connection ~ 10600 3000
Wire Wire Line
	10600 3000 10700 3000
$Comp
L Device:R_Small R6
U 1 1 6A2420BB
P 4550 3900
F 0 "R6" H 4400 3900 50  0000 L CNN
F 1 "75" V 4550 3850 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 4550 3900 50  0001 C CNN
F 3 "~" H 4550 3900 50  0001 C CNN
	1    4550 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R7
U 1 1 6A243465
P 4650 3900
F 0 "R7" H 4600 4050 50  0000 L CNN
F 1 "75" V 4650 3850 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 4650 3900 50  0001 C CNN
F 3 "~" H 4650 3900 50  0001 C CNN
	1    4650 3900
	1    0    0    -1  
$EndComp
Text Label 4750 4100 0    50   ~ 0
B
Text Label 4650 4100 0    50   ~ 0
G
Text Label 4550 4100 0    50   ~ 0
R
$Comp
L Device:R_Small R8
U 1 1 6A2456B8
P 4750 3900
F 0 "R8" H 4800 3900 50  0000 L CNN
F 1 "75" V 4750 3850 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 4750 3900 50  0001 C CNN
F 3 "~" H 4750 3900 50  0001 C CNN
	1    4750 3900
	1    0    0    -1  
$EndComp
Text GLabel 4550 3650 1    50   Input ~ 0
RED
Text GLabel 4650 3650 1    50   Input ~ 0
GREEN
Text GLabel 4750 3650 1    50   Input ~ 0
BLUE
Wire Wire Line
	4550 3650 4550 3800
Wire Wire Line
	4650 3650 4650 3800
Wire Wire Line
	4750 3650 4750 3800
$Comp
L Device:R_Small R1
U 1 1 6A27D6DD
P 5000 3300
F 0 "R1" H 5059 3346 50  0000 L CNN
F 1 "100" H 5059 3255 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" H 5000 3300 50  0001 C CNN
F 3 "~" H 5000 3300 50  0001 C CNN
	1    5000 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 2750 5000 3200
Wire Wire Line
	5000 3400 5000 3500
Text GLabel 5000 3500 3    50   Input ~ 0
GND
$Comp
L Device:Crystal_GND24 Y1
U 1 1 6A2B4344
P 2500 6250
F 0 "Y1" V 2500 6200 50  0000 L CNN
F 1 "CL=16pF" V 2650 5750 50  0000 L CNN
F 2 "Crystal:Crystal_SMD_SeikoEpson_FA238-4Pin_3.2x2.5mm" H 2500 6250 50  0001 C CNN
F 3 "~" H 2500 6250 50  0001 C CNN
	1    2500 6250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2700 6250 2800 6250
Wire Wire Line
	2300 6250 2200 6250
$Comp
L Device:C_Small C7
U 1 1 6A2C1303
P 2300 5950
F 0 "C7" V 2150 5950 50  0000 C CNN
F 1 "32 pF" V 2050 6000 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 2300 5950 50  0001 C CNN
F 3 "~" H 2300 5950 50  0001 C CNN
	1    2300 5950
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C6
U 1 1 6A2C2480
P 2300 6550
F 0 "C6" V 2450 6550 50  0000 C CNN
F 1 "32 pF" V 2550 6600 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 2300 6550 50  0001 C CNN
F 3 "~" H 2300 6550 50  0001 C CNN
	1    2300 6550
	0    1    1    0   
$EndComp
Wire Wire Line
	2200 5950 2200 6250
Wire Wire Line
	2200 6250 2150 6250
Connection ~ 2200 6250
Wire Wire Line
	2500 6100 2500 5950
Wire Wire Line
	2500 5950 2400 5950
Wire Wire Line
	2200 6250 2200 6550
Wire Wire Line
	2400 6550 2500 6550
Wire Wire Line
	2500 6550 2500 6400
Text GLabel 4650 4850 3    50   Input ~ 0
GND
Text GLabel 4750 4850 3    50   Input ~ 0
GND
Text GLabel 4850 4850 3    50   Input ~ 0
GND
$Comp
L Device:R_Small R10
U 1 1 6A317F34
P 2800 6550
F 0 "R10" V 2700 6500 50  0000 L CNN
F 1 "1k" V 2800 6500 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 2800 6550 50  0001 C CNN
F 3 "~" H 2800 6550 50  0001 C CNN
	1    2800 6550
	0    1    1    0   
$EndComp
Wire Wire Line
	2500 6550 2700 6550
Connection ~ 2500 6550
$Comp
L Device:R_Small R11
U 1 1 6A31A283
P 3150 6250
F 0 "R11" H 2950 6200 50  0000 L CNN
F 1 "2.2M" H 2900 6300 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 3150 6250 50  0001 C CNN
F 3 "~" H 3150 6250 50  0001 C CNN
	1    3150 6250
	-1   0    0    1   
$EndComp
Wire Wire Line
	2900 6550 3150 6550
Wire Wire Line
	3150 6550 3150 6350
Wire Wire Line
	3150 6150 3150 5950
Wire Wire Line
	3150 5950 2500 5950
Connection ~ 2500 5950
$Comp
L Amiga_DB23_video_adapter:74LVC1GX04 U4
U 1 1 6A334FCA
P 3900 6250
F 0 "U4" V 3854 6628 50  0000 L CNN
F 1 "74LVC1GX04" V 3945 6628 50  0000 L CNN
F 2 "Package_SO:TSOP-6_1.65x3.05mm_P0.95mm" H 4400 7200 50  0001 C CNN
F 3 "" H 4400 7200 50  0001 C CNN
	1    3900 6250
	0    1    1    0   
$EndComp
Wire Wire Line
	3700 5800 3150 5800
Wire Wire Line
	3150 5800 3150 5950
Connection ~ 3150 5950
Wire Wire Line
	3700 6700 3150 6700
Wire Wire Line
	3150 6700 3150 6550
Connection ~ 3150 6550
Text GLabel 3900 5800 1    50   Input ~ 0
GND
$Comp
L Device:R_Small R4
U 1 1 6A39DE05
P 4500 6700
F 0 "R4" V 4600 6650 50  0000 L CNN
F 1 "150" V 4400 6650 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" H 4500 6700 50  0001 C CNN
F 3 "~" H 4500 6700 50  0001 C CNN
	1    4500 6700
	0    1    1    0   
$EndComp
Wire Wire Line
	4100 6700 4400 6700
Wire Wire Line
	4600 6700 4850 6700
$Comp
L Device:C_Small C5
U 1 1 6A3BE810
P 3800 6900
F 0 "C5" V 3700 6850 50  0000 R CNN
F 1 "0.1uF" V 3900 6750 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 3800 6900 50  0001 C CNN
F 3 "~" H 3800 6900 50  0001 C CNN
	1    3800 6900
	0    1    1    0   
$EndComp
Text GLabel 3600 6900 0    50   Input ~ 0
GND
Wire Wire Line
	3600 6900 3700 6900
Wire Wire Line
	3900 6700 3900 6900
Connection ~ 3900 6900
Wire Wire Line
	3900 6900 3900 7050
$Comp
L Connector_Generic:Conn_01x02 J5
U 1 1 6A3EAFCC
P 4150 4650
F 0 "J5" V 4150 4800 50  0000 R CNN
F 1 "Conn_01x02" V 4250 4900 50  0000 R CNN
F 2 "Connector_PinHeader_2.00mm:PinHeader_1x02_P2.00mm_Vertical" H 4150 4650 50  0001 C CNN
F 3 "~" H 4150 4650 50  0001 C CNN
	1    4150 4650
	0    -1   -1   0   
$EndComp
Text GLabel 4150 4850 3    50   Input ~ 0
GND
Text GLabel 4250 4850 3    50   Input ~ 0
GND
$Comp
L Connector_Generic:Conn_01x02 J6
U 1 1 6A40398C
P 3150 4650
F 0 "J6" V 3150 4800 50  0000 R CNN
F 1 "Conn_01x02" V 3250 4900 50  0000 R CNN
F 2 "Connector_PinHeader_2.00mm:PinHeader_1x02_P2.00mm_Vertical" H 3150 4650 50  0001 C CNN
F 3 "~" H 3150 4650 50  0001 C CNN
	1    3150 4650
	0    -1   -1   0   
$EndComp
Text GLabel 3250 4850 3    50   Input ~ 0
XCLKEN_n
$Comp
L Connector_Generic:Conn_01x02 J4
U 1 1 6A423A43
P 3650 4650
F 0 "J4" V 3650 4800 50  0000 R CNN
F 1 "Conn_01x02" V 3750 4900 50  0000 R CNN
F 2 "Connector_PinHeader_2.00mm:PinHeader_1x02_P2.00mm_Vertical" H 3650 4650 50  0001 C CNN
F 3 "~" H 3650 4650 50  0001 C CNN
	1    3650 4650
	0    -1   -1   0   
$EndComp
Text GLabel 3650 4850 3    50   Input ~ 0
GND
Text GLabel 3750 4850 3    50   Input ~ 0
GND
Wire Wire Line
	3200 3700 3850 3700
Text GLabel 3200 3500 2    50   Output ~ 0
XCLKEN
Text GLabel 3150 4850 3    50   Input ~ 0
XCLKEN
$EndSCHEMATC
