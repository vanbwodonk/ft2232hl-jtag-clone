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
Wire Wire Line
	8010 2165 8620 2165
Wire Wire Line
	8010 2265 8620 2265
Wire Wire Line
	8620 2265 8620 2270
Wire Wire Line
	8010 2365 8615 2365
Wire Wire Line
	8010 2465 8615 2465
Wire Wire Line
	8010 3965 8620 3965
Wire Wire Line
	8010 4065 8620 4065
Wire Wire Line
	8010 4165 8620 4165
Wire Wire Line
	8010 4265 8620 4265
Wire Wire Line
	1875 2550 1700 2550
$Comp
L Regulator_Linear:AMS1117-3.3 U2
U 1 1 6023EB5C
P 3025 2350
F 0 "U2" H 3025 2592 50  0000 C CNN
F 1 "AMS1117-3.3" H 3025 2501 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 3025 2550 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 3125 2100 50  0001 C CNN
	1    3025 2350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 60285169
P 1700 3190
F 0 "#PWR0103" H 1700 2940 50  0001 C CNN
F 1 "GND" H 1705 3017 50  0000 C CNN
F 2 "" H 1700 3190 50  0001 C CNN
F 3 "" H 1700 3190 50  0001 C CNN
	1    1700 3190
	1    0    0    -1  
$EndComp
Wire Wire Line
	3025 2650 3025 2710
$Comp
L power:GND #PWR0104
U 1 1 60288E66
P 3025 2770
F 0 "#PWR0104" H 3025 2520 50  0001 C CNN
F 1 "GND" H 3030 2597 50  0000 C CNN
F 2 "" H 3025 2770 50  0001 C CNN
F 3 "" H 3025 2770 50  0001 C CNN
	1    3025 2770
	1    0    0    -1  
$EndComp
Wire Wire Line
	2445 2475 2445 2350
Connection ~ 2445 2350
Wire Wire Line
	2445 2350 2725 2350
Wire Wire Line
	2445 2675 2445 2710
Wire Wire Line
	2445 2710 3025 2710
Connection ~ 3025 2710
Wire Wire Line
	3025 2710 3025 2770
$Comp
L Device:C_Small C3
U 1 1 6028EF60
P 3510 2575
F 0 "C3" H 3602 2621 50  0000 L CNN
F 1 "0.1uF" H 3602 2530 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 3510 2575 50  0001 C CNN
F 3 "~" H 3510 2575 50  0001 C CNN
	1    3510 2575
	1    0    0    -1  
$EndComp
Wire Wire Line
	3510 2675 3510 2710
Wire Wire Line
	3510 2710 3025 2710
Wire Wire Line
	3510 2475 3510 2350
Connection ~ 3510 2350
Wire Wire Line
	3510 2350 3325 2350
$Comp
L Device:LED_Small D1
U 1 1 60294C77
P 4060 2515
F 0 "D1" V 4106 2445 50  0000 R CNN
F 1 "pwr" V 4015 2445 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4060 2515 50  0001 C CNN
F 3 "~" V 4060 2515 50  0001 C CNN
	1    4060 2515
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R5
U 1 1 60299067
P 3800 2710
F 0 "R5" V 3865 2720 50  0000 C CNN
F 1 "2K2" V 3945 2715 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 3800 2710 50  0001 C CNN
F 3 "~" H 3800 2710 50  0001 C CNN
	1    3800 2710
	0    1    1    0   
$EndComp
Wire Wire Line
	3510 2710 3700 2710
Connection ~ 3510 2710
Wire Wire Line
	3900 2710 4060 2710
Wire Wire Line
	4060 2710 4060 2615
Wire Wire Line
	4060 2415 4060 2350
Wire Wire Line
	3510 2350 4060 2350
Wire Wire Line
	3510 2355 3510 2350
Wire Wire Line
	3510 2350 3510 2215
$Comp
L power:+3.3V #PWR0105
U 1 1 602A1EE5
P 3510 2215
F 0 "#PWR0105" H 3510 2065 50  0001 C CNN
F 1 "+3.3V" H 3525 2388 50  0000 C CNN
F 2 "" H 3510 2215 50  0001 C CNN
F 3 "" H 3510 2215 50  0001 C CNN
	1    3510 2215
	1    0    0    -1  
$EndComp
Wire Wire Line
	8010 4365 8620 4365
Wire Wire Line
	9250 2845 9860 2845
Wire Wire Line
	9250 2945 9860 2945
Wire Wire Line
	9255 3045 9860 3045
Wire Wire Line
	9255 3145 9860 3145
Wire Wire Line
	9240 3820 9850 3820
Wire Wire Line
	9240 3920 9850 3920
Wire Wire Line
	9245 4020 9850 4020
Wire Wire Line
	9245 4120 9850 4120
Text Label 8620 2165 2    50   ~ 0
TCK
Text Label 8620 2270 2    50   ~ 0
TDI
Text Label 8615 2365 2    50   ~ 0
TDO
Text Label 8615 2465 2    50   ~ 0
TMS
Text Label 8620 4065 2    50   ~ 0
RX
Text Label 8620 3965 2    50   ~ 0
TX
Text Label 8620 4165 2    50   ~ 0
RTS
Text Label 8620 4265 2    50   ~ 0
CTS
Text Label 8620 4365 2    50   ~ 0
DTR
Text Label 9250 2845 0    50   ~ 0
TCK
Text Label 9250 2945 0    50   ~ 0
TDI
Text Label 9255 3045 0    50   ~ 0
TDO
Text Label 9255 3145 0    50   ~ 0
TMS
Text Label 9240 3820 0    50   ~ 0
RX
Text Label 9240 3920 0    50   ~ 0
RTS
Text Label 9245 4020 0    50   ~ 0
CTS
Text Label 9245 4120 0    50   ~ 0
DTR
$Comp
L Connector:Conn_01x06_Male J3
U 1 1 60458073
P 10060 3045
F 0 "J3" H 10032 2927 50  0000 R CNN
F 1 "Conn_01x06_Male" H 10032 3018 50  0000 R CNN
F 2 "JTAG_HW:PinHeader_1x06_P2.54mm_Vertical_SMD_Pin1long" H 10060 3045 50  0001 C CNN
F 3 "~" H 10060 3045 50  0001 C CNN
	1    10060 3045
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x06_Male J2
U 1 1 6045A157
P 10050 4020
F 0 "J2" H 10022 3902 50  0000 R CNN
F 1 "Conn_01x06_Male" H 10022 3993 50  0000 R CNN
F 2 "JTAG_HW:PinHeader_1x06_P2.54mm_Vertical_SMD_Pin1long" H 10050 4020 50  0001 C CNN
F 3 "~" H 10050 4020 50  0001 C CNN
	1    10050 4020
	-1   0    0    1   
$EndComp
Wire Wire Line
	9250 3245 9860 3245
Wire Wire Line
	9250 2745 9860 2745
Wire Wire Line
	9240 4220 9850 4220
Wire Wire Line
	9240 3720 9850 3720
$Comp
L power:+3.3V #PWR0119
U 1 1 604A9DF6
P 9250 2745
F 0 "#PWR0119" H 9250 2595 50  0001 C CNN
F 1 "+3.3V" H 9265 2918 50  0000 C CNN
F 2 "" H 9250 2745 50  0001 C CNN
F 3 "" H 9250 2745 50  0001 C CNN
	1    9250 2745
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0121
U 1 1 604BF55B
P 9250 3245
F 0 "#PWR0121" H 9250 2995 50  0001 C CNN
F 1 "GND" H 9255 3072 50  0000 C CNN
F 2 "" H 9250 3245 50  0001 C CNN
F 3 "" H 9250 3245 50  0001 C CNN
	1    9250 3245
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0122
U 1 1 604E6038
P 9240 4220
F 0 "#PWR0122" H 9240 3970 50  0001 C CNN
F 1 "GND" H 9245 4047 50  0000 C CNN
F 2 "" H 9240 4220 50  0001 C CNN
F 3 "" H 9240 4220 50  0001 C CNN
	1    9240 4220
	1    0    0    -1  
$EndComp
Connection ~ 2940 5115
Wire Wire Line
	2940 5115 2940 5040
Wire Wire Line
	2225 5115 2940 5115
Wire Wire Line
	2800 4840 2800 5215
Connection ~ 2800 4840
Wire Wire Line
	2800 4365 2800 4840
Wire Wire Line
	2940 4840 2800 4840
Wire Wire Line
	2225 5215 2800 5215
Wire Wire Line
	2545 5015 2225 5015
Wire Wire Line
	1055 5015 1425 5015
Wire Wire Line
	1055 4570 1055 5015
Wire Wire Line
	2240 4570 1055 4570
Wire Wire Line
	2240 4370 2240 4570
$Comp
L Device:R_Small R4
U 1 1 602A0C31
P 2940 4940
F 0 "R4" V 3005 4950 50  0000 C CNN
F 1 "2.2K" V 3085 4945 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 2940 4940 50  0001 C CNN
F 3 "~" H 2940 4940 50  0001 C CNN
	1    2940 4940
	1    0    0    -1  
$EndComp
Wire Wire Line
	1825 4750 1825 4815
Connection ~ 1825 4750
Connection ~ 1190 5115
Wire Wire Line
	1190 4750 1825 4750
Wire Wire Line
	1190 5115 1190 4750
Wire Wire Line
	1825 5455 1825 5510
Connection ~ 1825 5455
Wire Wire Line
	1190 5455 1825 5455
Wire Wire Line
	1190 5115 1190 5255
Wire Wire Line
	1425 5115 1190 5115
$Comp
L Device:C_Small C1
U 1 1 6028F205
P 1190 5355
F 0 "C1" H 1035 5380 50  0000 L CNN
F 1 "0.1uF" H 960 5290 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 1190 5355 50  0001 C CNN
F 3 "~" H 1190 5355 50  0001 C CNN
	1    1190 5355
	1    0    0    -1  
$EndComp
Wire Wire Line
	1825 5415 1825 5455
$Comp
L power:GND #PWR0118
U 1 1 602818A4
P 1825 5510
F 0 "#PWR0118" H 1825 5260 50  0001 C CNN
F 1 "GND" H 1830 5337 50  0000 C CNN
F 2 "" H 1825 5510 50  0001 C CNN
F 3 "" H 1825 5510 50  0001 C CNN
	1    1825 5510
	1    0    0    -1  
$EndComp
Wire Wire Line
	1825 4705 1825 4750
$Comp
L power:+3.3V #PWR0117
U 1 1 6027B4A6
P 1825 4705
F 0 "#PWR0117" H 1825 4555 50  0001 C CNN
F 1 "+3.3V" H 1950 4790 50  0000 C CNN
F 2 "" H 1825 4705 50  0001 C CNN
F 3 "" H 1825 4705 50  0001 C CNN
	1    1825 4705
	1    0    0    -1  
$EndComp
Wire Wire Line
	2545 4045 2545 3975
Connection ~ 2545 4045
Wire Wire Line
	2800 4045 2800 4165
Wire Wire Line
	2545 4045 2800 4045
Wire Wire Line
	2545 4045 2545 4170
Wire Wire Line
	2240 4045 2545 4045
Wire Wire Line
	2240 4170 2240 4045
$Comp
L Device:R_Small R3
U 1 1 60261D11
P 2800 4265
F 0 "R3" V 2865 4275 50  0000 C CNN
F 1 "10K" V 2945 4270 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 2800 4265 50  0001 C CNN
F 3 "~" H 2800 4265 50  0001 C CNN
	1    2800 4265
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R2
U 1 1 60257533
P 2545 4270
F 0 "R2" V 2610 4280 50  0000 C CNN
F 1 "10K" V 2690 4275 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 2545 4270 50  0001 C CNN
F 3 "~" H 2545 4270 50  0001 C CNN
	1    2545 4270
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R1
U 1 1 6025544F
P 2240 4270
F 0 "R1" V 2305 4280 50  0000 C CNN
F 1 "10K" V 2385 4275 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 2240 4270 50  0001 C CNN
F 3 "~" H 2240 4270 50  0001 C CNN
	1    2240 4270
	-1   0    0    1   
$EndComp
Wire Wire Line
	4100 5265 3995 5265
Connection ~ 4100 5265
Wire Wire Line
	4155 5265 4100 5265
$Comp
L Device:C_Small C4
U 1 1 602D2044
P 4255 5265
F 0 "C4" V 4055 5335 50  0000 L CNN
F 1 "27pF" V 4140 5290 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4255 5265 50  0001 C CNN
F 3 "~" H 4255 5265 50  0001 C CNN
	1    4255 5265
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 6030CEB9
P 3995 5265
F 0 "#PWR0110" H 3995 5015 50  0001 C CNN
F 1 "GND" H 4000 5092 50  0000 C CNN
F 2 "" H 3995 5265 50  0001 C CNN
F 3 "" H 3995 5265 50  0001 C CNN
	1    3995 5265
	0    1    1    0   
$EndComp
Connection ~ 4600 5265
Wire Wire Line
	4600 5265 4355 5265
$Comp
L Device:C_Small C5
U 1 1 602D308A
P 4255 5665
F 0 "C5" V 4075 5630 50  0000 L CNN
F 1 "27pF" V 4155 5620 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4255 5665 50  0001 C CNN
F 3 "~" H 4255 5665 50  0001 C CNN
	1    4255 5665
	0    1    1    0   
$EndComp
Wire Wire Line
	4600 5635 4600 5665
Wire Wire Line
	4600 5335 4600 5265
$Comp
L Device:Crystal Y1
U 1 1 602CC57A
P 4600 5485
F 0 "Y1" V 4554 5616 50  0000 L CNN
F 1 "12MHZ" V 4645 5616 50  0000 L CNN
F 2 "Crystal:Crystal_SMD_0603-2Pin_6.0x3.5mm_HandSoldering" H 4600 5485 50  0001 C CNN
F 3 "~" H 4600 5485 50  0001 C CNN
	1    4600 5485
	0    1    1    0   
$EndComp
$Comp
L Memory_EEPROM:93CxxC U1
U 1 1 6023D4F4
P 1825 5115
F 0 "U1" H 1620 5425 50  0000 C CNN
F 1 "93CxxC" H 1610 5360 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 1825 5115 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20001749K.pdf" H 1825 5115 50  0001 C CNN
	1    1825 5115
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0116
U 1 1 60274348
P 2545 3975
F 0 "#PWR0116" H 2545 3825 50  0001 C CNN
F 1 "+3.3V" H 2670 4060 50  0000 C CNN
F 2 "" H 2545 3975 50  0001 C CNN
F 3 "" H 2545 3975 50  0001 C CNN
	1    2545 3975
	1    0    0    -1  
$EndComp
Wire Wire Line
	2010 3355 2885 3355
Wire Wire Line
	1875 2550 1875 3555
Wire Wire Line
	2010 2650 2010 2965
$Comp
L Device:C_Small C7
U 1 1 608123E8
P 8160 1260
F 0 "C7" H 8252 1306 50  0000 L CNN
F 1 "0.1uF" H 8252 1215 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 8160 1260 50  0001 C CNN
F 3 "~" H 8160 1260 50  0001 C CNN
	1    8160 1260
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R11
U 1 1 6084AD70
P 5345 3665
F 0 "R11" V 5410 3675 50  0000 C CNN
F 1 "1K" V 5340 3665 39  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 5345 3665 50  0001 C CNN
F 3 "~" H 5345 3665 50  0001 C CNN
	1    5345 3665
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0102
U 1 1 608FA172
P 2445 2210
F 0 "#PWR0102" H 2445 2060 50  0001 C CNN
F 1 "+5V" H 2460 2383 50  0000 C CNN
F 2 "" H 2445 2210 50  0001 C CNN
F 3 "" H 2445 2210 50  0001 C CNN
	1    2445 2210
	1    0    0    -1  
$EndComp
Wire Wire Line
	2445 2350 2445 2210
Wire Wire Line
	1875 3555 2535 3555
$Comp
L Device:R_Small R6
U 1 1 60947A09
P 2835 3555
F 0 "R6" V 2900 3565 50  0000 C CNN
F 1 "27" V 2755 3555 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 2835 3555 50  0001 C CNN
F 3 "~" H 2835 3555 50  0001 C CNN
	1    2835 3555
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R7
U 1 1 6094B979
P 2985 3355
F 0 "R7" V 3050 3365 50  0000 C CNN
F 1 "27" V 2905 3355 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 2985 3355 50  0001 C CNN
F 3 "~" H 2985 3355 50  0001 C CNN
	1    2985 3355
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4355 5665 4600 5665
Connection ~ 4600 5665
Wire Wire Line
	4155 5665 4100 5665
Wire Wire Line
	4100 5265 4100 5665
$Comp
L Device:C_Small C9
U 1 1 60A971D5
P 1960 1540
F 0 "C9" H 2052 1586 50  0000 L CNN
F 1 "0.1uF" H 2052 1495 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 1960 1540 50  0001 C CNN
F 3 "~" H 1960 1540 50  0001 C CNN
	1    1960 1540
	1    0    0    -1  
$EndComp
Wire Wire Line
	1960 1400 1960 1440
Wire Wire Line
	1960 1400 2390 1400
Wire Wire Line
	2390 1400 2390 1440
Connection ~ 1960 1400
Wire Wire Line
	2390 1640 2390 1735
Wire Wire Line
	2390 1735 1960 1735
Wire Wire Line
	1960 1735 1960 1640
Connection ~ 1960 1735
$Comp
L power:+5V #PWR0108
U 1 1 60ABE351
P 1960 1400
F 0 "#PWR0108" H 1960 1250 50  0001 C CNN
F 1 "+5V" H 1975 1573 50  0000 C CNN
F 2 "" H 1960 1400 50  0001 C CNN
F 3 "" H 1960 1400 50  0001 C CNN
	1    1960 1400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 60AC15BC
P 1960 1735
F 0 "#PWR0109" H 1960 1485 50  0001 C CNN
F 1 "GND" H 1965 1562 50  0000 C CNN
F 2 "" H 1960 1735 50  0001 C CNN
F 3 "" H 1960 1735 50  0001 C CNN
	1    1960 1735
	1    0    0    -1  
$EndComp
$Comp
L usb_c16pin:USB_C16PIN J6
U 1 1 602A9098
P 1200 2750
F 0 "J6" H 1408 3360 70  0000 C CNN
F 1 "USB_C16PIN" H 1408 3239 70  0000 C CNN
F 2 "USB-C-COM-15111:USB-C-COM-15111" H 1200 2750 50  0001 C CNN
F 3 "" H 1200 2750 50  0001 C CNN
	1    1200 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 2650 2010 2650
Wire Wire Line
	1700 2450 1700 2350
Wire Wire Line
	1700 2350 2320 2350
NoConn ~ 1700 2750
NoConn ~ 1700 2850
Wire Wire Line
	1700 2950 1700 3050
Wire Wire Line
	1700 3050 1700 3190
Connection ~ 1700 3050
$Comp
L Device:C_Small C2
U 1 1 6028B743
P 2445 2575
F 0 "C2" H 2537 2621 50  0000 L CNN
F 1 "0.1uF" H 2537 2530 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 2445 2575 50  0001 C CNN
F 3 "~" H 2445 2575 50  0001 C CNN
	1    2445 2575
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Polarized_Small C10
U 1 1 60656D6B
P 2390 1540
F 0 "C10" H 2478 1586 50  0000 L CNN
F 1 "10uF" H 2478 1495 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3216-18_Kemet-A_Pad1.58x1.35mm_HandSolder" H 2390 1540 50  0001 C CNN
F 3 "~" H 2390 1540 50  0001 C CNN
	1    2390 1540
	1    0    0    -1  
$EndComp
$Comp
L Device:FerriteBead_Small FB1
U 1 1 60668686
P 5800 1185
F 0 "FB1" V 5563 1185 50  0000 C CNN
F 1 "FerriteBead_Small" V 5654 1185 50  0000 C CNN
F 2 "Inductor_SMD:L_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5730 1185 50  0001 C CNN
F 3 "~" H 5800 1185 50  0001 C CNN
	1    5800 1185
	0    1    1    0   
$EndComp
$Comp
L Power_Protection:NUP2202 U3
U 1 1 60684D65
P 2320 2965
F 0 "U3" H 2564 3011 50  0000 L CNN
F 1 "NUP2202" H 2564 2920 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 2400 3040 50  0001 C CNN
F 3 "http://www.onsemi.ru.com/pub_link/Collateral/NUP2202W1-D.PDF" H 2400 3040 50  0001 C CNN
	1    2320 2965
	1    0    0    -1  
$EndComp
Wire Wire Line
	2320 2765 2320 2350
Connection ~ 2320 2350
Wire Wire Line
	2320 2350 2445 2350
$Comp
L power:GND #PWR01
U 1 1 60784B8C
P 2320 3165
F 0 "#PWR01" H 2320 2915 50  0001 C CNN
F 1 "GND" H 2190 3090 50  0000 C CNN
F 2 "" H 2320 3165 50  0001 C CNN
F 3 "" H 2320 3165 50  0001 C CNN
	1    2320 3165
	1    0    0    -1  
$EndComp
Wire Wire Line
	2120 2965 2010 2965
Connection ~ 2010 2965
Wire Wire Line
	2010 2965 2010 3355
Wire Wire Line
	2520 2965 2535 2965
Wire Wire Line
	2535 2965 2535 3555
Connection ~ 2535 3555
Wire Wire Line
	2535 3555 2735 3555
Wire Wire Line
	2940 5115 3480 5115
Connection ~ 2240 4570
Wire Wire Line
	2240 4570 3595 4570
Wire Wire Line
	2545 4745 2545 5015
Wire Wire Line
	2545 4370 2545 4745
Connection ~ 2545 4745
Wire Wire Line
	3480 4745 2545 4745
$Comp
L power:GND #PWR04
U 1 1 607BA6D7
P 6210 6485
F 0 "#PWR04" H 6210 6235 50  0001 C CNN
F 1 "GND" H 6215 6312 50  0000 C CNN
F 2 "" H 6210 6485 50  0001 C CNN
F 3 "" H 6210 6485 50  0001 C CNN
	1    6210 6485
	1    0    0    -1  
$EndComp
Wire Wire Line
	6210 6265 6210 6375
Wire Wire Line
	5610 5865 5545 5865
Wire Wire Line
	5545 5865 5545 6375
Wire Wire Line
	5545 6375 6210 6375
Connection ~ 6210 6375
Wire Wire Line
	6210 6375 6210 6485
Wire Wire Line
	7110 6265 7110 6375
Wire Wire Line
	6410 6265 6410 6375
Connection ~ 6410 6375
Wire Wire Line
	6410 6375 6210 6375
Wire Wire Line
	6510 6265 6510 6375
Wire Wire Line
	6410 6375 6510 6375
Connection ~ 6510 6375
Wire Wire Line
	6510 6375 6610 6375
Wire Wire Line
	6610 6265 6610 6375
Connection ~ 6610 6375
Wire Wire Line
	6610 6375 6710 6375
Wire Wire Line
	6710 6265 6710 6375
Connection ~ 6710 6375
Wire Wire Line
	6710 6375 6810 6375
Wire Wire Line
	6810 6265 6810 6375
Connection ~ 6810 6375
Wire Wire Line
	6810 6375 6910 6375
Wire Wire Line
	6910 6265 6910 6375
Connection ~ 6910 6375
Wire Wire Line
	6910 6375 7010 6375
Wire Wire Line
	7010 6265 7010 6375
Connection ~ 7010 6375
Wire Wire Line
	7010 6375 7110 6375
NoConn ~ 8010 5765
NoConn ~ 8010 5865
Wire Wire Line
	4600 5265 5610 5265
Wire Wire Line
	4600 5665 5610 5665
Wire Wire Line
	5445 3665 5610 3665
Wire Wire Line
	4330 3165 5610 3165
Wire Wire Line
	5610 3265 4405 3265
$Comp
L Device:R_Small R8
U 1 1 60879CEC
P 5340 3465
F 0 "R8" V 5405 3475 50  0000 C CNN
F 1 "12K" V 5335 3460 39  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 5340 3465 50  0001 C CNN
F 3 "~" H 5340 3465 50  0001 C CNN
	1    5340 3465
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5440 3465 5610 3465
$Comp
L power:GND #PWR02
U 1 1 60883EB1
P 4535 3595
F 0 "#PWR02" H 4535 3345 50  0001 C CNN
F 1 "GND" H 4540 3422 50  0000 C CNN
F 2 "" H 4535 3595 50  0001 C CNN
F 3 "" H 4535 3595 50  0001 C CNN
	1    4535 3595
	1    0    0    -1  
$EndComp
Wire Wire Line
	5240 3465 4535 3465
Wire Wire Line
	4535 3465 4535 3595
$Comp
L power:+3.3V #PWR03
U 1 1 60890E98
P 4970 3720
F 0 "#PWR03" H 4970 3570 50  0001 C CNN
F 1 "+3.3V" H 4985 3893 50  0000 C CNN
F 2 "" H 4970 3720 50  0001 C CNN
F 3 "" H 4970 3720 50  0001 C CNN
	1    4970 3720
	1    0    0    -1  
$EndComp
Wire Wire Line
	4970 3720 5245 3720
Wire Wire Line
	5245 3665 5245 3720
Wire Wire Line
	5610 4765 3595 4765
Wire Wire Line
	3595 4765 3595 4570
Wire Wire Line
	5610 4865 3480 4865
Wire Wire Line
	3480 4865 3480 4745
Wire Wire Line
	5610 4965 3480 4965
Wire Wire Line
	3480 4965 3480 5115
Wire Wire Line
	3085 3355 4330 3355
Wire Wire Line
	4330 3165 4330 3355
Wire Wire Line
	2935 3555 4405 3555
Wire Wire Line
	4405 3265 4405 3555
$Comp
L power:+1V8 #PWR0101
U 1 1 6094EBC1
P 6710 1695
F 0 "#PWR0101" H 6710 1545 50  0001 C CNN
F 1 "+1V8" H 6725 1868 50  0000 C CNN
F 2 "" H 6710 1695 50  0001 C CNN
F 3 "" H 6710 1695 50  0001 C CNN
	1    6710 1695
	1    0    0    -1  
$EndComp
$Comp
L power:+1V8 #PWR0106
U 1 1 6094F3E3
P 4945 2080
F 0 "#PWR0106" H 4945 1930 50  0001 C CNN
F 1 "+1V8" H 4960 2253 50  0000 C CNN
F 2 "" H 4945 2080 50  0001 C CNN
F 3 "" H 4945 2080 50  0001 C CNN
	1    4945 2080
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0107
U 1 1 60958602
P 5220 2080
F 0 "#PWR0107" H 5220 1930 50  0001 C CNN
F 1 "+3.3V" H 5235 2253 50  0000 C CNN
F 2 "" H 5220 2080 50  0001 C CNN
F 3 "" H 5220 2080 50  0001 C CNN
	1    5220 2080
	1    0    0    -1  
$EndComp
$Comp
L Interface_USB:FT2232HL U4
U 1 1 6067B59A
P 6810 4065
F 0 "U4" H 6800 5265 50  0000 C CNN
F 1 "FT2232HL" H 6805 5160 50  0000 C CNN
F 2 "Package_QFP:LQFP-64_10x10mm_P0.5mm" H 6810 4065 50  0001 C CNN
F 3 "https://www.ftdichip.com/Support/Documents/DataSheets/ICs/DS_FT2232H.pdf" H 6810 4065 50  0001 C CNN
	1    6810 4065
	1    0    0    -1  
$EndComp
Wire Wire Line
	4945 2365 4945 2080
Wire Wire Line
	4945 2365 5315 2365
Wire Wire Line
	5610 2165 5220 2165
Wire Wire Line
	5220 2165 5220 2080
Text Label 9240 3720 0    50   ~ 0
TX
Wire Wire Line
	6710 1695 6710 1750
Wire Wire Line
	6710 1750 6610 1750
Wire Wire Line
	6610 1750 6610 1865
Connection ~ 6710 1750
Wire Wire Line
	6710 1750 6710 1865
Wire Wire Line
	6810 1865 6810 1750
Wire Wire Line
	6810 1750 6710 1750
$Comp
L power:+3.3V #PWR0111
U 1 1 609DBE7B
P 7110 1695
F 0 "#PWR0111" H 7110 1545 50  0001 C CNN
F 1 "+3.3V" H 7125 1868 50  0000 C CNN
F 2 "" H 7110 1695 50  0001 C CNN
F 3 "" H 7110 1695 50  0001 C CNN
	1    7110 1695
	1    0    0    -1  
$EndComp
Wire Wire Line
	7110 1695 7110 1750
Wire Wire Line
	7010 1865 7010 1750
Wire Wire Line
	7010 1750 7110 1750
Connection ~ 7110 1750
Wire Wire Line
	7110 1750 7110 1865
Wire Wire Line
	7210 1865 7210 1750
Wire Wire Line
	7210 1750 7110 1750
Wire Wire Line
	7310 1865 7310 1750
Wire Wire Line
	7310 1750 7210 1750
Connection ~ 7210 1750
$Comp
L Device:FerriteBead_Small FB2
U 1 1 60A427EC
P 5800 790
F 0 "FB2" V 5563 790 50  0000 C CNN
F 1 "FerriteBead_Small" V 5654 790 50  0000 C CNN
F 2 "Inductor_SMD:L_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5730 790 50  0001 C CNN
F 3 "~" H 5800 790 50  0001 C CNN
	1    5800 790 
	0    1    1    0   
$EndComp
Wire Wire Line
	6410 1865 6410 790 
Wire Wire Line
	6410 790  5900 790 
Wire Wire Line
	6310 1865 6310 1185
Wire Wire Line
	6310 1185 5900 1185
$Comp
L power:+3.3V #PWR05
U 1 1 60A6AB89
P 5090 930
F 0 "#PWR05" H 5090 780 50  0001 C CNN
F 1 "+3.3V" H 5105 1103 50  0000 C CNN
F 2 "" H 5090 930 50  0001 C CNN
F 3 "" H 5090 930 50  0001 C CNN
	1    5090 930 
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 1185 5325 1185
Wire Wire Line
	5090 1185 5090 930 
Wire Wire Line
	5700 790  5325 790 
Wire Wire Line
	5325 790  5325 1185
Connection ~ 5325 1185
Wire Wire Line
	5325 1185 5090 1185
$Comp
L Device:LED_Small D2
U 1 1 60A9A78F
P 8910 5020
F 0 "D2" V 8956 4950 50  0000 R CNN
F 1 "RX_LED" V 8865 4950 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8910 5020 50  0001 C CNN
F 3 "~" V 8910 5020 50  0001 C CNN
	1    8910 5020
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R9
U 1 1 60A9A795
P 8580 5165
F 0 "R9" V 8510 5160 50  0000 C CNN
F 1 "2K2" V 8580 5170 39  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 8580 5165 50  0001 C CNN
F 3 "~" H 8580 5165 50  0001 C CNN
	1    8580 5165
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R10
U 1 1 60AB3B77
P 8580 5265
F 0 "R10" V 8655 5260 50  0000 C CNN
F 1 "2K2" V 8580 5265 39  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 8580 5265 50  0001 C CNN
F 3 "~" H 8580 5265 50  0001 C CNN
	1    8580 5265
	0    1    1    0   
$EndComp
Wire Wire Line
	8010 5165 8480 5165
Wire Wire Line
	8010 5265 8480 5265
$Comp
L Device:LED_Small D3
U 1 1 60ADBB82
P 9365 5010
F 0 "D3" V 9411 4940 50  0000 R CNN
F 1 "TX_LED" V 9320 4940 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9365 5010 50  0001 C CNN
F 3 "~" V 9365 5010 50  0001 C CNN
	1    9365 5010
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8680 5165 8910 5165
Wire Wire Line
	8910 5165 8910 5120
Wire Wire Line
	8680 5265 9365 5265
Wire Wire Line
	9365 5265 9365 5110
$Comp
L power:+3.3V #PWR06
U 1 1 60AF1E50
P 8910 4920
F 0 "#PWR06" H 8910 4770 50  0001 C CNN
F 1 "+3.3V" H 8925 5093 50  0000 C CNN
F 2 "" H 8910 4920 50  0001 C CNN
F 3 "" H 8910 4920 50  0001 C CNN
	1    8910 4920
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR07
U 1 1 60AF554A
P 9365 4910
F 0 "#PWR07" H 9365 4760 50  0001 C CNN
F 1 "+3.3V" H 9380 5083 50  0000 C CNN
F 2 "" H 9365 4910 50  0001 C CNN
F 3 "" H 9365 4910 50  0001 C CNN
	1    9365 4910
	1    0    0    -1  
$EndComp
NoConn ~ 8010 4865
NoConn ~ 8010 4965
NoConn ~ 8010 5065
NoConn ~ 8010 5365
NoConn ~ 8010 5465
NoConn ~ 8010 5565
NoConn ~ 8010 4665
NoConn ~ 8010 4565
NoConn ~ 8010 4465
NoConn ~ 8010 3065
NoConn ~ 8010 3165
NoConn ~ 8010 3265
NoConn ~ 8010 3365
NoConn ~ 8010 3465
NoConn ~ 8010 3565
NoConn ~ 8010 3665
NoConn ~ 8010 3765
NoConn ~ 8010 2565
NoConn ~ 8010 2665
NoConn ~ 8010 2765
NoConn ~ 8010 2865
$Comp
L Device:C_Small C13
U 1 1 60BD7150
P 8560 1260
F 0 "C13" H 8652 1306 50  0000 L CNN
F 1 "0.1uF" H 8652 1215 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 8560 1260 50  0001 C CNN
F 3 "~" H 8560 1260 50  0001 C CNN
	1    8560 1260
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C14
U 1 1 60BD8738
P 8945 1260
F 0 "C14" H 9037 1306 50  0000 L CNN
F 1 "0.1uF" H 9037 1215 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 8945 1260 50  0001 C CNN
F 3 "~" H 8945 1260 50  0001 C CNN
	1    8945 1260
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C15
U 1 1 60BD97DE
P 9320 1260
F 0 "C15" H 9412 1306 50  0000 L CNN
F 1 "0.1uF" H 9412 1215 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 9320 1260 50  0001 C CNN
F 3 "~" H 9320 1260 50  0001 C CNN
	1    9320 1260
	1    0    0    -1  
$EndComp
Wire Wire Line
	8560 1160 8945 1160
Connection ~ 8945 1160
Wire Wire Line
	8945 1160 9320 1160
Wire Wire Line
	8160 1160 8560 1160
Connection ~ 8560 1160
$Comp
L Device:C_Small C6
U 1 1 60BF08EB
P 4510 2615
F 0 "C6" H 4602 2661 50  0000 L CNN
F 1 "0.1uF" H 4602 2570 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4510 2615 50  0001 C CNN
F 3 "~" H 4510 2615 50  0001 C CNN
	1    4510 2615
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C11
U 1 1 60BF08F1
P 4910 2615
F 0 "C11" H 5002 2661 50  0000 L CNN
F 1 "0.1uF" H 5002 2570 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4910 2615 50  0001 C CNN
F 3 "~" H 4910 2615 50  0001 C CNN
	1    4910 2615
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C12
U 1 1 60C1B6E9
P 5315 2615
F 0 "C12" H 5407 2661 50  0000 L CNN
F 1 "0.1uF" H 5407 2570 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 5315 2615 50  0001 C CNN
F 3 "~" H 5315 2615 50  0001 C CNN
	1    5315 2615
	1    0    0    -1  
$EndComp
Wire Wire Line
	5315 2515 5315 2365
Connection ~ 5315 2365
Wire Wire Line
	5315 2365 5610 2365
Wire Wire Line
	4510 2515 4510 2365
Wire Wire Line
	4510 2365 4910 2365
Connection ~ 4945 2365
Wire Wire Line
	4910 2515 4910 2365
Connection ~ 4910 2365
Wire Wire Line
	4910 2365 4945 2365
$Comp
L power:GND #PWR08
U 1 1 60C38157
P 4510 2715
F 0 "#PWR08" H 4510 2465 50  0001 C CNN
F 1 "GND" H 4515 2542 50  0000 C CNN
F 2 "" H 4510 2715 50  0001 C CNN
F 3 "" H 4510 2715 50  0001 C CNN
	1    4510 2715
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 60C38FC9
P 4910 2715
F 0 "#PWR09" H 4910 2465 50  0001 C CNN
F 1 "GND" H 4915 2542 50  0000 C CNN
F 2 "" H 4910 2715 50  0001 C CNN
F 3 "" H 4910 2715 50  0001 C CNN
	1    4910 2715
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 60C3958C
P 5315 2715
F 0 "#PWR010" H 5315 2465 50  0001 C CNN
F 1 "GND" H 5320 2542 50  0000 C CNN
F 2 "" H 5315 2715 50  0001 C CNN
F 3 "" H 5315 2715 50  0001 C CNN
	1    5315 2715
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR011
U 1 1 60C494A2
P 8560 1160
F 0 "#PWR011" H 8560 1010 50  0001 C CNN
F 1 "+3.3V" H 8575 1333 50  0000 C CNN
F 2 "" H 8560 1160 50  0001 C CNN
F 3 "" H 8560 1160 50  0001 C CNN
	1    8560 1160
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 60C4A9F0
P 8560 1500
F 0 "#PWR012" H 8560 1250 50  0001 C CNN
F 1 "GND" H 8565 1327 50  0000 C CNN
F 2 "" H 8560 1500 50  0001 C CNN
F 3 "" H 8560 1500 50  0001 C CNN
	1    8560 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8160 1360 8160 1460
Wire Wire Line
	8160 1460 8560 1460
Wire Wire Line
	9320 1460 9320 1360
Wire Wire Line
	8945 1360 8945 1460
Connection ~ 8945 1460
Wire Wire Line
	8945 1460 9320 1460
Wire Wire Line
	8560 1360 8560 1460
Connection ~ 8560 1460
Wire Wire Line
	8560 1460 8945 1460
Wire Wire Line
	8560 1500 8560 1460
$EndSCHEMATC