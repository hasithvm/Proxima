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
Sheet 5 8
Title ""
Date "25 nov 2014"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L WM8731 AC1
U 1 1 5468180C
P 5650 3600
F 0 "AC1" H 5650 3550 60  0000 C CNN
F 1 "WM8731" H 5650 3650 60  0000 C CNN
F 2 "~" H 5650 3650 60  0000 C CNN
F 3 "~" H 5650 3650 60  0000 C CNN
	1    5650 3600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR053
U 1 1 54681825
P 6800 5550
F 0 "#PWR053" H 6800 5550 30  0001 C CNN
F 1 "GND" H 6800 5480 30  0001 C CNN
F 2 "" H 6800 5550 60  0000 C CNN
F 3 "" H 6800 5550 60  0000 C CNN
	1    6800 5550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR054
U 1 1 54681A6E
P 4550 5050
F 0 "#PWR054" H 4550 5050 30  0001 C CNN
F 1 "GND" H 4550 4980 30  0001 C CNN
F 2 "" H 4550 5050 60  0000 C CNN
F 3 "" H 4550 5050 60  0000 C CNN
	1    4550 5050
	1    0    0    -1  
$EndComp
$Comp
L 3V3 #PWR055
U 1 1 54681A95
P 4550 1600
F 0 "#PWR055" H 4550 1700 40  0001 C CNN
F 1 "3V3" H 4550 1725 40  0000 C CNN
F 2 "" H 4550 1600 60  0000 C CNN
F 3 "" H 4550 1600 60  0000 C CNN
	1    4550 1600
	1    0    0    -1  
$EndComp
$Comp
L 3V3 #PWR056
U 1 1 54681AB8
P 7000 1600
F 0 "#PWR056" H 7000 1700 40  0001 C CNN
F 1 "3V3" H 7000 1725 40  0000 C CNN
F 2 "" H 7000 1600 60  0000 C CNN
F 3 "" H 7000 1600 60  0000 C CNN
	1    7000 1600
	1    0    0    -1  
$EndComp
$Comp
L 3V3 #PWR057
U 1 1 54681AD9
P 3750 4550
F 0 "#PWR057" H 3750 4650 40  0001 C CNN
F 1 "3V3" H 3750 4675 40  0000 C CNN
F 2 "" H 3750 4550 60  0000 C CNN
F 3 "" H 3750 4550 60  0000 C CNN
	1    3750 4550
	1    0    0    -1  
$EndComp
$Comp
L INDUCTOR L1
U 1 1 54681B0F
P 4150 4650
F 0 "L1" V 4100 4650 40  0000 C CNN
F 1 "10uH" V 4250 4650 40  0000 C CNN
F 2 "~" H 4150 4650 60  0000 C CNN
F 3 "~" H 4150 4650 60  0000 C CNN
	1    4150 4650
	0    -1   -1   0   
$EndComp
$Comp
L CP C22
U 1 1 54681BAE
P 7050 4700
F 0 "C22" H 7100 4800 40  0000 L CNN
F 1 "10uF" H 7100 4600 40  0000 L CNN
F 2 "~" H 7150 4550 30  0000 C CNN
F 3 "~" H 7050 4700 300 0000 C CNN
	1    7050 4700
	1    0    0    -1  
$EndComp
$Comp
L CRYSTAL X2
U 1 1 54681C53
P 7750 2850
F 0 "X2" H 7750 3000 60  0000 C CNN
F 1 "12.288MHz" H 7750 2700 60  0000 C CNN
F 2 "~" H 7750 2850 60  0000 C CNN
F 3 "~" H 7750 2850 60  0000 C CNN
	1    7750 2850
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR058
U 1 1 54681CB6
P 8750 2900
F 0 "#PWR058" H 8750 2900 30  0001 C CNN
F 1 "GND" H 8750 2830 30  0001 C CNN
F 2 "" H 8750 2900 60  0000 C CNN
F 3 "" H 8750 2900 60  0000 C CNN
	1    8750 2900
	1    0    0    -1  
$EndComp
$Comp
L C C25
U 1 1 54681CD4
P 8400 2600
F 0 "C25" H 8400 2700 40  0000 L CNN
F 1 "22pF" H 8406 2515 40  0000 L CNN
F 2 "~" H 8438 2450 30  0000 C CNN
F 3 "~" H 8400 2600 60  0000 C CNN
	1    8400 2600
	1    0    0    -1  
$EndComp
$Comp
L C C26
U 1 1 54681CFC
P 8400 3100
F 0 "C26" H 8400 3200 40  0000 L CNN
F 1 "22pF" H 8406 3015 40  0000 L CNN
F 2 "~" H 8438 2950 30  0000 C CNN
F 3 "~" H 8400 3100 60  0000 C CNN
	1    8400 3100
	1    0    0    -1  
$EndComp
Text GLabel 7050 3300 2    60   Input ~ 0
I2C_CL
Text GLabel 7050 3450 2    60   Input ~ 0
I2C_DA
$Comp
L R R21
U 1 1 546A770D
P 4350 3000
F 0 "R21" V 4430 3000 40  0000 C CNN
F 1 "27" V 4357 3001 40  0000 C CNN
F 2 "~" V 4280 3000 30  0000 C CNN
F 3 "~" H 4350 3000 30  0000 C CNN
	1    4350 3000
	0    -1   -1   0   
$EndComp
Text GLabel 1900 1100 0    60   Input ~ 0
SPI_SCK
$Comp
L R R22
U 1 1 546A776A
P 4350 3150
F 0 "R22" V 4430 3150 40  0000 C CNN
F 1 "1K" V 4357 3151 40  0000 C CNN
F 2 "~" V 4280 3150 30  0000 C CNN
F 3 "~" H 4350 3150 30  0000 C CNN
	1    4350 3150
	0    -1   -1   0   
$EndComp
$Comp
L R R23
U 1 1 546A7770
P 4350 3450
F 0 "R23" V 4430 3450 40  0000 C CNN
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
Text GLabel 1850 2200 0    60   Input ~ 0
AUD_DAC_CL
$Comp
L CP C16
U 1 1 546A78E2
P 4150 3900
F 0 "C16" H 4200 4000 40  0000 L CNN
F 1 "330uF" H 4200 3800 40  0000 L CNN
F 2 "~" H 4250 3750 30  0000 C CNN
F 3 "~" H 4150 3900 300 0000 C CNN
	1    4150 3900
	0    1    1    0   
$EndComp
$Comp
L CP C17
U 1 1 546A78FF
P 4150 4150
F 0 "C17" H 4200 4250 40  0000 L CNN
F 1 "330uF" H 4200 4050 40  0000 L CNN
F 2 "~" H 4250 4000 30  0000 C CNN
F 3 "~" H 4150 4150 300 0000 C CNN
	1    4150 4150
	0    1    1    0   
$EndComp
$Comp
L R R20
U 1 1 546A79D0
P 3500 4500
F 0 "R20" V 3580 4500 40  0000 C CNN
F 1 "47K" V 3507 4501 40  0000 C CNN
F 2 "~" V 3430 4500 30  0000 C CNN
F 3 "~" H 3500 4500 30  0000 C CNN
	1    3500 4500
	-1   0    0    1   
$EndComp
$Comp
L R R19
U 1 1 546A79D6
P 3350 4500
F 0 "R19" V 3430 4500 40  0000 C CNN
F 1 "47K" V 3357 4501 40  0000 C CNN
F 2 "~" V 3280 4500 30  0000 C CNN
F 3 "~" H 3350 4500 30  0000 C CNN
	1    3350 4500
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR059
U 1 1 546A7A54
P 3500 4950
F 0 "#PWR059" H 3500 4950 30  0001 C CNN
F 1 "GND" H 3500 4880 30  0001 C CNN
F 2 "" H 3500 4950 60  0000 C CNN
F 3 "" H 3500 4950 60  0000 C CNN
	1    3500 4950
	1    0    0    -1  
$EndComp
NoConn ~ 4750 2850
NoConn ~ 6550 3900
NoConn ~ 6550 4050
$Comp
L R R24
U 1 1 546A7AD0
P 7150 4200
F 0 "R24" V 7230 4200 40  0000 C CNN
F 1 "330" V 7157 4201 40  0000 C CNN
F 2 "~" V 7080 4200 30  0000 C CNN
F 3 "~" H 7150 4200 30  0000 C CNN
	1    7150 4200
	0    -1   -1   0   
$EndComp
$Comp
L C C24
U 1 1 546A7AD6
P 7800 4200
F 0 "C24" H 7800 4300 40  0000 L CNN
F 1 "1nF" H 7806 4115 40  0000 L CNN
F 2 "~" H 7838 4050 30  0000 C CNN
F 3 "~" H 7800 4200 60  0000 C CNN
	1    7800 4200
	0    -1   -1   0   
$EndComp
$Comp
L R R26
U 1 1 546A7B29
P 8150 4650
F 0 "R26" V 8230 4650 40  0000 C CNN
F 1 "47K" V 8157 4651 40  0000 C CNN
F 2 "~" V 8080 4650 30  0000 C CNN
F 3 "~" H 8150 4650 30  0000 C CNN
	1    8150 4650
	-1   0    0    1   
$EndComp
$Comp
L R R25
U 1 1 546A7B34
P 7700 4650
F 0 "R25" V 7780 4650 40  0000 C CNN
F 1 "680" V 7707 4651 40  0000 C CNN
F 2 "~" V 7630 4650 30  0000 C CNN
F 3 "~" H 7700 4650 30  0000 C CNN
	1    7700 4650
	-1   0    0    1   
$EndComp
$Comp
L C C23
U 1 1 546A7C11
P 7700 5200
F 0 "C23" H 7700 5300 40  0000 L CNN
F 1 "1nF" H 7706 5115 40  0000 L CNN
F 2 "~" H 7738 5050 30  0000 C CNN
F 3 "~" H 7700 5200 60  0000 C CNN
	1    7700 5200
	-1   0    0    1   
$EndComp
$Comp
L 74LS125 U2
U 1 1 546AB3AA
P 2650 1100
F 0 "U2" H 2650 1200 50  0000 L BNN
F 1 "74ALVC125" H 2700 950 40  0000 L TNN
F 2 "~" H 2650 1100 60  0000 C CNN
F 3 "~" H 2650 1100 60  0000 C CNN
	1    2650 1100
	1    0    0    -1  
$EndComp
$Comp
L 74LS125 U2
U 2 1 546AB3B7
P 2650 1650
F 0 "U2" H 2650 1750 50  0000 L BNN
F 1 "74ALVC125" H 2700 1500 40  0000 L TNN
F 2 "~" H 2650 1650 60  0000 C CNN
F 3 "~" H 2650 1650 60  0000 C CNN
	2    2650 1650
	1    0    0    -1  
$EndComp
$Comp
L 74LS125 U2
U 3 1 546AB3BD
P 2650 2200
F 0 "U2" H 2650 2300 50  0000 L BNN
F 1 "74ALVC125" H 2700 2050 40  0000 L TNN
F 2 "~" H 2650 2200 60  0000 C CNN
F 3 "~" H 2650 2200 60  0000 C CNN
	3    2650 2200
	1    0    0    -1  
$EndComp
$Comp
L 74LS125 U2
U 4 1 546AB3C3
P 2650 2750
F 0 "U2" H 2650 2850 50  0000 L BNN
F 1 "74ALVC125" H 2700 2600 40  0000 L TNN
F 2 "~" H 2650 2750 60  0000 C CNN
F 3 "~" H 2650 2750 60  0000 C CNN
	4    2650 2750
	-1   0    0    -1  
$EndComp
Text GLabel 1850 3050 0    60   Input ~ 0
SPI_CS4
NoConn ~ 4750 4500
NoConn ~ 4750 4350
$Comp
L CMA-4544PF-W MIC1
U 1 1 546AC917
P 8700 4800
F 0 "MIC1" H 8700 4550 60  0000 C CNN
F 1 "CMA-4544PF-W" H 8650 5050 60  0001 C CNN
F 2 "" H 8650 5050 60  0000 C CNN
F 3 "" H 8650 5050 60  0000 C CNN
	1    8700 4800
	0    -1   -1   0   
$EndComp
$Comp
L C C20
U 1 1 547292FF
P 6300 2050
F 0 "C20" H 6300 2150 40  0000 L CNN
F 1 "0.1uF" H 6306 1965 40  0000 L CNN
F 2 "~" H 6338 1900 30  0000 C CNN
F 3 "~" H 6300 2050 60  0000 C CNN
	1    6300 2050
	1    0    0    -1  
$EndComp
$Comp
L CP1 C21
U 1 1 5472930E
P 6600 2050
F 0 "C21" H 6650 2150 50  0000 L CNN
F 1 "10uF" H 6650 1950 50  0000 L CNN
F 2 "~" H 6600 2050 60  0000 C CNN
F 3 "~" H 6600 2050 60  0000 C CNN
	1    6600 2050
	1    0    0    -1  
$EndComp
$Comp
L C C18
U 1 1 5472976A
P 5350 2050
F 0 "C18" H 5350 2150 40  0000 L CNN
F 1 "0.1uF" H 5356 1965 40  0000 L CNN
F 2 "~" H 5388 1900 30  0000 C CNN
F 3 "~" H 5350 2050 60  0000 C CNN
	1    5350 2050
	1    0    0    -1  
$EndComp
$Comp
L CP1 C19
U 1 1 54729770
P 5650 2050
F 0 "C19" H 5700 2150 50  0000 L CNN
F 1 "10uF" H 5700 1950 50  0000 L CNN
F 2 "~" H 5650 2050 60  0000 C CNN
F 3 "~" H 5650 2050 60  0000 C CNN
	1    5650 2050
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
Wire Wire Line
	4550 5050 4550 4200
Wire Wire Line
	4550 4200 4750 4200
Wire Wire Line
	4550 2700 4750 2700
Wire Wire Line
	7000 1600 7000 2850
Wire Wire Line
	7000 2850 6550 2850
Wire Wire Line
	3750 4550 3750 4650
Wire Wire Line
	3750 4650 3850 4650
Wire Wire Line
	4450 4650 4750 4650
Wire Wire Line
	6550 4500 7050 4500
Wire Wire Line
	6800 4900 7050 4900
Connection ~ 6800 4900
Wire Wire Line
	6550 3150 8000 3150
Wire Wire Line
	6550 3000 7300 3000
Wire Wire Line
	7300 3000 7300 2550
Wire Wire Line
	7300 2550 8000 2550
Wire Wire Line
	8000 2550 8000 2400
Wire Wire Line
	8000 2400 8400 2400
Connection ~ 7750 2550
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
Wire Wire Line
	7050 3300 6550 3300
Wire Wire Line
	6550 3450 7050 3450
Wire Wire Line
	4600 3000 4750 3000
Wire Wire Line
	3700 3000 4100 3000
Wire Wire Line
	3550 3150 4100 3150
Wire Wire Line
	4600 3150 4750 3150
Wire Wire Line
	3250 3450 4100 3450
Wire Wire Line
	4600 3450 4750 3450
Wire Wire Line
	3400 3300 4750 3300
Wire Wire Line
	4750 3750 4650 3750
Wire Wire Line
	4650 3750 4650 4650
Connection ~ 4650 4650
Wire Wire Line
	4750 3900 4350 3900
Wire Wire Line
	4750 4050 4450 4050
Wire Wire Line
	4450 4050 4450 4150
Wire Wire Line
	4450 4150 4350 4150
Wire Wire Line
	2850 3900 3950 3900
Wire Wire Line
	3100 4150 3950 4150
Wire Wire Line
	3350 4250 3350 4150
Connection ~ 3350 4150
Wire Wire Line
	3500 4250 3500 3900
Connection ~ 3500 3900
Wire Wire Line
	3500 4750 3500 4950
Wire Wire Line
	3350 4750 3350 4850
Wire Wire Line
	3000 4850 3500 4850
Connection ~ 3500 4850
Wire Wire Line
	7400 4200 7600 4200
Wire Wire Line
	8000 4200 8750 4200
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
Wire Wire Line
	7700 4900 7700 5000
Wire Wire Line
	7900 4950 7700 4950
Connection ~ 7700 4950
Wire Wire Line
	7700 5400 7700 5450
Wire Wire Line
	8750 5450 6800 5450
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
Connection ~ 2000 3050
Connection ~ 8150 4200
Connection ~ 8150 5450
Wire Wire Line
	8750 4200 8750 4500
Wire Wire Line
	8750 5100 8750 5450
Wire Wire Line
	6300 1850 6600 1850
Connection ~ 6700 2700
Wire Wire Line
	6700 2350 6700 2700
Wire Wire Line
	5350 2350 6700 2350
Wire Wire Line
	6600 2350 6600 2250
Connection ~ 6600 2350
Wire Wire Line
	6450 1700 7000 1700
Connection ~ 7000 1700
Wire Wire Line
	5650 2350 5650 2250
Connection ~ 5650 2350
Wire Wire Line
	5350 1850 5650 1850
Connection ~ 5500 1850
Wire Wire Line
	5350 2250 5350 2350
Wire Wire Line
	6300 2250 6300 2350
Connection ~ 6300 2350
Wire Wire Line
	6450 1850 6450 1700
Connection ~ 6450 1850
Wire Wire Line
	5500 1850 5500 1700
Wire Wire Line
	5500 1700 4550 1700
Connection ~ 4550 1700
Wire Wire Line
	4550 1600 4550 2700
$Comp
L HP_JACK HP1
U 1 1 5472A284
P 2500 3900
F 0 "HP1" H 2500 4100 60  0000 C CNN
F 1 "HP_JACK" H 2500 3700 60  0000 C CNN
F 2 "" H 2500 4100 60  0000 C CNN
F 3 "" H 2500 4100 60  0000 C CNN
	1    2500 3900
	-1   0    0    1   
$EndComp
Wire Wire Line
	3100 4150 3100 4050
Wire Wire Line
	3100 4050 2850 4050
Wire Wire Line
	2850 3800 3000 3800
Wire Wire Line
	3000 3800 3000 4850
Connection ~ 3350 4850
$EndSCHEMATC
