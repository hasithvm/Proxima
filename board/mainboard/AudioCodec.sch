EESchema Schematic File Version 2
LIBS:mainboard
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
LIBS:special
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
LIBS:mainboard-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 5
Title ""
Date "18 nov 2014"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L WM8731 AC?
U 1 1 5468180C
P 5650 3600
F 0 "AC?" H 5650 3550 60  0000 C CNN
F 1 "WM8731" H 5650 3650 60  0000 C CNN
F 2 "~" H 5650 3650 60  0000 C CNN
F 3 "~" H 5650 3650 60  0000 C CNN
	1    5650 3600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 54681825
P 6800 5550
F 0 "#PWR?" H 6800 5550 30  0001 C CNN
F 1 "GND" H 6800 5480 30  0001 C CNN
F 2 "" H 6800 5550 60  0000 C CNN
F 3 "" H 6800 5550 60  0000 C CNN
	1    6800 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 2700 6800 2700
Wire Wire Line
	6800 4650 6550 4650
Connection ~ 6800 4650
Wire Wire Line
	6550 3600 6800 3600
Connection ~ 6800 3600
Wire Wire Line
	6800 3750 6550 3750
Connection ~ 6800 3750
$Comp
L GND #PWR?
U 1 1 54681A6E
P 4550 5050
F 0 "#PWR?" H 4550 5050 30  0001 C CNN
F 1 "GND" H 4550 4980 30  0001 C CNN
F 2 "" H 4550 5050 60  0000 C CNN
F 3 "" H 4550 5050 60  0000 C CNN
	1    4550 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 5050 4550 4200
Wire Wire Line
	4550 4200 4750 4200
$Comp
L 3V3 #PWR?
U 1 1 54681A95
P 4550 2450
F 0 "#PWR?" H 4550 2550 40  0001 C CNN
F 1 "3V3" H 4550 2575 40  0000 C CNN
F 2 "" H 4550 2450 60  0000 C CNN
F 3 "" H 4550 2450 60  0000 C CNN
	1    4550 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 2450 4550 2700
Wire Wire Line
	4550 2700 4750 2700
$Comp
L 3V3 #PWR?
U 1 1 54681AB8
P 7000 2450
F 0 "#PWR?" H 7000 2550 40  0001 C CNN
F 1 "3V3" H 7000 2575 40  0000 C CNN
F 2 "" H 7000 2450 60  0000 C CNN
F 3 "" H 7000 2450 60  0000 C CNN
	1    7000 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 2450 7000 2850
Wire Wire Line
	7000 2850 6550 2850
$Comp
L 3V3 #PWR?
U 1 1 54681AD9
P 3750 4550
F 0 "#PWR?" H 3750 4650 40  0001 C CNN
F 1 "3V3" H 3750 4675 40  0000 C CNN
F 2 "" H 3750 4550 60  0000 C CNN
F 3 "" H 3750 4550 60  0000 C CNN
	1    3750 4550
	1    0    0    -1  
$EndComp
$Comp
L INDUCTOR L?
U 1 1 54681B0F
P 4150 4650
F 0 "L?" V 4100 4650 40  0000 C CNN
F 1 "10uH" V 4250 4650 40  0000 C CNN
F 2 "~" H 4150 4650 60  0000 C CNN
F 3 "~" H 4150 4650 60  0000 C CNN
	1    4150 4650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3750 4550 3750 4650
Wire Wire Line
	3750 4650 3850 4650
Wire Wire Line
	4450 4650 4750 4650
$Comp
L CP C?
U 1 1 54681BAE
P 7050 4700
F 0 "C?" H 7100 4800 40  0000 L CNN
F 1 "10uF" H 7100 4600 40  0000 L CNN
F 2 "~" H 7150 4550 30  0000 C CNN
F 3 "~" H 7050 4700 300 0000 C CNN
	1    7050 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 4500 7050 4500
Wire Wire Line
	6800 4900 7050 4900
Connection ~ 6800 4900
$Comp
L CRYSTAL X?
U 1 1 54681C53
P 7750 2850
F 0 "X?" H 7750 3000 60  0000 C CNN
F 1 "12.288MHz" H 7750 2700 60  0000 C CNN
F 2 "~" H 7750 2850 60  0000 C CNN
F 3 "~" H 7750 2850 60  0000 C CNN
	1    7750 2850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6550 3150 8000 3150
Wire Wire Line
	6550 3000 7300 3000
Wire Wire Line
	7300 3000 7300 2550
Wire Wire Line
	7300 2550 8000 2550
$Comp
L GND #PWR?
U 1 1 54681CB6
P 8750 2900
F 0 "#PWR?" H 8750 2900 30  0001 C CNN
F 1 "GND" H 8750 2830 30  0001 C CNN
F 2 "" H 8750 2900 60  0000 C CNN
F 3 "" H 8750 2900 60  0000 C CNN
	1    8750 2900
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 54681CD4
P 8400 2600
F 0 "C?" H 8400 2700 40  0000 L CNN
F 1 "22pF" H 8406 2515 40  0000 L CNN
F 2 "~" H 8438 2450 30  0000 C CNN
F 3 "~" H 8400 2600 60  0000 C CNN
	1    8400 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 2550 8000 2400
Wire Wire Line
	8000 2400 8400 2400
Connection ~ 7750 2550
$Comp
L C C?
U 1 1 54681CFC
P 8400 3100
F 0 "C?" H 8400 3200 40  0000 L CNN
F 1 "22pF" H 8406 3015 40  0000 L CNN
F 2 "~" H 8438 2950 30  0000 C CNN
F 3 "~" H 8400 3100 60  0000 C CNN
	1    8400 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 3150 8000 3300
Wire Wire Line
	8000 3300 8400 3300
Connection ~ 7750 3150
Wire Wire Line
	8400 2900 8400 2800
Wire Wire Line
	8400 2850 8750 2850
Wire Wire Line
	8750 2850 8750 2900
Connection ~ 8400 2850
Text GLabel 7050 3300 2    60   Input ~ 0
I2C_CL
Wire Wire Line
	7050 3300 6550 3300
Text GLabel 7050 3450 2    60   Input ~ 0
I2C_DA
Wire Wire Line
	6550 3450 7050 3450
$Comp
L R R?
U 1 1 546A770D
P 4350 3000
F 0 "R?" V 4430 3000 40  0000 C CNN
F 1 "27" V 4357 3001 40  0000 C CNN
F 2 "~" V 4280 3000 30  0000 C CNN
F 3 "~" H 4350 3000 30  0000 C CNN
	1    4350 3000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4600 3000 4750 3000
Text GLabel 1900 1100 0    60   Input ~ 0
SPI_SCK
Wire Wire Line
	3700 3000 4100 3000
$Comp
L R R?
U 1 1 546A776A
P 4350 3150
F 0 "R?" V 4430 3150 40  0000 C CNN
F 1 "1K" V 4357 3151 40  0000 C CNN
F 2 "~" V 4280 3150 30  0000 C CNN
F 3 "~" H 4350 3150 30  0000 C CNN
	1    4350 3150
	0    -1   -1   0   
$EndComp
$Comp
L R R?
U 1 1 546A7770
P 4350 3450
F 0 "R?" V 4430 3450 40  0000 C CNN
F 1 "27" V 4357 3451 40  0000 C CNN
F 2 "~" V 4280 3450 30  0000 C CNN
F 3 "~" H 4350 3450 30  0000 C CNN
	1    4350 3450
	0    -1   -1   0   
$EndComp
Text GLabel 1850 2750 0    60   Input ~ 0
SPI_MISO
Text GLabel 1850 1650 0    60   Input ~ 0
SPI_MOSI
Wire Wire Line
	3550 3150 4100 3150
Wire Wire Line
	4600 3150 4750 3150
Wire Wire Line
	3250 3450 4100 3450
Wire Wire Line
	4600 3450 4750 3450
Text GLabel 1850 2200 0    60   Input ~ 0
AUD_DAC_CL
Wire Wire Line
	3400 3300 4750 3300
Wire Wire Line
	4750 3750 4650 3750
Wire Wire Line
	4650 3750 4650 4650
Connection ~ 4650 4650
Text GLabel 3250 3900 0    60   Input ~ 0
AUD_LEFT_OUT
Text GLabel 3250 4150 0    60   Input ~ 0
AUD_RIGHT_OUT
$Comp
L CP C?
U 1 1 546A78E2
P 4150 3900
F 0 "C?" H 4200 4000 40  0000 L CNN
F 1 "330uF" H 4200 3800 40  0000 L CNN
F 2 "~" H 4250 3750 30  0000 C CNN
F 3 "~" H 4150 3900 300 0000 C CNN
	1    4150 3900
	0    1    1    0   
$EndComp
$Comp
L CP C?
U 1 1 546A78FF
P 4150 4150
F 0 "C?" H 4200 4250 40  0000 L CNN
F 1 "330uF" H 4200 4050 40  0000 L CNN
F 2 "~" H 4250 4000 30  0000 C CNN
F 3 "~" H 4150 4150 300 0000 C CNN
	1    4150 4150
	0    1    1    0   
$EndComp
Wire Wire Line
	4750 3900 4350 3900
Wire Wire Line
	4750 4050 4450 4050
Wire Wire Line
	4450 4050 4450 4150
Wire Wire Line
	4450 4150 4350 4150
Wire Wire Line
	3950 3900 3250 3900
Wire Wire Line
	3950 4150 3250 4150
$Comp
L R R?
U 1 1 546A79D0
P 3500 4500
F 0 "R?" V 3580 4500 40  0000 C CNN
F 1 "47K" V 3507 4501 40  0000 C CNN
F 2 "~" V 3430 4500 30  0000 C CNN
F 3 "~" H 3500 4500 30  0000 C CNN
	1    3500 4500
	-1   0    0    1   
$EndComp
$Comp
L R R?
U 1 1 546A79D6
P 3350 4500
F 0 "R?" V 3430 4500 40  0000 C CNN
F 1 "47K" V 3357 4501 40  0000 C CNN
F 2 "~" V 3280 4500 30  0000 C CNN
F 3 "~" H 3350 4500 30  0000 C CNN
	1    3350 4500
	-1   0    0    1   
$EndComp
Wire Wire Line
	3350 4250 3350 4150
Connection ~ 3350 4150
Wire Wire Line
	3500 4250 3500 3900
Connection ~ 3500 3900
$Comp
L GND #PWR?
U 1 1 546A7A54
P 3500 4950
F 0 "#PWR?" H 3500 4950 30  0001 C CNN
F 1 "GND" H 3500 4880 30  0001 C CNN
F 2 "" H 3500 4950 60  0000 C CNN
F 3 "" H 3500 4950 60  0000 C CNN
	1    3500 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 4750 3500 4950
Wire Wire Line
	3350 4750 3350 4850
Wire Wire Line
	3350 4850 3500 4850
Connection ~ 3500 4850
NoConn ~ 4750 2850
NoConn ~ 6550 3900
NoConn ~ 6550 4050
$Comp
L R R?
U 1 1 546A7AD0
P 7150 4200
F 0 "R?" V 7230 4200 40  0000 C CNN
F 1 "330" V 7157 4201 40  0000 C CNN
F 2 "~" V 7080 4200 30  0000 C CNN
F 3 "~" H 7150 4200 30  0000 C CNN
	1    7150 4200
	0    -1   -1   0   
$EndComp
$Comp
L C C?
U 1 1 546A7AD6
P 7800 4200
F 0 "C?" H 7800 4300 40  0000 L CNN
F 1 "1nF" H 7806 4115 40  0000 L CNN
F 2 "~" H 7838 4050 30  0000 C CNN
F 3 "~" H 7800 4200 60  0000 C CNN
	1    7800 4200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7400 4200 7600 4200
$Comp
L R R?
U 1 1 546A7B29
P 8150 4650
F 0 "R?" V 8230 4650 40  0000 C CNN
F 1 "47K" V 8157 4651 40  0000 C CNN
F 2 "~" V 8080 4650 30  0000 C CNN
F 3 "~" H 8150 4650 30  0000 C CNN
	1    8150 4650
	-1   0    0    1   
$EndComp
$Comp
L R R?
U 1 1 546A7B34
P 7700 4650
F 0 "R?" V 7780 4650 40  0000 C CNN
F 1 "680" V 7707 4651 40  0000 C CNN
F 2 "~" V 7630 4650 30  0000 C CNN
F 3 "~" H 7700 4650 30  0000 C CNN
	1    7700 4650
	-1   0    0    1   
$EndComp
Wire Wire Line
	8000 4200 8700 4200
Wire Wire Line
	8150 4200 8150 4400
Wire Wire Line
	7900 4300 7900 4950
Wire Wire Line
	7900 4300 8150 4300
Connection ~ 8150 4300
Wire Wire Line
	7700 4400 7700 4350
Wire Wire Line
	7700 4350 6550 4350
$Comp
L C C?
U 1 1 546A7C11
P 7700 5200
F 0 "C?" H 7700 5300 40  0000 L CNN
F 1 "1nF" H 7706 5115 40  0000 L CNN
F 2 "~" H 7738 5050 30  0000 C CNN
F 3 "~" H 7700 5200 60  0000 C CNN
	1    7700 5200
	-1   0    0    1   
$EndComp
Wire Wire Line
	7700 4900 7700 5000
Wire Wire Line
	7900 4950 7700 4950
Connection ~ 7700 4950
Wire Wire Line
	7700 5400 7700 5450
Wire Wire Line
	6800 5450 8650 5450
Wire Wire Line
	8150 5450 8150 4900
Wire Wire Line
	6800 2700 6800 5550
Connection ~ 6800 5450
Connection ~ 7700 5450
Wire Wire Line
	6900 4200 6550 4200
Wire Wire Line
	4750 3600 4650 3600
Wire Wire Line
	4650 3600 4650 3300
Connection ~ 4650 3300
Wire Wire Line
	2650 1400 2000 1400
Wire Wire Line
	2000 1400 2000 3050
Wire Wire Line
	2000 1950 2650 1950
Wire Wire Line
	2000 2500 2650 2500
Connection ~ 2000 1950
Wire Wire Line
	1850 3050 2650 3050
Connection ~ 2000 2500
Wire Wire Line
	1900 1100 2200 1100
Wire Wire Line
	1850 1650 2200 1650
Wire Wire Line
	1850 2200 2200 2200
Wire Wire Line
	2200 2750 1850 2750
Wire Wire Line
	3100 2750 3250 2750
Wire Wire Line
	3250 2750 3250 3450
Wire Wire Line
	3400 3300 3400 2200
Wire Wire Line
	3400 2200 3100 2200
Wire Wire Line
	3550 3150 3550 1650
Wire Wire Line
	3550 1650 3100 1650
Wire Wire Line
	3700 3000 3700 1100
Wire Wire Line
	3700 1100 3100 1100
$Comp
L 74LS125 U?
U 1 1 546AB3AA
P 2650 1100
F 0 "U?" H 2650 1200 50  0000 L BNN
F 1 "74LS125" H 2700 950 40  0000 L TNN
F 2 "~" H 2650 1100 60  0000 C CNN
F 3 "~" H 2650 1100 60  0000 C CNN
	1    2650 1100
	1    0    0    -1  
$EndComp
$Comp
L 74LS125 U?
U 1 1 546AB3B7
P 2650 1650
F 0 "U?" H 2650 1750 50  0000 L BNN
F 1 "74LS125" H 2700 1500 40  0000 L TNN
F 2 "~" H 2650 1650 60  0000 C CNN
F 3 "~" H 2650 1650 60  0000 C CNN
	1    2650 1650
	1    0    0    -1  
$EndComp
$Comp
L 74LS125 U?
U 1 1 546AB3BD
P 2650 2200
F 0 "U?" H 2650 2300 50  0000 L BNN
F 1 "74LS125" H 2700 2050 40  0000 L TNN
F 2 "~" H 2650 2200 60  0000 C CNN
F 3 "~" H 2650 2200 60  0000 C CNN
	1    2650 2200
	1    0    0    -1  
$EndComp
$Comp
L 74LS125 U?
U 1 1 546AB3C3
P 2650 2750
F 0 "U?" H 2650 2850 50  0000 L BNN
F 1 "74LS125" H 2700 2600 40  0000 L TNN
F 2 "~" H 2650 2750 60  0000 C CNN
F 3 "~" H 2650 2750 60  0000 C CNN
	1    2650 2750
	-1   0    0    -1  
$EndComp
Text GLabel 1850 3050 0    60   Input ~ 0
SPI_CS4
Connection ~ 2000 3050
Text GLabel 8700 4200 2    60   Input ~ 0
MIC_IN
Text GLabel 8650 5450 2    60   Input ~ 0
MIC_GND
Connection ~ 8150 4200
Connection ~ 8150 5450
$EndSCHEMATC
