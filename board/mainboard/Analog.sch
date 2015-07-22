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
Sheet 10 10
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 3650 3875 2    60   Input ~ 0
AIN1
Text GLabel 3650 3750 2    60   Input ~ 0
AIN2
$Comp
L CONN_01X05 P6
U 1 1 55A4755A
P 2950 2675
F 0 "P6" V 2900 2675 50  0000 C CNN
F 1 "Line Sensors" V 3000 2675 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x05" H 2950 2675 60  0001 C CNN
F 3 "" H 2950 2675 60  0000 C CNN
	1    2950 2675
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR0105
U 1 1 55A47561
P 3550 3075
F 0 "#PWR0105" H 3550 3075 30  0001 C CNN
F 1 "GND" H 3550 3005 30  0001 C CNN
F 2 "" H 3550 3075 60  0000 C CNN
F 3 "" H 3550 3075 60  0000 C CNN
	1    3550 3075
	1    0    0    -1  
$EndComp
$Comp
L 3V3 #PWR0106
U 1 1 55A47567
P 3550 2325
F 0 "#PWR0106" H 3550 2425 40  0001 C CNN
F 1 "3V3" H 3550 2450 40  0000 C CNN
F 2 "" H 3550 2325 60  0000 C CNN
F 3 "" H 3550 2325 60  0000 C CNN
	1    3550 2325
	1    0    0    -1  
$EndComp
Text GLabel 3800 2475 2    60   Input ~ 0
LINE_SENSOR_R
Text GLabel 3800 2675 2    60   Input ~ 0
LINE_SENSOR_C
Text GLabel 3800 2875 2    60   Input ~ 0
LINE_SENSOR_L
Wire Wire Line
	3150 2875 3550 2875
Wire Wire Line
	3550 2875 3550 3075
Wire Wire Line
	3150 2475 3550 2475
Wire Wire Line
	3550 2475 3550 2325
Wire Wire Line
	3150 2675 3800 2675
Wire Wire Line
	3150 2575 3650 2575
Wire Wire Line
	3650 2575 3650 2475
Wire Wire Line
	3650 2475 3800 2475
Wire Wire Line
	3150 2775 3650 2775
Wire Wire Line
	3650 2775 3650 2875
Wire Wire Line
	3650 2875 3800 2875
$Comp
L CAP_TOUCH CAP1
U 1 1 55A47B35
P 10425 2500
F 0 "CAP1" H 10425 2800 60  0000 C CNN
F 1 "CAP_TOUCH" H 10425 1975 60  0000 C CNN
F 2 "" H 10650 2250 60  0001 C CNN
F 3 "" H 10650 2250 60  0000 C CNN
	1    10425 2500
	1    0    0    -1  
$EndComp
$Comp
L R R42
U 1 1 55A47C64
P 9800 2375
F 0 "R42" V 9880 2375 40  0000 C CNN
F 1 "5k" V 9807 2376 40  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 9730 2375 30  0001 C CNN
F 3 "" H 9800 2375 30  0000 C CNN
	1    9800 2375
	0    1    1    0   
$EndComp
$Comp
L R R43
U 1 1 55A47CAF
P 9800 2625
F 0 "R43" V 9880 2625 40  0000 C CNN
F 1 "5k" V 9807 2626 40  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 9730 2625 30  0001 C CNN
F 3 "" H 9800 2625 30  0000 C CNN
	1    9800 2625
	0    1    1    0   
$EndComp
$Comp
L R R44
U 1 1 55A47CE4
P 9800 2850
F 0 "R44" V 9880 2850 40  0000 C CNN
F 1 "5k" V 9807 2851 40  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 9730 2850 30  0001 C CNN
F 3 "" H 9800 2850 30  0000 C CNN
	1    9800 2850
	0    1    1    0   
$EndComp
$Comp
L R R39
U 1 1 55A484E0
P 6925 2725
F 0 "R39" V 7005 2725 40  0000 C CNN
F 1 "50k" V 6932 2726 40  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 6855 2725 30  0001 C CNN
F 3 "" H 6925 2725 30  0000 C CNN
	1    6925 2725
	1    0    0    -1  
$EndComp
Wire Wire Line
	6625 2375 9550 2375
$Comp
L C C11
U 1 1 55A4885C
P 6725 2750
F 0 "C11" H 6725 2850 40  0000 L CNN
F 1 "10pF" H 6731 2665 40  0000 L CNN
F 2 "Capacitors_SMD:c_0603" H 6763 2600 30  0001 C CNN
F 3 "" H 6725 2750 60  0000 C CNN
	1    6725 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6725 2375 6725 2550
Wire Wire Line
	6725 3100 6925 3100
Wire Wire Line
	6725 3100 6725 2950
$Comp
L GND #PWR0107
U 1 1 55A489A5
P 6825 3175
F 0 "#PWR0107" H 6825 3175 30  0001 C CNN
F 1 "GND" H 6825 3105 30  0001 C CNN
F 2 "" H 6825 3175 60  0000 C CNN
F 3 "" H 6825 3175 60  0000 C CNN
	1    6825 3175
	1    0    0    -1  
$EndComp
$Comp
L R R40
U 1 1 55A48CB8
P 8250 2950
F 0 "R40" V 8330 2950 40  0000 C CNN
F 1 "50k" V 8257 2951 40  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 8180 2950 30  0001 C CNN
F 3 "" H 8250 2950 30  0000 C CNN
	1    8250 2950
	1    0    0    -1  
$EndComp
$Comp
L C C12
U 1 1 55A48CC0
P 8050 2975
F 0 "C12" H 8050 3075 40  0000 L CNN
F 1 "10pF" H 8056 2890 40  0000 L CNN
F 2 "Capacitors_SMD:c_0603" H 8088 2825 30  0001 C CNN
F 3 "" H 8050 2975 60  0000 C CNN
	1    8050 2975
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 2625 8050 2775
Wire Wire Line
	8050 3325 8250 3325
Wire Wire Line
	8050 3325 8050 3175
$Comp
L GND #PWR0108
U 1 1 55A48CCB
P 8150 3425
F 0 "#PWR0108" H 8150 3425 30  0001 C CNN
F 1 "GND" H 8150 3355 30  0001 C CNN
F 2 "" H 8150 3425 60  0000 C CNN
F 3 "" H 8150 3425 60  0000 C CNN
	1    8150 3425
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 3425 8150 3325
Connection ~ 8150 3325
$Comp
L R R41
U 1 1 55A48F69
P 9475 3200
F 0 "R41" V 9555 3200 40  0000 C CNN
F 1 "50k" V 9482 3201 40  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 9405 3200 30  0001 C CNN
F 3 "" H 9475 3200 30  0000 C CNN
	1    9475 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9475 2850 9475 2950
$Comp
L C C13
U 1 1 55A48F70
P 9275 3225
F 0 "C13" H 9275 3325 40  0000 L CNN
F 1 "10pF" H 9281 3140 40  0000 L CNN
F 2 "Capacitors_SMD:c_0603" H 9313 3075 30  0001 C CNN
F 3 "" H 9275 3225 60  0000 C CNN
	1    9275 3225
	1    0    0    -1  
$EndComp
Wire Wire Line
	9275 2850 9275 3025
Connection ~ 9475 2850
Wire Wire Line
	9475 3475 9475 3450
Wire Wire Line
	9275 3475 9475 3475
Wire Wire Line
	9275 3475 9275 3425
$Comp
L GND #PWR0109
U 1 1 55A48F7B
P 9375 3550
F 0 "#PWR0109" H 9375 3550 30  0001 C CNN
F 1 "GND" H 9375 3480 30  0001 C CNN
F 2 "" H 9375 3550 60  0000 C CNN
F 3 "" H 9375 3550 60  0000 C CNN
	1    9375 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9375 3550 9375 3475
Connection ~ 9375 3475
Wire Wire Line
	7975 2625 9550 2625
Wire Wire Line
	8250 2625 8250 2700
Connection ~ 8250 2625
Text GLabel 6625 2375 0    60   Input ~ 0
LINE_SENSOR_R
Connection ~ 6725 2375
Text GLabel 7975 2625 0    60   Input ~ 0
LINE_SENSOR_C
Connection ~ 8050 2625
Text GLabel 9225 2850 0    60   Input ~ 0
LINE_SENSOR_L
Wire Wire Line
	9225 2850 9550 2850
Connection ~ 9275 2850
Wire Wire Line
	8250 3325 8250 3200
Wire Wire Line
	6925 3100 6925 2975
Wire Wire Line
	6925 2475 6925 2375
Connection ~ 6925 2375
Wire Wire Line
	6825 3100 6825 3175
Connection ~ 6825 3100
Text GLabel 3650 3625 2    60   Input ~ 0
AIN3
$Comp
L CONN_01X03 P7
U 1 1 55A47551
P 3100 3750
F 0 "P7" V 3050 3750 40  0000 C CNN
F 1 "Analog In" V 3150 3750 40  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 3100 3750 60  0001 C CNN
F 3 "" H 3100 3750 60  0000 C CNN
	1    3100 3750
	-1   0    0    1   
$EndComp
Wire Wire Line
	3650 3750 3300 3750
Wire Wire Line
	3300 3650 3500 3650
Wire Wire Line
	3500 3650 3500 3625
Wire Wire Line
	3500 3625 3650 3625
Wire Wire Line
	3650 3875 3500 3875
Wire Wire Line
	3500 3875 3500 3850
Wire Wire Line
	3500 3850 3300 3850
$EndSCHEMATC