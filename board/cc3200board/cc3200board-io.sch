EESchema Schematic File Version 2
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
LIBS:cc3200board
LIBS:cc3200board-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
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
L CC3200R1M2RGCR U1
U 1 1 545301D2
P 3650 3600
F 0 "U1" H 2300 6400 45  0000 C CNN
F 1 "CC3200R1M2RGCR" H 4700 1100 45  0000 C CNN
F 2 "VQFN64" H 3650 4100 35  0000 C CIN
F 3 "" H 4350 4000 60  0000 C CNN
	1    3650 3600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR028
U 1 1 5453196F
P 2800 7400
F 0 "#PWR028" H 2800 7400 30  0001 C CNN
F 1 "GND" H 2800 7330 30  0001 C CNN
F 2 "" H 2800 7400 60  0000 C CNN
F 3 "" H 2800 7400 60  0000 C CNN
	1    2800 7400
	1    0    0    -1  
$EndComp
$Comp
L R R8
U 1 1 54531994
P 2800 6900
F 0 "R8" V 2880 6900 40  0000 C CNN
F 1 "100K" V 2807 6901 40  0000 C CNN
F 2 "" V 2730 6900 30  0001 C CNN
F 3 "" H 2800 6900 30  0000 C CNN
	1    2800 6900
	1    0    0    -1  
$EndComp
$Comp
L R R9
U 1 1 545319C9
P 2600 6900
F 0 "R9" V 2680 6900 40  0000 C CNN
F 1 "100K" V 2607 6901 40  0000 C CNN
F 2 "" V 2530 6900 30  0001 C CNN
F 3 "" H 2600 6900 30  0000 C CNN
	1    2600 6900
	1    0    0    -1  
$EndComp
$Comp
L R R10
U 1 1 545319E9
P 3000 6900
F 0 "R10" V 3080 6900 40  0000 C CNN
F 1 "2.7K" V 3007 6901 40  0000 C CNN
F 2 "" V 2930 6900 30  0001 C CNN
F 3 "" H 3000 6900 30  0000 C CNN
	1    3000 6900
	1    0    0    -1  
$EndComp
$Comp
L CONN_4 P1
U 1 1 54532280
P 8750 2050
F 0 "P1" V 8700 2050 50  0000 C CNN
F 1 "PROG" V 8800 2050 50  0000 C CNN
F 2 "" H 8750 2050 60  0001 C CNN
F 3 "" H 8750 2050 60  0000 C CNN
	1    8750 2050
	1    0    0    -1  
$EndComp
Text Label 5400 1150 0    60   ~ 0
GPIO0
Text Label 5400 1400 0    60   ~ 0
GPIO1
Text Label 5400 1650 0    60   ~ 0
GPIO2
Text Label 5400 1900 0    60   ~ 0
GPIO3
Text Label 5400 2150 0    60   ~ 0
GPIO4
Text Label 5400 2400 0    60   ~ 0
GPIO5
Text Label 5400 2650 0    60   ~ 0
GPIO6
Text Label 5400 2900 0    60   ~ 0
GPIO7
Entry Wire Line
	5700 1150 5800 1250
Entry Wire Line
	5700 1400 5800 1500
Entry Wire Line
	5700 1650 5800 1750
Entry Wire Line
	5700 1900 5800 2000
Entry Wire Line
	5700 2150 5800 2250
Entry Wire Line
	5700 2400 5800 2500
Entry Wire Line
	5700 2650 5800 2750
Entry Wire Line
	5700 2900 5800 3000
Text Label 5800 2150 0    60   ~ 0
GPIO[7:0]
$Comp
L GND #PWR029
U 1 1 54533722
P 8050 1900
F 0 "#PWR029" H 8050 1900 30  0001 C CNN
F 1 "GND" H 8050 1830 30  0001 C CNN
F 2 "" H 8050 1900 60  0000 C CNN
F 3 "" H 8050 1900 60  0000 C CNN
	1    8050 1900
	0    1    1    0   
$EndComp
Text GLabel 8050 2000 0    60   Input ~ 0
3V3
Text Label 8150 2100 0    60   ~ 0
GPIO2
Text Label 8150 2200 0    60   ~ 0
GPIO1
Entry Wire Line
	8000 2200 8100 2100
Entry Wire Line
	8000 2300 8100 2200
Text Label 8000 2400 0    60   ~ 0
GPIO[7:0]
$Comp
L CONN_8X2 P2
U 1 1 54533F4C
P 8750 3250
F 0 "P2" H 8750 3700 60  0000 C CNN
F 1 "CONN_GPIO" V 8750 3250 50  0000 C CNN
F 2 "" H 8750 3250 60  0001 C CNN
F 3 "" H 8750 3250 60  0000 C CNN
	1    8750 3250
	1    0    0    -1  
$EndComp
Text Label 8050 2900 0    60   ~ 0
GPIO0
Text Label 8050 3000 0    60   ~ 0
GPIO3
Text Label 8050 3100 0    60   ~ 0
GPIO4
Text Label 8050 3200 0    60   ~ 0
GPIO5
Text Label 8050 3300 0    60   ~ 0
GPIO6
Text Label 8050 3400 0    60   ~ 0
GPIO7
Entry Wire Line
	7950 3000 8050 2900
Entry Wire Line
	7950 3100 8050 3000
Entry Wire Line
	7950 3200 8050 3100
Entry Wire Line
	7950 3300 8050 3200
Entry Wire Line
	7950 3400 8050 3300
Entry Wire Line
	7950 3500 8050 3400
Text Label 7950 3250 2    60   ~ 0
GPIO[7:0]
Text Label 8050 3500 0    60   ~ 0
GPIO8
Text Label 8050 3600 0    60   ~ 0
GPIO9
Entry Wire Line
	7950 3600 8050 3500
Entry Wire Line
	7950 3700 8050 3600
Text Label 7950 3650 2    60   ~ 0
GPIO[15:8]
Entry Wire Line
	5700 3375 5800 3475
Entry Wire Line
	5700 3600 5800 3700
Entry Wire Line
	5700 4000 5800 4100
Entry Wire Line
	5700 4200 5800 4300
Entry Wire Line
	5700 4400 5800 4500
Entry Wire Line
	5700 4600 5800 4700
Entry Wire Line
	5700 3800 5800 3900
Entry Wire Line
	5700 4800 5800 4900
Text Label 5400 3375 0    60   ~ 0
GPIO8
Text Label 5400 3600 0    60   ~ 0
GPIO9
Text Label 5400 3800 0    60   ~ 0
GPIO10
Text Label 5400 4000 0    60   ~ 0
GPIO11
Text Label 5400 4200 0    60   ~ 0
GPIO12
Text Label 5400 4400 0    60   ~ 0
GPIO13
Text Label 5400 4600 0    60   ~ 0
GPIO14
Text Label 5400 4800 0    60   ~ 0
GPIO15
Text Label 5800 4275 0    60   ~ 0
GPIO[15:8]
Text Label 9175 2900 0    60   ~ 0
GPIO10
Text Label 9175 3000 0    60   ~ 0
GPIO11
Text Label 9175 3100 0    60   ~ 0
GPIO12
Text Label 9175 3200 0    60   ~ 0
GPIO13
Text Label 9175 3300 0    60   ~ 0
GPIO14
Text Label 9175 3400 0    60   ~ 0
GPIO15
Text Label 9175 3500 0    60   ~ 0
GPIO16
Text Label 9175 3600 0    60   ~ 0
GPIO17
Entry Wire Line
	9500 2900 9600 3000
Entry Wire Line
	9500 3000 9600 3100
Entry Wire Line
	9500 3100 9600 3200
Entry Wire Line
	9500 3200 9600 3300
Entry Wire Line
	9500 3300 9600 3400
Entry Wire Line
	9500 3400 9600 3500
Entry Wire Line
	9500 3500 9600 3600
Entry Wire Line
	9500 3600 9600 3700
Text Label 9600 3225 0    60   ~ 0
GPIO[15:8]
Text Label 5425 5300 0    60   ~ 0
GPIO16
Text Label 5425 5500 0    60   ~ 0
GPIO17
Entry Wire Line
	5700 5300 5800 5400
Entry Wire Line
	5700 5500 5800 5600
Text Label 5800 5475 0    60   ~ 0
GPIO[AUX]
Text Label 9600 3750 0    60   ~ 0
GPIO[AUX]
$Comp
L CONN_4X2 P3
U 1 1 545361DF
P 8750 4725
F 0 "P3" H 8750 4975 50  0000 C CNN
F 1 "CONN_JTAG" V 8750 4725 40  0000 C CNN
F 2 "" H 8750 4725 60  0001 C CNN
F 3 "" H 8750 4725 60  0000 C CNN
	1    8750 4725
	1    0    0    -1  
$EndComp
Text Label 2600 6575 2    60   ~ 0
SOP0
Text Label 3000 6575 0    60   ~ 0
SOP2
Text Label 3700 6750 0    60   ~ 0
TDO
Text Label 3900 6750 0    60   ~ 0
TDI
Text Label 4100 6750 0    60   ~ 0
TCK
Text Label 4300 6750 0    60   ~ 0
TMS
Wire Wire Line
	2800 6450 2800 6650
Wire Wire Line
	2600 6450 2600 6650
Wire Wire Line
	3000 6650 3000 6450
Wire Wire Line
	3000 7300 3000 7150
Wire Wire Line
	2600 7300 3000 7300
Wire Wire Line
	2800 7150 2800 7400
Connection ~ 2800 7300
Wire Wire Line
	2600 7300 2600 7150
Wire Wire Line
	5350 1400 5700 1400
Wire Wire Line
	5350 1150 5700 1150
Wire Wire Line
	5350 2900 5700 2900
Wire Wire Line
	5700 2650 5350 2650
Wire Wire Line
	5700 2400 5350 2400
Wire Wire Line
	5350 2150 5700 2150
Wire Wire Line
	5350 1900 5700 1900
Wire Wire Line
	5350 1650 5700 1650
Wire Bus Line
	5800 1250 5800 3100
Wire Wire Line
	8050 1900 8400 1900
Wire Wire Line
	8400 2000 8050 2000
Wire Wire Line
	8100 2100 8400 2100
Wire Wire Line
	8400 2200 8100 2200
Wire Bus Line
	8000 2200 8000 2450
Wire Wire Line
	8050 2900 8350 2900
Wire Wire Line
	8050 3000 8350 3000
Wire Wire Line
	8350 3100 8050 3100
Wire Wire Line
	8350 3200 8050 3200
Wire Wire Line
	8050 3300 8350 3300
Wire Wire Line
	8050 3400 8350 3400
Wire Bus Line
	7950 2950 7950 3550
Wire Wire Line
	8350 3500 8050 3500
Wire Wire Line
	8350 3600 8050 3600
Wire Bus Line
	7950 3600 7950 3750
Wire Wire Line
	5350 3375 5700 3375
Wire Wire Line
	5350 3600 5700 3600
Wire Wire Line
	5350 3800 5700 3800
Wire Wire Line
	5350 4000 5700 4000
Wire Wire Line
	5350 4200 5700 4200
Wire Wire Line
	5350 4400 5700 4400
Wire Wire Line
	5350 4600 5700 4600
Wire Wire Line
	5350 4800 5700 4800
Wire Bus Line
	5800 3475 5800 5000
Wire Bus Line
	5800 5000 5775 5000
Wire Wire Line
	9150 2900 9500 2900
Wire Wire Line
	9150 3000 9500 3000
Wire Wire Line
	9150 3100 9500 3100
Wire Wire Line
	9150 3200 9500 3200
Wire Wire Line
	9150 3300 9500 3300
Wire Wire Line
	9150 3400 9500 3400
Wire Wire Line
	9150 3500 9500 3500
Wire Wire Line
	9150 3600 9500 3600
Wire Bus Line
	9600 3000 9600 3500
Wire Wire Line
	5350 5300 5700 5300
Wire Wire Line
	5350 5500 5700 5500
Wire Bus Line
	5800 5100 5800 5875
Wire Bus Line
	9600 3575 9600 3775
Wire Wire Line
	3000 6600 3225 6600
Connection ~ 3000 6600
Wire Wire Line
	2600 6600 2375 6600
Connection ~ 2600 6600
Wire Wire Line
	3700 6450 3700 6750
Wire Wire Line
	3900 6450 3900 6750
Wire Wire Line
	4100 6450 4100 6750
Wire Wire Line
	4300 6450 4300 6750
Wire Wire Line
	8350 4575 8175 4575
Wire Wire Line
	8350 4675 8175 4675
Wire Wire Line
	8350 4775 8175 4775
Wire Wire Line
	8350 4875 8175 4875
Wire Wire Line
	9150 4575 9350 4575
Wire Wire Line
	9150 4675 9350 4675
Text Label 8225 4575 0    60   ~ 0
TDI
Text Label 8225 4675 0    60   ~ 0
TDO
Text Label 8225 4775 0    60   ~ 0
TCK
Text Label 8225 4875 0    60   ~ 0
TMS
Text Label 9175 4575 0    60   ~ 0
SOP0
Text Label 9175 4675 0    60   ~ 0
SOP2
$EndSCHEMATC
