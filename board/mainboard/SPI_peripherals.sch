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
Sheet 3 3
Title ""
Date "23 oct 2014"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L SDCARD_PUSH SD?
U 1 1 544877FA
P 3450 2650
F 0 "SD?" H 3450 2550 60  0000 C CNN
F 1 "SDCARD_PUSH" H 3450 2750 60  0000 C CNN
F 2 "~" H 3450 2750 60  0000 C CNN
F 3 "~" H 3450 2750 60  0000 C CNN
	1    3450 2650
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 54487B26
P 2000 1200
F 0 "R?" V 2080 1200 40  0000 C CNN
F 1 "50k" V 2007 1201 40  0000 C CNN
F 2 "~" V 1930 1200 30  0000 C CNN
F 3 "~" H 2000 1200 30  0000 C CNN
	1    2000 1200
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 54487C3C
P 1750 1200
F 0 "R?" V 1830 1200 40  0000 C CNN
F 1 "50k" V 1757 1201 40  0000 C CNN
F 2 "~" V 1680 1200 30  0000 C CNN
F 3 "~" H 1750 1200 30  0000 C CNN
	1    1750 1200
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 54487C51
P 2250 1200
F 0 "R?" V 2330 1200 40  0000 C CNN
F 1 "50k" V 2257 1201 40  0000 C CNN
F 2 "~" V 2180 1200 30  0000 C CNN
F 3 "~" H 2250 1200 30  0000 C CNN
	1    2250 1200
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 54487C57
P 1500 1200
F 0 "R?" V 1580 1200 40  0000 C CNN
F 1 "50k" V 1507 1201 40  0000 C CNN
F 2 "~" V 1430 1200 30  0000 C CNN
F 3 "~" H 1500 1200 30  0000 C CNN
	1    1500 1200
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 54487C5D
P 1250 1200
F 0 "R?" V 1330 1200 40  0000 C CNN
F 1 "50k" V 1257 1201 40  0000 C CNN
F 2 "~" V 1180 1200 30  0000 C CNN
F 3 "~" H 1250 1200 30  0000 C CNN
	1    1250 1200
	1    0    0    -1  
$EndComp
$Comp
L 3V3 #PWR?
U 1 1 54487C67
P 2450 700
F 0 "#PWR?" H 2450 800 40  0001 C CNN
F 1 "3V3" H 2450 825 40  0000 C CNN
F 2 "" H 2450 700 60  0000 C CNN
F 3 "" H 2450 700 60  0000 C CNN
	1    2450 700 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 950  1250 850 
Wire Wire Line
	1500 850  1500 950 
Wire Wire Line
	1750 850  1750 950 
Connection ~ 1500 850 
Wire Wire Line
	2000 850  2000 950 
Connection ~ 1750 850 
Wire Wire Line
	2250 850  2250 950 
Connection ~ 2000 850 
$Comp
L GND #PWR?
U 1 1 54487D03
P 2450 4150
F 0 "#PWR?" H 2450 4150 30  0001 C CNN
F 1 "GND" H 2450 4080 30  0001 C CNN
F 2 "" H 2450 4150 60  0000 C CNN
F 3 "" H 2450 4150 60  0000 C CNN
	1    2450 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 850  2450 850 
Wire Wire Line
	2450 700  2450 2500
Connection ~ 2250 850 
Wire Wire Line
	2450 2500 2550 2500
Connection ~ 2450 850 
Wire Wire Line
	2450 2800 2550 2800
Wire Wire Line
	2450 2800 2450 4150
Wire Wire Line
	1250 1450 1250 3100
Wire Wire Line
	1250 3100 2550 3100
Wire Wire Line
	1500 1450 1500 2950
Wire Wire Line
	1000 2950 2550 2950
Wire Wire Line
	1750 1450 1750 2350
Wire Wire Line
	1000 2350 2550 2350
Wire Wire Line
	2000 1450 2000 2200
Wire Wire Line
	1000 2200 2550 2200
Wire Wire Line
	2550 2050 2250 2050
Wire Wire Line
	2250 2050 2250 1450
Text GLabel 1000 2200 0    60   Input ~ 0
SPI_CS1
Connection ~ 2000 2200
Text GLabel 1000 2650 0    60   Input ~ 0
SPI_SCK
Wire Wire Line
	2550 2650 1000 2650
Text GLabel 1000 2350 0    60   Input ~ 0
SPI_MOSI
Connection ~ 1750 2350
Text GLabel 1000 2950 0    60   Input ~ 0
SPI_MISO
Connection ~ 1500 2950
Wire Wire Line
	2550 3250 1100 3250
Wire Wire Line
	1100 3250 1100 850 
Connection ~ 1250 850 
Text GLabel 1900 3400 0    60   Input ~ 0
SD_SWITCH
$Comp
L R R?
U 1 1 544883FE
P 2250 3750
F 0 "R?" V 2330 3750 40  0000 C CNN
F 1 "50k" V 2257 3751 40  0000 C CNN
F 2 "~" V 2180 3750 30  0000 C CNN
F 3 "~" H 2250 3750 30  0000 C CNN
	1    2250 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 4000 2450 4000
Connection ~ 2450 4000
Wire Wire Line
	2250 3500 2250 3400
Wire Wire Line
	1900 3400 2550 3400
Connection ~ 2250 3400
$EndSCHEMATC
