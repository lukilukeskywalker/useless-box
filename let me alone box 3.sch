EESchema Schematic File Version 2
LIBS:let me alone box 3-rescue
LIBS:let me alone box 2-rescue
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:let me alone box 3-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Useless Box"
Date ""
Rev "2"
Comp "Alai"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ATTINY85-S-RESCUE-let_me_alone_box_2 IC1
U 1 1 5831E4DA
P 5900 3650
F 0 "IC1" H 4750 4050 50  0000 C CNN
F 1 "ATTINY85-S" H 6900 3250 50  0000 C CNN
F 2 "Housings_SOIC:SOIJ-8_5.3x5.3mm_Pitch1.27mm" H 6850 3650 50  0000 C CIN
F 3 "" H 5900 3650 50  0000 C CNN
	1    5900 3650
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X04 P1
U 1 1 5831F0FC
P 9850 3700
F 0 "P1" H 9850 3950 50  0000 C CNN
F 1 "ICSP, LUCES y Servo" H 9850 3450 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_2x04" H 9850 2500 50  0001 C CNN
F 3 "" H 9850 2500 50  0000 C CNN
	1    9850 3700
	1    0    0    -1  
$EndComp
Text Label 9300 3650 0    60   ~ 0
Miso
Text Label 9300 3750 0    60   ~ 0
Sck
Text Label 9300 3850 0    60   ~ 0
Reset
Text Label 10450 3850 2    60   ~ 0
Gnd
Text Label 10450 3750 2    60   ~ 0
Mosi
Text Label 10450 3650 2    60   ~ 0
Vcc
Text Label 10450 3550 2    60   ~ 0
Gnd
Text Label 9300 3550 0    60   ~ 0
Gnd
Text Label 4200 3950 0    60   ~ 0
Gnd
Text Label 10500 3750 0    60   ~ 0
Servo
$Comp
L SWITCH_INV SW2
U 1 1 58320573
P 3050 2850
F 0 "SW2" H 2850 3000 50  0000 C CNN
F 1 "SWITCH_INV" H 2900 2700 50  0000 C CNN
F 2 "Buttons_Switches_ThroughHole:SW_NKK_G1xJP" H 3050 2850 50  0001 C CNN
F 3 "" H 3050 2850 50  0000 C CNN
	1    3050 2850
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW1
U 1 1 583205F3
P 3050 2350
F 0 "SW1" H 3200 2460 50  0000 C CNN
F 1 "END_STOP" H 3050 2270 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x02_Pitch2.54mm" H 3050 2350 50  0001 C CNN
F 3 "" H 3050 2350 50  0000 C CNN
	1    3050 2350
	1    0    0    -1  
$EndComp
$Comp
L D D1
U 1 1 583211D1
P 7500 3400
F 0 "D1" H 7500 3500 50  0000 C CNN
F 1 "D" H 7500 3300 50  0000 C CNN
F 2 "Diodes_ThroughHole:Diode_DO-35_SOD27_Horizontal_RM10" H 7500 3400 50  0001 C CNN
F 3 "" H 7500 3400 50  0000 C CNN
	1    7500 3400
	1    0    0    -1  
$EndComp
$Comp
L SPEAKER SP1
U 1 1 58321A65
P 4100 2400
F 0 "SP1" H 4000 2650 50  0000 C CNN
F 1 "SPEAKER" H 4000 2150 50  0000 C CNN
F 2 "Buzzers_Beepers:Buzzer_12x9.5RM7.6" H 4100 2400 50  0001 C CNN
F 3 "" H 4100 2400 50  0000 C CNN
	1    4100 2400
	0    -1   -1   0   
$EndComp
$Comp
L R R1
U 1 1 58321E2B
P 3350 3200
F 0 "R1" V 3430 3200 50  0000 C CNN
F 1 "6.8M" V 3350 3200 50  0000 C CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3280 3200 50  0001 C CNN
F 3 "" H 3350 3200 50  0000 C CNN
	1    3350 3200
	0    1    1    0   
$EndComp
Text Label 2850 3200 0    60   ~ 0
Gnd
$Comp
L CONN_01X02 P2
U 1 1 58380957
P 2150 3850
F 0 "P2" H 2150 4000 50  0000 C CNN
F 1 "Bateria 6v" V 2250 3850 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x02" H 2150 3850 50  0001 C CNN
F 3 "" H 2150 3850 50  0000 C CNN
	1    2150 3850
	-1   0    0    1   
$EndComp
Text Label 2900 3900 2    60   ~ 0
Gnd
Wire Wire Line
	10100 3550 10450 3550
Wire Wire Line
	10100 3650 10500 3650
Wire Wire Line
	10100 3750 10500 3750
Wire Wire Line
	10100 3850 10450 3850
Wire Wire Line
	7700 3850 9600 3850
Wire Wire Line
	7650 3750 9600 3750
Wire Wire Line
	7250 3650 9600 3650
Wire Wire Line
	9150 3550 9600 3550
Wire Wire Line
	7650 3750 7650 3500
Wire Wire Line
	7650 3500 7250 3500
Wire Wire Line
	7700 3850 7700 3250
Wire Wire Line
	7700 3250 4500 3250
Wire Wire Line
	4500 3250 4500 3350
Wire Wire Line
	4500 3350 4550 3350
Wire Wire Line
	10500 3650 10500 3400
Wire Wire Line
	10500 3750 10500 4050
Wire Wire Line
	10500 4050 7300 4050
Wire Wire Line
	7300 4050 7300 3850
Wire Wire Line
	7300 3850 7250 3850
Wire Wire Line
	4550 3950 4200 3950
Wire Wire Line
	3350 2350 3750 2350
Wire Wire Line
	3750 2350 3750 2950
Wire Wire Line
	3550 2950 7950 2950
Wire Wire Line
	2750 2350 2350 2350
Wire Wire Line
	2350 2000 2350 3800
Wire Wire Line
	2350 2850 2550 2850
Connection ~ 2350 2850
Wire Wire Line
	7250 3400 7350 3400
Connection ~ 3750 2950
Wire Wire Line
	4550 3550 3900 3550
Wire Wire Line
	3900 3550 3900 3200
Wire Wire Line
	3900 3200 3500 3200
Connection ~ 3550 3200
Wire Wire Line
	3200 3200 2850 3200
Connection ~ 2350 2350
Connection ~ 7300 3400
Connection ~ 2350 3550
Wire Wire Line
	2350 3900 2900 3900
Wire Wire Line
	10500 3400 7650 3400
$Comp
L PWR_FLAG #FLG01
U 1 1 583845BC
P 2350 2000
F 0 "#FLG01" H 2350 2095 50  0001 C CNN
F 1 "PWR_FLAG" H 2350 2180 50  0000 C CNN
F 2 "" H 2350 2000 50  0000 C CNN
F 3 "" H 2350 2000 50  0000 C CNN
	1    2350 2000
	1    0    0    -1  
$EndComp
Connection ~ 2350 2050
$Comp
L PWR_FLAG #FLG02
U 1 1 583849F5
P 2600 3850
F 0 "#FLG02" H 2600 3945 50  0001 C CNN
F 1 "PWR_FLAG" H 2600 4030 50  0000 C CNN
F 2 "" H 2600 3850 50  0000 C CNN
F 3 "" H 2600 3850 50  0000 C CNN
	1    2600 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 3850 2600 3900
Connection ~ 2600 3900
$Comp
L CONN_01X01 P3
U 1 1 58385157
P 8350 1100
F 0 "P3" H 8350 1200 50  0000 C CNN
F 1 "Taladro" V 8450 1100 50  0000 C CNN
F 2 "Mounting_Holes:MountingHole_2.7mm" H 8350 1100 50  0001 C CNN
F 3 "" H 8350 1100 50  0000 C CNN
	1    8350 1100
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P4
U 1 1 583851BA
P 8350 1650
F 0 "P4" H 8350 1750 50  0000 C CNN
F 1 "Taladro" V 8450 1650 50  0000 C CNN
F 2 "Mounting_Holes:MountingHole_2.7mm" H 8350 1650 50  0001 C CNN
F 3 "" H 8350 1650 50  0000 C CNN
	1    8350 1650
	1    0    0    -1  
$EndComp
NoConn ~ 8150 1100
NoConn ~ 8150 1650
$Comp
L CONN_01X01 P5
U 1 1 583852A4
P 8900 1400
F 0 "P5" H 8900 1500 50  0000 C CNN
F 1 "DIBUJO" V 9000 1400 50  0000 C CNN
F 2 "Symbols:KiCad-Logo_6mm_SilkScreen" H 8900 1400 50  0001 C CNN
F 3 "" H 8900 1400 50  0000 C CNN
	1    8900 1400
	1    0    0    -1  
$EndComp
NoConn ~ 8700 1400
Text Label 3700 3200 0    60   ~ 0
Detector
$Comp
L R R2
U 1 1 58D958EF
P 3600 2950
F 0 "R2" V 3680 2950 50  0000 C CNN
F 1 "1M" V 3600 2950 50  0000 C CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3530 2950 30  0001 C CNN
F 3 "" H 3600 2950 30  0000 C CNN
	1    3600 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 2750 3600 2750
Wire Wire Line
	3600 2750 3600 2800
Wire Wire Line
	3600 3100 3600 3200
Wire Wire Line
	3600 3200 3550 3200
Wire Wire Line
	4200 3750 4550 3750
Wire Wire Line
	4000 2700 4000 2950
Connection ~ 4000 2950
$Comp
L R R3
U 1 1 58D977D1
P 4200 3250
F 0 "R3" V 4280 3250 50  0000 C CNN
F 1 "1k" V 4200 3250 50  0000 C CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4130 3250 30  0001 C CNN
F 3 "" H 4200 3250 30  0000 C CNN
	1    4200 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 2700 4200 3100
Wire Wire Line
	4200 3400 4200 3750
Text Label 7300 3400 0    60   ~ 0
VccAttiny85
Wire Wire Line
	2850 3200 2850 3900
Connection ~ 2850 3900
$Comp
L LED_RGB-RESCUE-let_me_alone_box_3 D2
U 1 1 58D9997B
P 5800 7250
F 0 "D2" H 5800 7675 50  0000 C CNN
F 1 "LED_RGB" H 5800 7600 50  0000 C CNN
F 2 "LEDs:LED_WS2812-PLCC6" H 5800 7200 50  0001 C CNN
F 3 "" H 5800 7200 50  0000 C CNN
	1    5800 7250
	0    -1   -1   0   
$EndComp
Text Notes 9650 6350 0    60   ~ 0
it is actually grb
$Comp
L LED_RGB D3
U 1 1 58DC1E45
P 4900 7250
F 0 "D3" H 4900 7620 50  0000 C CNN
F 1 "LED_RGB" H 4900 6900 50  0000 C CNN
F 2 "LEDs:LED_WS2812-PLCC6" H 4900 7200 50  0001 C CNN
F 3 "" H 4900 7200 50  0001 C CNN
	1    4900 7250
	0    -1   -1   0   
$EndComp
$Comp
L R R4
U 1 1 58DC2087
P 5600 6700
F 0 "R4" V 5680 6700 50  0000 C CNN
F 1 "250" V 5600 6700 50  0000 C CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 5530 6700 50  0001 C CNN
F 3 "" H 5600 6700 50  0001 C CNN
	1    5600 6700
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 58DC20DC
P 6000 6800
F 0 "R6" V 6080 6800 50  0000 C CNN
F 1 "250" V 6000 6800 50  0000 C CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 5930 6800 50  0001 C CNN
F 3 "" H 6000 6800 50  0001 C CNN
	1    6000 6800
	1    0    0    -1  
$EndComp
$Comp
L BC547 Q1
U 1 1 58DC4D98
P 5500 6250
F 0 "Q1" H 5700 6325 50  0000 L CNN
F 1 "BC547" H 5700 6250 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Molded_Narrow" H 5700 6175 50  0001 L CIN
F 3 "" H 5500 6250 50  0001 L CNN
	1    5500 6250
	1    0    0    -1  
$EndComp
$Comp
L BC547 Q2
U 1 1 58DC5BCF
P 5700 5850
F 0 "Q2" H 5900 5925 50  0000 L CNN
F 1 "BC547" H 5900 5850 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Molded_Narrow" H 5900 5775 50  0001 L CIN
F 3 "" H 5700 5850 50  0001 L CNN
	1    5700 5850
	1    0    0    -1  
$EndComp
$Comp
L BC547 Q3
U 1 1 58DC5C3E
P 5900 5500
F 0 "Q3" H 6100 5575 50  0000 L CNN
F 1 "BC547" H 6100 5500 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Molded_Narrow" H 6100 5425 50  0001 L CIN
F 3 "" H 5900 5500 50  0001 L CNN
	1    5900 5500
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 58DC87AB
P 5800 6750
F 0 "R5" V 5880 6750 50  0000 C CNN
F 1 "250" V 5800 6750 50  0000 C CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 5730 6750 50  0001 C CNN
F 3 "" H 5800 6750 50  0001 C CNN
	1    5800 6750
	1    0    0    -1  
$EndComp
$Comp
L +6V #PWR03
U 1 1 58DCAA20
P 5000 2900
F 0 "#PWR03" H 5000 2750 50  0001 C CNN
F 1 "+6V" H 5000 3040 50  0000 C CNN
F 2 "" H 5000 2900 50  0001 C CNN
F 3 "" H 5000 2900 50  0001 C CNN
	1    5000 2900
	1    0    0    -1  
$EndComp
$Comp
L +6V #PWR04
U 1 1 58DCAE22
P 6550 5300
F 0 "#PWR04" H 6550 5150 50  0001 C CNN
F 1 "+6V" H 6550 5440 50  0000 C CNN
F 2 "" H 6550 5300 50  0001 C CNN
F 3 "" H 6550 5300 50  0001 C CNN
	1    6550 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 2950 7950 3400
Connection ~ 7950 3400
Wire Wire Line
	4700 7450 6400 7450
Connection ~ 5800 7450
Connection ~ 5600 7450
Connection ~ 5100 7450
Connection ~ 4900 7450
Wire Wire Line
	6000 6950 6000 7050
Wire Wire Line
	5100 7000 6200 7000
Wire Wire Line
	5100 7000 5100 7050
Connection ~ 6000 7000
Wire Wire Line
	5800 6900 5800 7050
Wire Wire Line
	4900 6950 6250 6950
Wire Wire Line
	4900 6950 4900 7050
Connection ~ 5800 6950
Wire Wire Line
	5600 6850 5600 7050
Wire Wire Line
	4700 6900 6400 6900
Wire Wire Line
	4700 6900 4700 7050
Connection ~ 5600 6900
Wire Wire Line
	5600 6450 5600 6550
Wire Wire Line
	5800 6050 5800 6600
Wire Wire Line
	6000 5700 6000 6650
Wire Wire Line
	6550 5650 5800 5650
Wire Wire Line
	6550 6050 5600 6050
Connection ~ 6550 5650
Wire Wire Line
	6550 5300 6550 6050
Wire Wire Line
	6550 5300 6000 5300
Wire Wire Line
	4700 5850 5500 5850
Wire Wire Line
	5300 6250 4850 6250
Wire Wire Line
	5700 5500 4850 5500
Text Label 4300 5850 0    60   ~ 0
Reset
Text Label 4850 6250 0    60   ~ 0
Sck
Text Label 4850 5500 0    60   ~ 0
Miso
$Comp
L CONN_01X04 J1
U 1 1 58DD8BF0
P 6600 7300
F 0 "J1" H 6600 7550 50  0000 C CNN
F 1 "LUCES" V 6700 7300 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x04_Pitch2.54mm" H 6600 7300 50  0001 C CNN
F 3 "" H 6600 7300 50  0001 C CNN
	1    6600 7300
	1    0    0    -1  
$EndComp
Connection ~ 6000 7450
Wire Wire Line
	6400 7350 6200 7350
Wire Wire Line
	6200 7350 6200 7000
Wire Wire Line
	6400 7250 6250 7250
Wire Wire Line
	6250 7250 6250 6950
Wire Wire Line
	6400 6900 6400 7150
Text Label 5400 7450 2    60   ~ 0
Gnd
Wire Wire Line
	5000 2900 5000 2950
Connection ~ 5000 2950
$Comp
L CONN_01X02 J2
U 1 1 58DCF62C
P 4650 5650
F 0 "J2" H 4650 5800 50  0000 C CNN
F 1 "RES-RED" V 4750 5650 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 4650 5650 50  0001 C CNN
F 3 "" H 4650 5650 50  0001 C CNN
	1    4650 5650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4600 5850 4300 5850
$EndSCHEMATC
