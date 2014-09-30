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
LIBS:w_logic
LIBS:w_analog
LIBS:w_vacuum
LIBS:w_transistor
LIBS:w_rtx
LIBS:w_relay
LIBS:w_opto
LIBS:w_microcontrollers
LIBS:w_memory
LIBS:w_device
LIBS:w_connectors
LIBS:daughterboard-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "30 sep 2014"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L +3,3V #PWR?
U 1 1 542A44DC
P 4850 1750
F 0 "#PWR?" H 4850 1710 30  0001 C CNN
F 1 "+3,3V" H 4850 1860 30  0000 C CNN
F 2 "" H 4850 1750 60  0000 C CNN
F 3 "" H 4850 1750 60  0000 C CNN
	1    4850 1750
	1    0    0    -1  
$EndComp
Text Label 4850 1950 3    60   ~ 0
3V3
$Comp
L C C2
U 1 1 542A463B
P 5700 2500
F 0 "C2" H 5700 2600 40  0000 L CNN
F 1 "0.1uF" H 5706 2415 40  0000 L CNN
F 2 "~" H 5738 2350 30  0000 C CNN
F 3 "~" H 5700 2500 60  0000 C CNN
	1    5700 2500
	1    0    0    -1  
$EndComp
Text Label 4750 2950 1    60   ~ 0
3V3
$Comp
L MPU-9150 U1
U 1 1 542A432F
P 4800 4000
F 0 "U1" H 5000 4850 60  0000 C CNN
F 1 "MPU-9150" H 5150 4750 60  0000 C CNN
F 2 "" H 4800 3950 60  0000 C CNN
F 3 "" H 4800 3950 60  0000 C CNN
	1    4800 4000
	1    0    0    -1  
$EndComp
Text Label 4100 3550 2    60   ~ 0
GND
Text Label 4700 5400 0    60   ~ 0
GND
Text Label 5500 4450 0    60   ~ 0
GND
Text GLabel 6050 3850 2    60   Input ~ 0
I2C_SCL
Text GLabel 6050 4000 2    60   Input ~ 0
I2C_SDA
Text Label 5500 3750 0    60   ~ 0
GND
$Comp
L C C1
U 1 1 542A4849
P 2550 4800
F 0 "C1" H 2550 4900 40  0000 L CNN
F 1 "0.1uF" H 2556 4715 40  0000 L CNN
F 2 "~" H 2588 4650 30  0000 C CNN
F 3 "~" H 2550 4800 60  0000 C CNN
	1    2550 4800
	1    0    0    -1  
$EndComp
Text Label 2800 5300 0    60   ~ 0
GND
$Comp
L C C3
U 1 1 542A48F0
P 2800 4800
F 0 "C3" H 2800 4900 40  0000 L CNN
F 1 "2.2nF" H 2806 4715 40  0000 L CNN
F 2 "~" H 2838 4650 30  0000 C CNN
F 3 "~" H 2800 4800 60  0000 C CNN
	1    2800 4800
	1    0    0    -1  
$EndComp
Text Label 4100 4000 2    60   ~ 0
REGOUT_CAP
Text Label 4100 4100 2    60   ~ 0
3V3
Text Label 4100 4450 2    60   ~ 0
CP_OUT
Text Label 2550 4450 1    60   ~ 0
REGOUT_CAP
Text Label 2800 4450 1    60   ~ 0
CP_OUT
$Comp
L C C4
U 1 1 542A4AC9
P 3100 4800
F 0 "C4" H 3100 4900 40  0000 L CNN
F 1 "10nF" H 3106 4715 40  0000 L CNN
F 2 "~" H 3138 4650 30  0000 C CNN
F 3 "~" H 3100 4800 60  0000 C CNN
	1    3100 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 1750 4850 1950
Wire Wire Line
	4750 2950 4750 3200
Wire Wire Line
	4350 3550 4100 3550
Wire Wire Line
	4700 4800 4700 5000
Wire Wire Line
	4700 5000 4800 5000
Wire Wire Line
	4800 5000 4900 5000
Wire Wire Line
	4800 4800 4800 5000
Wire Wire Line
	4800 5000 4800 5250
Wire Wire Line
	4900 5000 4900 4800
Connection ~ 4800 5000
Wire Wire Line
	5250 4450 5500 4450
Wire Wire Line
	5250 3850 6050 3850
Wire Wire Line
	5250 3950 5450 3950
Wire Wire Line
	5450 3950 5450 4000
Wire Wire Line
	5450 4000 6050 4000
Wire Wire Line
	5250 3750 5500 3750
Wire Wire Line
	2550 5100 2550 5000
Wire Wire Line
	2800 5000 2800 5100
Wire Wire Line
	2800 5100 2800 5300
Wire Wire Line
	2550 5100 2800 5100
Wire Wire Line
	2800 5100 3100 5100
Connection ~ 2800 5100
Wire Wire Line
	2800 4600 2800 4450
Wire Wire Line
	2550 4600 2550 4450
Wire Wire Line
	4350 4000 4100 4000
Wire Wire Line
	4350 4100 4100 4100
Wire Wire Line
	4350 4450 4100 4450
Wire Wire Line
	3100 4600 3100 4450
Wire Wire Line
	3100 5100 3100 5000
Text Label 3100 4450 1    60   ~ 0
3V3
Wire Wire Line
	5700 2300 5700 2150
Wire Wire Line
	5700 2700 5700 3100
Text Label 5700 3100 1    60   ~ 0
VDD_BYP
Wire Wire Line
	4850 3200 4850 2950
Text Label 4850 2950 1    60   ~ 0
VDD_BYP
Text Label 5700 2150 1    60   ~ 0
3V3
$EndSCHEMATC
