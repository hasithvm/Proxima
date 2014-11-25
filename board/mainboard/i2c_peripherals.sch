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
Sheet 2 8
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
L S-35390A RTC1
U 1 1 54485BFB
P 2900 1850
F 0 "RTC1" H 2900 1750 60  0000 C CNN
F 1 "S-35390A" H 2900 1950 60  0000 C CNN
F 2 "~" H 2900 1950 60  0000 C CNN
F 3 "~" H 2900 1950 60  0000 C CNN
	1    2900 1850
	1    0    0    -1  
$EndComp
Text GLabel 1650 1650 0    60   Input ~ 0
RTCINT1
$Comp
L C C1
U 1 1 54485D29
P 1850 2450
F 0 "C1" H 1850 2550 40  0000 L CNN
F 1 "5pF" H 1856 2365 40  0000 L CNN
F 2 "~" H 1888 2300 30  0000 C CNN
F 3 "~" H 1850 2450 60  0000 C CNN
	1    1850 2450
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR01
U 1 1 54485DA7
P 1850 2700
F 0 "#PWR01" H 1850 2700 30  0001 C CNN
F 1 "GND" H 1850 2630 30  0001 C CNN
F 2 "" H 1850 2700 60  0000 C CNN
F 3 "" H 1850 2700 60  0000 C CNN
	1    1850 2700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 54485DC8
P 2050 2350
F 0 "#PWR02" H 2050 2350 30  0001 C CNN
F 1 "GND" H 2050 2280 30  0001 C CNN
F 2 "" H 2050 2350 60  0000 C CNN
F 3 "" H 2050 2350 60  0000 C CNN
	1    2050 2350
	1    0    0    -1  
$EndComp
$Comp
L 3V3 #PWR03
U 1 1 54485DFD
P 3800 1450
F 0 "#PWR03" H 3800 1550 40  0001 C CNN
F 1 "3V3" H 3800 1575 40  0000 C CNN
F 2 "" H 3800 1450 60  0000 C CNN
F 3 "" H 3800 1450 60  0000 C CNN
	1    3800 1450
	1    0    0    -1  
$EndComp
Text GLabel 3950 1950 2    60   Input ~ 0
I2C_CL
Text GLabel 3950 1800 2    60   Input ~ 0
I2C_DA
$Comp
L DRV8830 MC1
U 1 1 544869FB
P 9000 1850
F 0 "MC1" H 9000 1700 60  0000 C CNN
F 1 "DRV8830" H 9000 1950 60  0000 C CNN
F 2 "~" H 8950 2050 60  0000 C CNN
F 3 "~" H 8950 2050 60  0000 C CNN
	1    9000 1850
	1    0    0    -1  
$EndComp
Text Notes 2550 1250 0    60   ~ 0
Real Time Clock\nAddress 60-6F
Text GLabel 10150 1750 2    60   Input ~ 0
MOTOR1-
Text GLabel 10150 1600 2    60   Input ~ 0
MOTOR1+
$Comp
L 3V3 #PWR04
U 1 1 54486A99
P 7950 1100
F 0 "#PWR04" H 7950 1200 40  0001 C CNN
F 1 "3V3" H 7950 1225 40  0000 C CNN
F 2 "" H 7950 1100 60  0000 C CNN
F 3 "" H 7950 1100 60  0000 C CNN
	1    7950 1100
	1    0    0    -1  
$EndComp
Text GLabel 7700 1750 0    60   Input ~ 0
I2C_CL
Text GLabel 7700 1600 0    60   Input ~ 0
I2C_DA
$Comp
L GND #PWR05
U 1 1 54486B17
P 7900 2550
F 0 "#PWR05" H 7900 2550 30  0001 C CNN
F 1 "GND" H 7900 2480 30  0001 C CNN
F 2 "" H 7900 2550 60  0000 C CNN
F 3 "" H 7900 2550 60  0000 C CNN
	1    7900 2550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 54486B7F
P 9000 2800
F 0 "#PWR06" H 9000 2800 30  0001 C CNN
F 1 "GND" H 9000 2730 30  0001 C CNN
F 2 "" H 9000 2800 60  0000 C CNN
F 3 "" H 9000 2800 60  0000 C CNN
	1    9000 2800
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 54486C37
P 10050 2550
F 0 "R5" V 10130 2550 40  0000 C CNN
F 1 "0.2" V 10057 2551 40  0000 C CNN
F 2 "~" V 9980 2550 30  0000 C CNN
F 3 "~" H 10050 2550 30  0000 C CNN
	1    10050 2550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 54486C8F
P 10050 2900
F 0 "#PWR07" H 10050 2900 30  0001 C CNN
F 1 "GND" H 10050 2830 30  0001 C CNN
F 2 "" H 10050 2900 60  0000 C CNN
F 3 "" H 10050 2900 60  0000 C CNN
	1    10050 2900
	1    0    0    -1  
$EndComp
$Comp
L DRV8830 MC2
U 1 1 544871A6
P 9000 4250
F 0 "MC2" H 9000 4100 60  0000 C CNN
F 1 "DRV8830" H 9000 4350 60  0000 C CNN
F 2 "~" H 8950 4450 60  0000 C CNN
F 3 "~" H 8950 4450 60  0000 C CNN
	1    9000 4250
	1    0    0    -1  
$EndComp
Text GLabel 10150 4150 2    60   Input ~ 0
MOTOR2-
Text GLabel 10150 4000 2    60   Input ~ 0
MOTOR2+
$Comp
L 3V3 #PWR08
U 1 1 544871AE
P 7950 3500
F 0 "#PWR08" H 7950 3600 40  0001 C CNN
F 1 "3V3" H 7950 3625 40  0000 C CNN
F 2 "" H 7950 3500 60  0000 C CNN
F 3 "" H 7950 3500 60  0000 C CNN
	1    7950 3500
	1    0    0    -1  
$EndComp
Text GLabel 7700 4150 0    60   Input ~ 0
I2C_CL
Text GLabel 7700 4000 0    60   Input ~ 0
I2C_DA
$Comp
L GND #PWR09
U 1 1 544871BA
P 7900 4950
F 0 "#PWR09" H 7900 4950 30  0001 C CNN
F 1 "GND" H 7900 4880 30  0001 C CNN
F 2 "" H 7900 4950 60  0000 C CNN
F 3 "" H 7900 4950 60  0000 C CNN
	1    7900 4950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 544871C5
P 9000 5200
F 0 "#PWR010" H 9000 5200 30  0001 C CNN
F 1 "GND" H 9000 5130 30  0001 C CNN
F 2 "" H 9000 5200 60  0000 C CNN
F 3 "" H 9000 5200 60  0000 C CNN
	1    9000 5200
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 544871CE
P 10050 4950
F 0 "R6" V 10130 4950 40  0000 C CNN
F 1 "0.2" V 10057 4951 40  0000 C CNN
F 2 "~" V 9980 4950 30  0000 C CNN
F 3 "~" H 10050 4950 30  0000 C CNN
	1    10050 4950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 544871D5
P 10050 5300
F 0 "#PWR011" H 10050 5300 30  0001 C CNN
F 1 "GND" H 10050 5230 30  0001 C CNN
F 2 "" H 10050 5300 60  0000 C CNN
F 3 "" H 10050 5300 60  0000 C CNN
	1    10050 5300
	1    0    0    -1  
$EndComp
NoConn ~ 8150 4350
Text Notes 8550 3300 0    60   ~ 0
Motor 2 Driver Circuit\nI2C ADDR = 0xC2-0xC3
Text Notes 8450 900  0    60   ~ 0
Motor 1 Driver Circuit\nI2C ADDR = 0xC0-0xC1
Text GLabel 7700 2300 0    60   Input ~ 0
MOTOR1F
Text GLabel 7700 4700 0    60   Input ~ 0
MOTOR2F
Text GLabel 4600 2100 2    60   Input ~ 0
RTCINT2
$Comp
L MPU-9150 MPU1
U 1 1 54487B25
P 2900 4650
F 0 "MPU1" H 2900 4600 60  0000 C CNN
F 1 "MPU-9150" H 2900 4750 60  0000 C CNN
F 2 "~" H 3400 3900 60  0000 C CNN
F 3 "~" H 3400 3900 60  0000 C CNN
	1    2900 4650
	1    0    0    -1  
$EndComp
$Comp
L 3V3 #PWR012
U 1 1 54487B46
P 2900 3200
F 0 "#PWR012" H 2900 3300 40  0001 C CNN
F 1 "3V3" H 2900 3325 40  0000 C CNN
F 2 "" H 2900 3200 60  0000 C CNN
F 3 "" H 2900 3200 60  0000 C CNN
	1    2900 3200
	1    0    0    -1  
$EndComp
$Comp
L 3V3 #PWR013
U 1 1 54487B4C
P 3150 3200
F 0 "#PWR013" H 3150 3300 40  0001 C CNN
F 1 "3V3" H 3150 3325 40  0000 C CNN
F 2 "" H 3150 3200 60  0000 C CNN
F 3 "" H 3150 3200 60  0000 C CNN
	1    3150 3200
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 54487C27
P 4450 4700
F 0 "C4" H 4450 4800 40  0000 L CNN
F 1 "2.2nF" H 4456 4615 40  0000 L CNN
F 2 "~" H 4488 4550 30  0000 C CNN
F 3 "~" H 4450 4700 60  0000 C CNN
	1    4450 4700
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 54487C34
P 4700 4700
F 0 "C5" H 4700 4800 40  0000 L CNN
F 1 "0.1uF" H 4706 4615 40  0000 L CNN
F 2 "~" H 4738 4550 30  0000 C CNN
F 3 "~" H 4700 4700 60  0000 C CNN
	1    4700 4700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR014
U 1 1 54487CE8
P 2900 5800
F 0 "#PWR014" H 2900 5800 30  0001 C CNN
F 1 "GND" H 2900 5730 30  0001 C CNN
F 2 "" H 2900 5800 60  0000 C CNN
F 3 "" H 2900 5800 60  0000 C CNN
	1    2900 5800
	1    0    0    -1  
$EndComp
NoConn ~ 2000 5000
NoConn ~ 2000 5150
$Comp
L GND #PWR015
U 1 1 54487DE4
P 1750 5000
F 0 "#PWR015" H 1750 5000 30  0001 C CNN
F 1 "GND" H 1750 4930 30  0001 C CNN
F 2 "" H 1750 5000 60  0000 C CNN
F 3 "" H 1750 5000 60  0000 C CNN
	1    1750 5000
	1    0    0    -1  
$EndComp
Text GLabel 1650 4600 0    60   Input ~ 0
MPUINT
$Comp
L GND #PWR016
U 1 1 54487EB2
P 1850 4500
F 0 "#PWR016" H 1850 4500 30  0001 C CNN
F 1 "GND" H 1850 4430 30  0001 C CNN
F 2 "" H 1850 4500 60  0000 C CNN
F 3 "" H 1850 4500 60  0000 C CNN
	1    1850 4500
	1    0    0    -1  
$EndComp
Text GLabel 1700 4050 0    60   Input ~ 0
I2C_CL
Text GLabel 1700 4200 0    60   Input ~ 0
I2C_DA
$Comp
L GND #PWR017
U 1 1 54487F92
P 4600 5150
F 0 "#PWR017" H 4600 5150 30  0001 C CNN
F 1 "GND" H 4600 5080 30  0001 C CNN
F 2 "" H 4600 5150 60  0000 C CNN
F 3 "" H 4600 5150 60  0000 C CNN
	1    4600 5150
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 54488031
P 3450 3500
F 0 "C3" H 3450 3600 40  0000 L CNN
F 1 "10nF" H 3456 3415 40  0000 L CNN
F 2 "~" H 3488 3350 30  0000 C CNN
F 3 "~" H 3450 3500 60  0000 C CNN
	1    3450 3500
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 544880D6
P 2350 3500
F 0 "C2" H 2350 3600 40  0000 L CNN
F 1 "0.1uF" H 2356 3415 40  0000 L CNN
F 2 "~" H 2388 3350 30  0000 C CNN
F 3 "~" H 2350 3500 60  0000 C CNN
	1    2350 3500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR018
U 1 1 54488133
P 3450 3800
F 0 "#PWR018" H 3450 3800 30  0001 C CNN
F 1 "GND" H 3450 3730 30  0001 C CNN
F 2 "" H 3450 3800 60  0000 C CNN
F 3 "" H 3450 3800 60  0000 C CNN
	1    3450 3800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR019
U 1 1 54488142
P 2350 3800
F 0 "#PWR019" H 2350 3800 30  0001 C CNN
F 1 "GND" H 2350 3730 30  0001 C CNN
F 2 "" H 2350 3800 60  0000 C CNN
F 3 "" H 2350 3800 60  0000 C CNN
	1    2350 3800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR020
U 1 1 544882A5
P 3950 5150
F 0 "#PWR020" H 3950 5150 30  0001 C CNN
F 1 "GND" H 3950 5080 30  0001 C CNN
F 2 "" H 3950 5150 60  0000 C CNN
F 3 "" H 3950 5150 60  0000 C CNN
	1    3950 5150
	1    0    0    -1  
$EndComp
Text GLabel 5200 6250 0    60   Input ~ 0
I2C_CL
Text GLabel 5200 6400 0    60   Input ~ 0
I2C_DA
$Comp
L R R3
U 1 1 5467D6CE
P 5500 5900
F 0 "R3" V 5580 5900 40  0000 C CNN
F 1 "4.7k" V 5507 5901 40  0000 C CNN
F 2 "~" V 5430 5900 30  0000 C CNN
F 3 "~" H 5500 5900 30  0000 C CNN
	1    5500 5900
	1    0    0    -1  
$EndComp
$Comp
L 3V3 #PWR021
U 1 1 5467D7BD
P 5500 5450
F 0 "#PWR021" H 5500 5550 40  0001 C CNN
F 1 "3V3" H 5500 5575 40  0000 C CNN
F 2 "" H 5500 5450 60  0000 C CNN
F 3 "" H 5500 5450 60  0000 C CNN
	1    5500 5450
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 5467D816
P 5700 5900
F 0 "R4" V 5780 5900 40  0000 C CNN
F 1 "4.7k" V 5707 5901 40  0000 C CNN
F 2 "~" V 5630 5900 30  0000 C CNN
F 3 "~" H 5700 5900 30  0000 C CNN
	1    5700 5900
	1    0    0    -1  
$EndComp
$Comp
L 3V3 #PWR022
U 1 1 5467D81C
P 5700 5450
F 0 "#PWR022" H 5700 5550 40  0001 C CNN
F 1 "3V3" H 5700 5575 40  0000 C CNN
F 2 "" H 5700 5450 60  0000 C CNN
F 3 "" H 5700 5450 60  0000 C CNN
	1    5700 5450
	1    0    0    -1  
$EndComp
$Comp
L CONN_4 P1
U 1 1 546AB17E
P 6650 6400
F 0 "P1" V 6600 6400 50  0000 C CNN
F 1 "I2C" V 6700 6400 50  0000 C CNN
F 2 "" H 6650 6400 60  0000 C CNN
F 3 "" H 6650 6400 60  0000 C CNN
	1    6650 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 1650 1650 1650
Wire Wire Line
	1600 1950 2100 1950
Wire Wire Line
	1850 1950 1850 2250
Wire Wire Line
	1850 2650 1850 2700
Wire Wire Line
	2050 2350 2050 2100
Wire Wire Line
	2050 2100 2100 2100
Wire Wire Line
	3800 1450 3800 1650
Wire Wire Line
	3800 1650 3700 1650
Wire Wire Line
	3950 1950 3700 1950
Wire Wire Line
	3700 1800 3950 1800
Wire Wire Line
	8150 1400 7950 1400
Wire Wire Line
	7950 1400 7950 1100
Wire Wire Line
	8150 1600 7700 1600
Wire Wire Line
	7700 1750 8150 1750
Wire Wire Line
	8150 1950 7900 1950
Wire Wire Line
	7900 1950 7900 2550
Wire Wire Line
	8150 2100 7900 2100
Connection ~ 7900 2100
Wire Wire Line
	9000 2700 9000 2800
Wire Wire Line
	10150 1600 9850 1600
Wire Wire Line
	9850 1750 10150 1750
Wire Wire Line
	9850 2300 10050 2300
Wire Wire Line
	10050 2800 10050 2900
Wire Wire Line
	8150 3800 7950 3800
Wire Wire Line
	7950 3800 7950 3500
Wire Wire Line
	8150 4000 7700 4000
Wire Wire Line
	7700 4150 8150 4150
Wire Wire Line
	8150 4500 7900 4500
Wire Wire Line
	9000 5100 9000 5200
Wire Wire Line
	10150 4000 9850 4000
Wire Wire Line
	9850 4150 10150 4150
Wire Wire Line
	9850 4700 10050 4700
Wire Wire Line
	10050 5200 10050 5300
Wire Wire Line
	7900 4500 7900 4950
Wire Wire Line
	7700 2300 8150 2300
Wire Wire Line
	7700 4700 8150 4700
Wire Wire Line
	3700 2100 4600 2100
Wire Wire Line
	2900 3200 2900 3650
Wire Wire Line
	3150 3200 3150 3650
Wire Wire Line
	3800 4350 4700 4350
Wire Wire Line
	4700 4350 4700 4500
Wire Wire Line
	3800 4500 4450 4500
Wire Wire Line
	2900 5800 2900 5550
Wire Wire Line
	2650 5550 2650 5650
Wire Wire Line
	2650 5650 3150 5650
Connection ~ 2900 5650
Wire Wire Line
	3150 5650 3150 5550
Wire Wire Line
	2000 4800 1750 4800
Wire Wire Line
	1750 4800 1750 5000
Wire Wire Line
	1650 4600 2000 4600
Wire Wire Line
	1850 4500 1850 4400
Wire Wire Line
	1850 4400 2000 4400
Wire Wire Line
	1700 4050 2000 4050
Wire Wire Line
	1700 4200 2000 4200
Wire Wire Line
	4600 5150 4600 5000
Wire Wire Line
	4450 5000 4700 5000
Wire Wire Line
	4450 5000 4450 4900
Wire Wire Line
	4700 5000 4700 4900
Connection ~ 4600 5000
Wire Wire Line
	3150 3250 3450 3250
Wire Wire Line
	3450 3250 3450 3300
Connection ~ 3150 3250
Wire Wire Line
	2350 3700 2350 3800
Wire Wire Line
	3450 3700 3450 3800
Wire Wire Line
	2900 3250 2350 3250
Wire Wire Line
	2350 3250 2350 3300
Connection ~ 2900 3250
Wire Wire Line
	3950 5150 3950 4900
Wire Wire Line
	3950 4900 3800 4900
Wire Wire Line
	5500 6250 5500 6150
Wire Wire Line
	5500 5650 5500 5450
Wire Wire Line
	5700 5650 5700 5450
Wire Wire Line
	5200 6400 5700 6400
Connection ~ 5500 6250
Wire Wire Line
	5200 6250 6300 6250
Wire Wire Line
	5700 6400 5700 6150
Wire Wire Line
	5700 6350 6300 6350
Connection ~ 5700 6350
$Comp
L 3V3 #PWR023
U 1 1 546AB46C
P 6200 6150
F 0 "#PWR023" H 6200 6250 40  0001 C CNN
F 1 "3V3" H 6200 6275 40  0000 C CNN
F 2 "" H 6200 6150 60  0000 C CNN
F 3 "" H 6200 6150 60  0000 C CNN
	1    6200 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 6450 6200 6450
Wire Wire Line
	6200 6450 6200 6150
$Comp
L GND #PWR024
U 1 1 546AB4C5
P 6200 6700
F 0 "#PWR024" H 6200 6700 30  0001 C CNN
F 1 "GND" H 6200 6630 30  0001 C CNN
F 2 "" H 6200 6700 60  0000 C CNN
F 3 "" H 6200 6700 60  0000 C CNN
	1    6200 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 6700 6200 6550
Wire Wire Line
	6200 6550 6300 6550
Text GLabel 9150 6250 0    60   Input ~ 0
MOTOR1-
Text GLabel 9150 6050 0    60   Input ~ 0
MOTOR1+
Text GLabel 9150 6750 0    60   Input ~ 0
MOTOR2-
Text GLabel 9150 6550 0    60   Input ~ 0
MOTOR2+
$Comp
L CRYSTAL X1
U 1 1 546AD855
P 1200 2100
F 0 "X1" H 1200 2250 60  0000 C CNN
F 1 "32.768KHz" H 1200 1950 60  0000 C CNN
F 2 "~" H 1200 2100 60  0000 C CNN
F 3 "~" H 1200 2100 60  0000 C CNN
	1    1200 2100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2100 1800 1200 1800
Wire Wire Line
	1200 2400 1600 2400
Wire Wire Line
	1600 2400 1600 1950
Connection ~ 1850 1950
$Comp
L R R2
U 1 1 54727DCC
P 4450 1700
F 0 "R2" V 4530 1700 40  0000 C CNN
F 1 "10K" V 4457 1701 40  0000 C CNN
F 2 "~" V 4380 1700 30  0000 C CNN
F 3 "~" H 4450 1700 30  0000 C CNN
	1    4450 1700
	1    0    0    -1  
$EndComp
$Comp
L 3V3 #PWR025
U 1 1 54727DD2
P 4450 1250
F 0 "#PWR025" H 4450 1350 40  0001 C CNN
F 1 "3V3" H 4450 1375 40  0000 C CNN
F 2 "" H 4450 1250 60  0000 C CNN
F 3 "" H 4450 1250 60  0000 C CNN
	1    4450 1250
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 54727DD8
P 1950 1300
F 0 "R1" V 2030 1300 40  0000 C CNN
F 1 "10K" V 1957 1301 40  0000 C CNN
F 2 "~" V 1880 1300 30  0000 C CNN
F 3 "~" H 1950 1300 30  0000 C CNN
	1    1950 1300
	1    0    0    -1  
$EndComp
$Comp
L 3V3 #PWR026
U 1 1 54727DDE
P 1950 850
F 0 "#PWR026" H 1950 950 40  0001 C CNN
F 1 "3V3" H 1950 975 40  0000 C CNN
F 2 "" H 1950 850 60  0000 C CNN
F 3 "" H 1950 850 60  0000 C CNN
	1    1950 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 1450 4450 1250
Wire Wire Line
	1950 1050 1950 850 
Wire Wire Line
	1950 1550 1950 1650
Connection ~ 1950 1650
Wire Wire Line
	4450 1950 4450 2100
Connection ~ 4450 2100
$Comp
L CONN_2 P2
U 1 1 5472816B
P 9650 6150
F 0 "P2" V 9600 6150 40  0000 C CNN
F 1 "Motor1" V 9700 6150 40  0000 C CNN
F 2 "" H 9650 6150 60  0000 C CNN
F 3 "" H 9650 6150 60  0000 C CNN
	1    9650 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 6050 9300 6050
Wire Wire Line
	9150 6250 9300 6250
$Comp
L CONN_2 P3
U 1 1 54728242
P 9650 6650
F 0 "P3" V 9600 6650 40  0000 C CNN
F 1 "Motor2" V 9700 6650 40  0000 C CNN
F 2 "" H 9650 6650 60  0000 C CNN
F 3 "" H 9650 6650 60  0000 C CNN
	1    9650 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 6550 9300 6550
Wire Wire Line
	9150 6750 9300 6750
Wire Wire Line
	2650 3650 2650 3250
Connection ~ 2650 3250
$EndSCHEMATC
