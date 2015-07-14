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
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 9
Title ""
Date "3 mar 2015"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L SDCARD_PUSH SD1
U 1 1 544877FA
P 3450 2650
F 0 "SD1" H 3450 2550 60  0000 C CNN
F 1 "SDCARD_PUSH" H 3450 2750 60  0000 C CNN
F 2 "~" H 3450 2750 60  0000 C CNN
F 3 "~" H 3450 2750 60  0000 C CNN
	1    3450 2650
	1    0    0    -1  
$EndComp
$Comp
L R R15
U 1 1 54487C3C
P 5700 3550
F 0 "R15" V 5780 3550 40  0000 C CNN
F 1 "47k" V 5707 3551 40  0000 C CNN
F 2 "~" V 5630 3550 30  0000 C CNN
F 3 "~" H 5700 3550 30  0000 C CNN
	1    5700 3550
	1    0    0    -1  
$EndComp
$Comp
L R R14
U 1 1 54487C57
P 5550 3550
F 0 "R14" V 5630 3550 40  0000 C CNN
F 1 "47k" V 5557 3551 40  0000 C CNN
F 2 "~" V 5480 3550 30  0000 C CNN
F 3 "~" H 5550 3550 30  0000 C CNN
	1    5550 3550
	1    0    0    -1  
$EndComp
$Comp
L 3V3 #PWR25
U 1 1 54487C67
P 2450 1200
F 0 "#PWR25" H 2450 1300 40  0001 C CNN
F 1 "3V3" H 2450 1325 40  0000 C CNN
F 2 "" H 2450 1200 60  0000 C CNN
F 3 "" H 2450 1200 60  0000 C CNN
	1    2450 1200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR26
U 1 1 54487D03
P 2450 4150
F 0 "#PWR26" H 2450 4150 30  0001 C CNN
F 1 "GND" H 2450 4080 30  0001 C CNN
F 2 "" H 2450 4150 60  0000 C CNN
F 3 "" H 2450 4150 60  0000 C CNN
	1    2450 4150
	1    0    0    -1  
$EndComp
Text GLabel 1650 2200 0    60   Input ~ 0
SPI_CS1
Text GLabel 1650 2650 0    60   Input ~ 0
SPI_SCK
Text GLabel 1650 2350 0    60   Input ~ 0
SPI_MOSI
Text GLabel 1650 2950 0    60   Input ~ 0
SPI_MISO
Text GLabel 1650 3400 0    60   Input ~ 0
SD_SWITCH
$Comp
L R R12
U 1 1 544883FE
P 2250 3750
F 0 "R12" V 2330 3750 40  0000 C CNN
F 1 "10k" V 2257 3751 40  0000 C CNN
F 2 "~" V 2180 3750 30  0000 C CNN
F 3 "~" H 2250 3750 30  0000 C CNN
	1    2250 3750
	1    0    0    -1  
$EndComp
Text GLabel 7400 1900 0    60   Input ~ 0
SPI_CS2
Text GLabel 7400 1750 0    60   Input ~ 0
SPI_SCK
Text GLabel 7400 1600 0    60   Input ~ 0
SPI_MOSI
$Comp
L CONN_01X02 P5
U 1 1 54555DA8
P 9750 1850
F 0 "P5" V 9700 1850 40  0000 C CNN
F 1 "DAC" V 9800 1850 40  0000 C CNN
F 2 "" H 9750 1850 60  0000 C CNN
F 3 "" H 9750 1850 60  0000 C CNN
	1    9750 1850
	1    0    0    -1  
$EndComp
$Comp
L 3V3 #PWR31
U 1 1 54555E65
P 8600 1100
F 0 "#PWR31" H 8600 1200 40  0001 C CNN
F 1 "3V3" H 8600 1225 40  0000 C CNN
F 2 "" H 8600 1100 60  0000 C CNN
F 3 "" H 8600 1100 60  0000 C CNN
	1    8600 1100
	1    0    0    -1  
$EndComp
Text GLabel 7400 2050 0    60   Input ~ 0
RST
Text Notes 3200 1700 0    60   ~ 0
SD Card
Text Notes 8150 1350 0    60   ~ 0
DAC
$Comp
L MCP4902 DAC1
U 1 1 5467E291
P 8700 1850
F 0 "DAC1" H 8850 2250 40  0000 L BNN
F 1 "MCP4902" H 8850 2200 40  0000 L BNN
F 2 "SO14" H 8700 1850 30  0000 C CIN
F 3 "" H 8700 1850 60  0000 C CNN
	1    8700 1850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR27
U 1 1 54726C24
P 5700 4950
F 0 "#PWR27" H 5700 4950 30  0001 C CNN
F 1 "GND" H 5700 4880 30  0001 C CNN
F 2 "" H 5700 4950 60  0000 C CNN
F 3 "" H 5700 4950 60  0000 C CNN
	1    5700 4950
	1    0    0    -1  
$EndComp
$Comp
L 3V3 #PWR28
U 1 1 54726D33
P 5800 3100
F 0 "#PWR28" H 5800 3200 40  0001 C CNN
F 1 "3V3" H 5800 3225 40  0000 C CNN
F 2 "" H 5800 3100 60  0000 C CNN
F 3 "" H 5800 3100 60  0000 C CNN
	1    5800 3100
	1    0    0    -1  
$EndComp
Text GLabel 5300 4000 0    60   Input ~ 0
SPI_SCK
Text GLabel 5300 4150 0    60   Input ~ 0
SPI_MOSI
Text GLabel 5300 4300 0    60   Input ~ 0
SPI_MISO
Text GLabel 5300 4450 0    60   Input ~ 0
SPI_CS6
Text GLabel 5300 4600 0    60   Input ~ 0
SPI_CS7
Wire Wire Line
	5550 3300 5550 3200
Wire Wire Line
	5700 3300 5700 3200
Connection ~ 5550 4300
Wire Wire Line
	5550 3800 5550 4300
Connection ~ 5700 4200
Wire Wire Line
	5700 3800 5700 4200
Wire Wire Line
	5450 4100 6000 4100
Wire Wire Line
	5400 4200 6000 4200
Wire Wire Line
	5300 4300 6000 4300
Wire Wire Line
	5700 4700 5700 4950
Wire Wire Line
	5700 4700 6000 4700
Wire Wire Line
	7400 2050 8150 2050
Wire Wire Line
	9950 2350 8750 2350
Wire Wire Line
	7550 1650 8150 1650
Wire Wire Line
	7550 1600 7550 1650
Wire Wire Line
	7400 1600 7550 1600
Wire Wire Line
	7550 1850 8150 1850
Wire Wire Line
	7550 1900 7550 1850
Wire Wire Line
	7400 1900 7550 1900
Wire Wire Line
	8050 1950 8050 2400
Wire Wire Line
	8150 1950 8050 1950
Wire Wire Line
	8600 2300 8600 2900
Wire Wire Line
	9950 1200 9950 2350
Wire Wire Line
	9300 1950 9400 1950
Wire Wire Line
	9300 1750 9400 1750
Connection ~ 8750 1200
Connection ~ 8600 1200
Wire Wire Line
	8600 1400 8600 1100
Wire Wire Line
	8750 1200 8750 1400
Wire Wire Line
	8600 1200 9950 1200
Wire Wire Line
	8750 2350 8750 2300
Wire Wire Line
	9300 1700 9300 1750
Wire Wire Line
	9250 1700 9300 1700
Wire Wire Line
	9300 2000 9300 1950
Wire Wire Line
	9250 2000 9300 2000
Wire Wire Line
	8150 1750 7400 1750
Connection ~ 2250 3400
Wire Wire Line
	1650 3400 2550 3400
Wire Wire Line
	2250 3500 2250 3400
Connection ~ 2450 4000
Wire Wire Line
	2250 4000 2450 4000
Wire Wire Line
	2450 2800 2450 4150
Wire Wire Line
	2450 2800 2550 2800
Wire Wire Line
	5550 3200 5800 3200
Connection ~ 5700 3200
Connection ~ 5800 3200
$Comp
L R R13
U 1 1 54487C51
P 2450 1700
F 0 "R13" V 2530 1700 40  0000 C CNN
F 1 "47k" V 2457 1701 40  0000 C CNN
F 2 "~" V 2380 1700 30  0000 C CNN
F 3 "~" H 2450 1700 30  0000 C CNN
	1    2450 1700
	1    0    0    -1  
$EndComp
$Comp
L R R11
U 1 1 54487C5D
P 2150 1700
F 0 "R11" V 2230 1700 40  0000 C CNN
F 1 "47k" V 2157 1701 40  0000 C CNN
F 2 "~" V 2080 1700 30  0000 C CNN
F 3 "~" H 2150 1700 30  0000 C CNN
	1    2150 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 2500 2550 2500
Wire Wire Line
	2550 2050 2450 2050
Wire Wire Line
	2450 2050 2450 1950
Wire Wire Line
	2450 1450 2450 1200
Wire Wire Line
	2300 2500 2300 1300
Connection ~ 2450 1300
Wire Wire Line
	2550 3100 2150 3100
Wire Wire Line
	2150 3100 2150 1950
Wire Wire Line
	2150 1450 2150 1300
Connection ~ 2300 1300
Wire Wire Line
	2550 3250 2000 3250
Wire Wire Line
	2000 3250 2000 1300
Connection ~ 2150 1300
$Comp
L C C8
U 1 1 54728B01
P 9200 2550
F 0 "C8" H 9200 2650 40  0000 L CNN
F 1 "0.1uF" H 9206 2465 40  0000 L CNN
F 2 "~" H 9238 2400 30  0000 C CNN
F 3 "~" H 9200 2550 60  0000 C CNN
	1    9200 2550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9500 2350 9500 2800
Connection ~ 9500 2350
$Comp
L CP1 C9
U 1 1 54728C3B
P 9200 2800
F 0 "C9" H 9250 2900 50  0000 L CNN
F 1 "10uF" H 9250 2700 50  0000 L CNN
F 2 "~" H 9200 2800 60  0000 C CNN
F 3 "~" H 9200 2800 60  0000 C CNN
	1    9200 2800
	0    1    1    0   
$EndComp
Wire Wire Line
	1650 2200 2550 2200
Wire Wire Line
	1650 2350 2550 2350
Wire Wire Line
	1650 2650 2550 2650
Wire Wire Line
	1650 2950 2550 2950
Connection ~ 1850 2200
Wire Wire Line
	9500 2800 9400 2800
Wire Wire Line
	9500 2550 9400 2550
Connection ~ 9500 2550
Wire Wire Line
	8600 2550 9000 2550
Wire Wire Line
	8600 2800 9000 2800
Wire Wire Line
	8050 2400 8600 2400
Connection ~ 8600 2400
Connection ~ 8600 2550
$Comp
L GND #PWR32
U 1 1 54729C52
P 8600 2900
F 0 "#PWR32" H 8600 2900 30  0001 C CNN
F 1 "GND" H 8600 2830 30  0001 C CNN
F 2 "" H 8600 2900 60  0000 C CNN
F 3 "" H 8600 2900 60  0000 C CNN
	1    8600 2900
	1    0    0    -1  
$EndComp
Connection ~ 8600 2800
$Comp
L CONN_01X07 P4
U 1 1 5472B1C0
P 6200 4400
F 0 "P4" V 6170 4400 60  0000 C CNN
F 1 "SPI" V 6270 4400 60  0000 C CNN
F 2 "" H 6200 4400 60  0000 C CNN
F 3 "" H 6200 4400 60  0000 C CNN
	1    6200 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 4600 6000 4600
Wire Wire Line
	5800 4600 5800 3100
Wire Wire Line
	5400 4200 5400 4150
Wire Wire Line
	5400 4150 5300 4150
Wire Wire Line
	5450 4100 5450 4000
Wire Wire Line
	5450 4000 5300 4000
Wire Wire Line
	5400 4400 6000 4400
Wire Wire Line
	5400 4400 5400 4450
Wire Wire Line
	5400 4450 5300 4450
Wire Wire Line
	5450 4500 6000 4500
Wire Wire Line
	5450 4500 5450 4600
Wire Wire Line
	5450 4600 5300 4600
Wire Wire Line
	2000 1300 2450 1300
Wire Wire Line
	9550 1800 9400 1800
Wire Wire Line
	9400 1800 9400 1750
Wire Wire Line
	9550 1900 9400 1900
Wire Wire Line
	9400 1900 9400 1950
Wire Wire Line
	7700 5100 7700 4900
Wire Wire Line
	8000 5100 8000 4900
Wire Wire Line
	8150 5100 8150 4900
Wire Wire Line
	8300 5150 8300 4900
Wire Wire Line
	7550 5100 7550 4900
Wire Wire Line
	7850 4900 7850 5100
Text GLabel 7850 5100 3    60   Input ~ 0
GLCD_A0
Text GLabel 7550 5100 3    60   Input ~ 0
SPI_CS3
$Comp
L 3V3 #PWR30
U 1 1 54618BA1
P 8300 5150
F 0 "#PWR30" H 8300 5250 40  0001 C CNN
F 1 "3V3" H 8300 5275 40  0000 C CNN
F 2 "" H 8300 5150 60  0000 C CNN
F 3 "" H 8300 5150 60  0000 C CNN
	1    8300 5150
	-1   0    0    1   
$EndComp
Text GLabel 8150 5100 3    60   Input ~ 0
SPI_MOSI
Text GLabel 8000 5100 3    60   Input ~ 0
SPI_SCK
Text GLabel 7700 5100 3    60   Input ~ 0
RST
$Comp
L GND #PWR29
U 1 1 55A2365E
P 7350 5200
F 0 "#PWR29" H 7350 5200 30  0001 C CNN
F 1 "GND" H 7350 5130 30  0001 C CNN
F 2 "" H 7350 5200 60  0000 C CNN
F 3 "" H 7350 5200 60  0000 C CNN
	1    7350 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 4900 7350 5200
$EndSCHEMATC
