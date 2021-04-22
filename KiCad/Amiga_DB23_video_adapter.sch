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
L Connector:DB23_Female J1
U 1 1 5DD24994
P 5500 2450
F 0 "J1" V 5817 2338 50  0000 C CNN
F 1 "DB23_Female" V 5726 2338 50  0000 C CNN
F 2 "Connector_Dsub:DSUB-23_Female_EdgeMount_P2.77mm" H 5500 2250 50  0001 C CNN
F 3 " ~" H 5500 2250 50  0001 C CNN
	1    5500 2450
	0    -1   -1   0   
$EndComp
Text GLabel 4900 2750 3    50   Input ~ 0
RED
Text GLabel 5100 2750 3    50   Input ~ 0
GREEN
Text GLabel 5300 2750 3    50   Input ~ 0
BLUE
Text GLabel 4650 4150 1    50   Input ~ 0
RED
Text GLabel 5600 3100 3    50   Input ~ 0
GND
Text GLabel 6300 3550 3    50   Input ~ 0
S
Text GLabel 4750 4150 1    50   Input ~ 0
GREEN
Text GLabel 4850 4150 1    50   Input ~ 0
BLUE
Text GLabel 4950 4150 1    50   Input ~ 0
S
Text GLabel 5050 4650 3    50   Input ~ 0
5V
Text GLabel 5050 4150 1    50   Input ~ 0
12V
Text GLabel 4650 4650 3    50   Input ~ 0
GND
NoConn ~ 4800 2750
NoConn ~ 5000 2750
NoConn ~ 5500 2750
NoConn ~ 5700 2750
NoConn ~ 5900 2750
NoConn ~ 6100 2750
NoConn ~ 6200 2750
$Comp
L Device:R R1
U 1 1 5DD5FE14
P 6300 3400
F 0 "R1" H 6150 3400 50  0000 L CNN
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
Text GLabel 3750 4600 2    50   Output ~ 0
XCLK
$Comp
L Device:C_Small C1
U 1 1 606A3110
P 3550 4300
F 0 "C1" V 3650 4450 50  0000 R CNN
F 1 "0.1uF" V 3650 4100 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3550 4300 50  0001 C CNN
F 3 "~" H 3550 4300 50  0001 C CNN
	1    3550 4300
	0    -1   -1   0   
$EndComp
Text GLabel 3650 4300 2    50   Input ~ 0
GND
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
XCLKEN
Text GLabel 3450 4300 0    50   Input ~ 0
VCC
Text GLabel 3450 4900 3    50   Input ~ 0
GND
Wire Wire Line
	5200 2750 5200 3100
Wire Wire Line
	5400 2750 5400 3100
Wire Wire Line
	5600 2750 5600 3100
Wire Wire Line
	5800 2750 5800 3100
Wire Wire Line
	6000 2750 6000 3100
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
Text GLabel 6700 2750 3    50   Input ~ 0
VSYNC
Text GLabel 6500 2750 3    50   Input ~ 0
HSYNC
Text GLabel 6400 3550 3    50   Input ~ 0
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
Text GLabel 6750 3500 3    50   Input ~ 0
5V
Text GLabel 6750 3150 2    50   Input ~ 0
VCC
$Comp
L Connector_Generic:Conn_02x06_Odd_Even J2
U 1 1 604970B4
P 4850 4450
F 0 "J2" V 4900 4050 50  0000 R CNN
F 1 "Conn_02x06_Odd_Even" V 4855 4062 50  0001 R CNN
F 2 "Connector_PinHeader_2.00mm:PinHeader_2x06_P2.00mm_Vertical" H 4850 4450 50  0001 C CNN
F 3 "~" H 4850 4450 50  0001 C CNN
	1    4850 4450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4650 4650 4750 4650
Connection ~ 4750 4650
Wire Wire Line
	4750 4650 4850 4650
Connection ~ 4850 4650
Wire Wire Line
	4850 4650 4950 4650
Text GLabel 5150 4150 1    50   Input ~ 0
H
Text GLabel 5150 4650 3    50   Input ~ 0
V
$Comp
L Connector_Generic:Conn_01x03 J3
U 1 1 604B3EEA
P 5750 4150
F 0 "J3" V 5750 4350 50  0000 L CNN
F 1 "Conn_01x03" V 5713 4330 50  0001 L CNN
F 2 "Connector_PinHeader_2.00mm:PinHeader_1x03_P2.00mm_Vertical" H 5750 4150 50  0001 C CNN
F 3 "~" H 5750 4150 50  0001 C CNN
	1    5750 4150
	0    1    1    0   
$EndComp
Text GLabel 5750 3950 1    50   Input ~ 0
GND
Wire Wire Line
	5650 3950 5750 3950
Connection ~ 5750 3950
Wire Wire Line
	5750 3950 5850 3950
$Comp
L Device:C_Small C2
U 1 1 604C0786
P 7600 4400
F 0 "C2" H 7500 4400 50  0000 R CNN
F 1 "0.1uF" H 7700 4400 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7600 4400 50  0001 C CNN
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
L Device:C_Small C3
U 1 1 604D1DD2
P 1950 4000
F 0 "C3" H 2050 4150 50  0000 R CNN
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
XCLKEN
Text GLabel 3150 4600 0    50   Input ~ 0
OE
Text GLabel 3200 3500 2    50   Output ~ 0
OE
Text GLabel 2300 3700 0    50   Input ~ 0
GND
Text GLabel 3500 3700 2    50   Input ~ 0
VCC
$Comp
L Device:C_Small C4
U 1 1 604F7F40
P 3500 3600
F 0 "C4" H 3400 3600 50  0000 R CNN
F 1 "0.1uF" H 3600 3600 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3500 3600 50  0001 C CNN
F 3 "~" H 3500 3600 50  0001 C CNN
	1    3500 3600
	1    0    0    -1  
$EndComp
Text GLabel 3500 3500 2    50   Input ~ 0
GND
Wire Wire Line
	3200 3700 3500 3700
$Comp
L Jumper:SolderJumper_3_Open JP1
U 1 1 604FA261
P 3200 2800
F 0 "JP1" V 3200 2900 50  0000 L CNN
F 1 "SolderJumper_3_Open" V 3155 2867 50  0001 L CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_Pad1.0x1.5mm_NumberLabels" H 3200 2800 50  0001 C CNN
F 3 "~" H 3200 2800 50  0001 C CNN
	1    3200 2800
	0    -1   -1   0   
$EndComp
Text GLabel 3200 2600 0    50   Input ~ 0
OE
Text GLabel 3200 3000 0    50   Input ~ 0
XCLKEN
$Comp
L Device:R R4
U 1 1 6053876C
P 1150 3600
F 0 "R4" H 1200 3600 50  0000 L CNN
F 1 "10k" V 1150 3500 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1080 3600 50  0001 C CNN
F 3 "~" H 1150 3600 50  0001 C CNN
	1    1150 3600
	1    0    0    -1  
$EndComp
$Comp
L Oscillator:SG-8002CA X1
U 1 1 6069C88B
P 3450 4600
F 0 "X1" H 3700 4350 50  0000 L CNN
F 1 "K50-HC0CSE28.6363MR" H 3700 4450 50  0001 L CNN
F 2 "Oscillator:Oscillator_SMD_SeikoEpson_SG8002CA-4Pin_7.0x5.0mm" H 4150 4250 50  0001 C CNN
F 3 "" H 3350 4600 50  0001 C CNN
	1    3450 4600
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
XCLKEN
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
Wire Wire Line
	5200 3100 5400 3100
Connection ~ 5400 3100
Wire Wire Line
	5400 3100 5600 3100
Connection ~ 5800 3100
Wire Wire Line
	5800 3100 6000 3100
Connection ~ 5600 3100
Wire Wire Line
	5600 3100 5800 3100
Text Label 6300 3200 2    50   ~ 0
CSYNC
Text Label 6400 3200 0    50   ~ 0
+12V
Text Label 3350 2800 0    50   ~ 0
ToAgnusPin41
NoConn ~ 3350 2800
$EndSCHEMATC
