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
Sheet 8 8
Title ""
Date "24 nov 2014"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L TPS63001 REG?
U 1 1 5472BB01
P 6000 3700
F 0 "REG?" H 6000 3850 60  0000 C CNN
F 1 "TPS63001" H 6000 4050 60  0000 C CNN
F 2 "" H 6000 3850 60  0000 C CNN
F 3 "" H 6000 3850 60  0000 C CNN
	1    6000 3700
	1    0    0    -1  
$EndComp
$Comp
L INDUCTOR L?
U 1 1 5472BB10
P 6000 3150
F 0 "L?" V 5950 3150 40  0000 C CNN
F 1 "2.2uH" V 6100 3150 40  0000 C CNN
F 2 "~" H 6000 3150 60  0000 C CNN
F 3 "~" H 6000 3150 60  0000 C CNN
	1    6000 3150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5700 3150 5450 3150
Wire Wire Line
	5450 3150 5450 3450
Wire Wire Line
	5450 3450 5550 3450
Wire Wire Line
	6300 3150 6550 3150
Wire Wire Line
	6550 3150 6550 3450
Wire Wire Line
	6550 3450 6450 3450
Wire Wire Line
	4800 3650 5550 3650
Wire Wire Line
	5500 3650 5500 3950
Wire Wire Line
	5500 3750 5550 3750
Wire Wire Line
	5500 3850 5550 3850
Connection ~ 5500 3750
Wire Wire Line
	5500 3950 5550 3950
Connection ~ 5500 3850
Wire Wire Line
	6000 4250 6000 4350
Wire Wire Line
	5000 4350 6750 4350
Wire Wire Line
	6200 4350 6200 4250
Wire Wire Line
	6100 4250 6100 4500
Connection ~ 6100 4350
$Comp
L GND #PWR?
U 1 1 5472BB7C
P 6100 4500
F 0 "#PWR?" H 6100 4500 30  0001 C CNN
F 1 "GND" H 6100 4430 30  0001 C CNN
F 2 "" H 6100 4500 60  0000 C CNN
F 3 "" H 6100 4500 60  0000 C CNN
	1    6100 4500
	1    0    0    -1  
$EndComp
$Comp
L 3V3 #PWR?
U 1 1 5472BBB1
P 6750 3600
F 0 "#PWR?" H 6750 3700 40  0001 C CNN
F 1 "3V3" H 6750 3725 40  0000 C CNN
F 2 "" H 6750 3600 60  0000 C CNN
F 3 "" H 6750 3600 60  0000 C CNN
	1    6750 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 3650 6750 3650
Wire Wire Line
	6750 3600 6750 3800
Wire Wire Line
	6450 3750 6600 3750
Wire Wire Line
	6600 3750 6600 3650
Connection ~ 6600 3650
$Comp
L C C?
U 1 1 5472BBE8
P 6750 4000
F 0 "C?" H 6750 4100 40  0000 L CNN
F 1 "10uF" H 6756 3915 40  0000 L CNN
F 2 "~" H 6788 3850 30  0000 C CNN
F 3 "~" H 6750 4000 60  0000 C CNN
	1    6750 4000
	1    0    0    -1  
$EndComp
Connection ~ 6750 3650
Wire Wire Line
	6750 4350 6750 4200
Connection ~ 6200 4350
$Comp
L C C?
U 1 1 5472BC2B
P 5250 4000
F 0 "C?" H 5250 4100 40  0000 L CNN
F 1 "10uF" H 5256 3915 40  0000 L CNN
F 2 "~" H 5288 3850 30  0000 C CNN
F 3 "~" H 5250 4000 60  0000 C CNN
	1    5250 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 4200 5250 4350
Connection ~ 6000 4350
Wire Wire Line
	5250 3800 5250 3650
Connection ~ 5500 3650
$Comp
L CONN_2 P?
U 1 1 5472BC89
P 4450 3750
F 0 "P?" V 4400 3750 40  0000 C CNN
F 1 "POWER" V 4500 3750 40  0000 C CNN
F 2 "" H 4450 3750 60  0000 C CNN
F 3 "" H 4450 3750 60  0000 C CNN
	1    4450 3750
	-1   0    0    1   
$EndComp
Wire Wire Line
	4800 3850 5000 3850
Connection ~ 5250 4350
Wire Wire Line
	5000 3850 5000 4350
Connection ~ 5250 3650
$EndSCHEMATC
