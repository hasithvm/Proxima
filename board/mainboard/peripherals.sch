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
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
Title ""
Date "22 oct 2014"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L TMP100 TMP?
U 1 1 54472400
P 2550 1600
F 0 "TMP?" H 2550 1500 60  0000 C CNN
F 1 "TMP100" H 2550 1700 60  0000 C CNN
F 2 "~" H 2550 1550 60  0000 C CNN
F 3 "~" H 2550 1550 60  0000 C CNN
	1    2550 1600
	1    0    0    -1  
$EndComp
Text GLabel 1400 1450 0    60   Input ~ 0
I2C_CL
Text GLabel 3550 1450 2    60   Input ~ 0
I2C_DA
$Comp
L C C?
U 1 1 54472408
P 4000 1950
F 0 "C?" H 4000 2050 40  0000 L CNN
F 1 "0.1uF" H 4006 1865 40  0000 L CNN
F 2 "~" H 4038 1800 30  0000 C CNN
F 3 "~" H 4000 1950 60  0000 C CNN
	1    4000 1950
	1    0    0    -1  
$EndComp
$Comp
L 3V3 #PWR?
U 1 1 5447240E
P 4000 1200
F 0 "#PWR?" H 4000 1300 40  0001 C CNN
F 1 "3V3" H 4000 1325 40  0000 C CNN
F 2 "" H 4000 1200 60  0000 C CNN
F 3 "" H 4000 1200 60  0000 C CNN
	1    4000 1200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 54472414
P 4000 2350
F 0 "#PWR?" H 4000 2350 30  0001 C CNN
F 1 "GND" H 4000 2280 30  0001 C CNN
F 2 "" H 4000 2350 60  0000 C CNN
F 3 "" H 4000 2350 60  0000 C CNN
	1    4000 2350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5447241A
P 1650 2000
F 0 "#PWR?" H 1650 2000 30  0001 C CNN
F 1 "GND" H 1650 1930 30  0001 C CNN
F 2 "" H 1650 2000 60  0000 C CNN
F 3 "" H 1650 2000 60  0000 C CNN
	1    1650 2000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 54472420
P 3450 2000
F 0 "#PWR?" H 3450 2000 30  0001 C CNN
F 1 "GND" H 3450 1930 30  0001 C CNN
F 2 "" H 3450 2000 60  0000 C CNN
F 3 "" H 3450 2000 60  0000 C CNN
	1    3450 2000
	1    0    0    -1  
$EndComp
Text Notes 2150 1000 0    60   ~ 0
Temperature Sensor\nI2C ADDR = 1001000x
Wire Wire Line
	1850 1450 1400 1450
Wire Wire Line
	1850 1600 1650 1600
Wire Wire Line
	1650 1600 1650 2000
Wire Wire Line
	3250 1450 3550 1450
Wire Wire Line
	4000 1200 4000 1750
Wire Wire Line
	4000 1750 3250 1750
Wire Wire Line
	4000 2150 4000 2350
Wire Wire Line
	1850 1750 1650 1750
Connection ~ 1650 1750
Wire Wire Line
	3450 1600 3450 2000
Wire Wire Line
	3450 1600 3250 1600
$EndSCHEMATC
