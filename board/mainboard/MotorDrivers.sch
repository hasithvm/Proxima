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
Sheet 3 10
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 8225 2225 2    60   Input ~ 0
MOTOR1-
Text GLabel 8225 2025 2    60   Input ~ 0
MOTOR1+
$Comp
L 3V3 #PWR013
U 1 1 55A6155E
P 7275 850
F 0 "#PWR013" H 7275 950 40  0001 C CNN
F 1 "3V3" H 7275 975 40  0000 C CNN
F 2 "" H 7275 850 60  0000 C CNN
F 3 "" H 7275 850 60  0000 C CNN
	1    7275 850 
	1    0    0    -1  
$EndComp
Text Notes 6475 3425 0    60   ~ 0
Motor 1 Driver Circuit\n
$Comp
L ZXBM5210-SP U8
U 1 1 55A61565
P 7500 2775
F 0 "U8" H 7625 2750 60  0000 C CNN
F 1 "ZXBM5210-SP" H 7275 3150 60  0000 C CNN
F 2 "footprints:ZXBM5210_" H 7375 2775 60  0001 C CNN
F 3 "" H 7375 2775 60  0000 C CNN
	1    7500 2775
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR014
U 1 1 55A6156D
P 7275 3200
F 0 "#PWR014" H 7275 3200 30  0001 C CNN
F 1 "GND" H 7275 3130 30  0001 C CNN
F 2 "" H 7275 3200 60  0000 C CNN
F 3 "" H 7275 3200 60  0000 C CNN
	1    7275 3200
	1    0    0    -1  
$EndComp
$Comp
L C C28
U 1 1 55A6157F
P 7650 1325
F 0 "C28" H 7650 1425 40  0000 L CNN
F 1 "0.1uF" H 7656 1240 40  0000 L CNN
F 2 "Capacitors_SMD:c_0603" H 7688 1175 30  0001 C CNN
F 3 "" H 7650 1325 60  0000 C CNN
	1    7650 1325
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR015
U 1 1 55A6158B
P 7650 1575
F 0 "#PWR015" H 7650 1575 30  0001 C CNN
F 1 "GND" H 7650 1505 30  0001 C CNN
F 2 "" H 7650 1575 60  0000 C CNN
F 3 "" H 7650 1575 60  0000 C CNN
	1    7650 1575
	1    0    0    -1  
$EndComp
Text GLabel 6125 1250 0    60   Input ~ 0
VBAT
$Comp
L C C15
U 1 1 55A61593
P 6325 1550
F 0 "C15" H 6325 1650 40  0000 L CNN
F 1 "10uF" H 6331 1465 40  0000 L CNN
F 2 "Capacitors_SMD:c_0805" H 6363 1400 30  0001 C CNN
F 3 "" H 6325 1550 60  0000 C CNN
	1    6325 1550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR016
U 1 1 55A6159F
P 6325 1800
F 0 "#PWR016" H 6325 1800 30  0001 C CNN
F 1 "GND" H 6325 1730 30  0001 C CNN
F 2 "" H 6325 1800 60  0000 C CNN
F 3 "" H 6325 1800 60  0000 C CNN
	1    6325 1800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR017
U 1 1 55A615A7
P 6325 4700
F 0 "#PWR017" H 6325 4700 30  0001 C CNN
F 1 "GND" H 6325 4630 30  0001 C CNN
F 2 "" H 6325 4700 60  0000 C CNN
F 3 "" H 6325 4700 60  0000 C CNN
	1    6325 4700
	1    0    0    -1  
$EndComp
$Comp
L C C27
U 1 1 55A615B2
P 6325 4450
F 0 "C27" H 6325 4550 40  0000 L CNN
F 1 "10uF" H 6331 4365 40  0000 L CNN
F 2 "Capacitors_SMD:c_0805" H 6363 4300 30  0001 C CNN
F 3 "" H 6325 4450 60  0000 C CNN
	1    6325 4450
	1    0    0    -1  
$EndComp
Text GLabel 6150 4150 0    60   Input ~ 0
VBAT
$Comp
L GND #PWR018
U 1 1 55A615BB
P 7650 4475
F 0 "#PWR018" H 7650 4475 30  0001 C CNN
F 1 "GND" H 7650 4405 30  0001 C CNN
F 2 "" H 7650 4475 60  0000 C CNN
F 3 "" H 7650 4475 60  0000 C CNN
	1    7650 4475
	1    0    0    -1  
$EndComp
$Comp
L C C30
U 1 1 55A615C6
P 7650 4225
F 0 "C30" H 7650 4325 40  0000 L CNN
F 1 "0.1uF" H 7656 4140 40  0000 L CNN
F 2 "Capacitors_SMD:c_0603" H 7688 4075 30  0001 C CNN
F 3 "" H 7650 4225 60  0000 C CNN
	1    7650 4225
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR019
U 1 1 55A615D9
P 7275 6100
F 0 "#PWR019" H 7275 6100 30  0001 C CNN
F 1 "GND" H 7275 6030 30  0001 C CNN
F 2 "" H 7275 6100 60  0000 C CNN
F 3 "" H 7275 6100 60  0000 C CNN
	1    7275 6100
	1    0    0    -1  
$EndComp
$Comp
L ZXBM5210-SP U9
U 1 1 55A615E0
P 7500 5675
F 0 "U9" H 7625 5650 60  0000 C CNN
F 1 "ZXBM5210-SP" H 7275 6050 60  0000 C CNN
F 2 "footprints:ZXBM5210_" H 7375 5675 60  0001 C CNN
F 3 "" H 7375 5675 60  0000 C CNN
	1    7500 5675
	1    0    0    -1  
$EndComp
Text Notes 6500 6375 0    60   ~ 0
Motor 2 Driver Circuit\n
$Comp
L 3V3 #PWR020
U 1 1 55A615E8
P 7275 3750
F 0 "#PWR020" H 7275 3850 40  0001 C CNN
F 1 "3V3" H 7275 3875 40  0000 C CNN
F 2 "" H 7275 3750 60  0000 C CNN
F 3 "" H 7275 3750 60  0000 C CNN
	1    7275 3750
	1    0    0    -1  
$EndComp
Text GLabel 8225 4925 2    60   Input ~ 0
MOTOR2+
Text GLabel 8225 5125 2    60   Input ~ 0
MOTOR2-
$Comp
L CONN_01X02 P3
U 1 1 55A615FD
P 10550 3350
F 0 "P3" H 10550 3500 50  0000 C CNN
F 1 "Motor1" V 10650 3350 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 10550 3350 60  0001 C CNN
F 3 "" H 10550 3350 60  0000 C CNN
	1    10550 3350
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P17
U 1 1 55A61604
P 10600 3850
F 0 "P17" V 10550 3850 40  0000 C CNN
F 1 "Motor2" V 10650 3850 40  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 10600 3850 60  0001 C CNN
F 3 "" H 10600 3850 60  0000 C CNN
	1    10600 3850
	1    0    0    -1  
$EndComp
Text GLabel 10100 3750 0    60   Input ~ 0
MOTOR2+
Text GLabel 10100 3950 0    60   Input ~ 0
MOTOR2-
Text GLabel 10100 3250 0    60   Input ~ 0
MOTOR1+
Text GLabel 10100 3450 0    60   Input ~ 0
MOTOR1-
Text HLabel 4800 2925 2    60   Input ~ 0
I2C_DA
Text HLabel 4800 3025 2    60   Input ~ 0
I2C_CL
$Comp
L MKE04Z8VTG U7
U 1 1 55A63136
P 3700 4400
F 0 "U7" H 3700 4400 60  0000 C CNN
F 1 "MKE04Z8VTG" H 3675 4750 60  0000 C CNN
F 2 "footprints:MKE04_" H 3700 4400 60  0001 C CNN
F 3 "" H 3700 4400 60  0000 C CNN
	1    3700 4400
	1    0    0    -1  
$EndComp
$Comp
L 3V3 #PWR021
U 1 1 55A632EE
P 2500 3825
F 0 "#PWR021" H 2500 3925 40  0001 C CNN
F 1 "3V3" H 2500 3950 40  0000 C CNN
F 2 "" H 2500 3825 60  0000 C CNN
F 3 "" H 2500 3825 60  0000 C CNN
	1    2500 3825
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR022
U 1 1 55A633A6
P 2500 4525
F 0 "#PWR022" H 2500 4525 30  0001 C CNN
F 1 "GND" H 2500 4455 30  0001 C CNN
F 2 "" H 2500 4525 60  0000 C CNN
F 3 "" H 2500 4525 60  0000 C CNN
	1    2500 4525
	1    0    0    -1  
$EndComp
$Comp
L C C14
U 1 1 55A633E7
P 2500 4225
F 0 "C14" H 2500 4325 40  0000 L CNN
F 1 "0.1uF" H 2506 4140 40  0000 L CNN
F 2 "Capacitors_SMD:c_0603" H 2538 4075 30  0001 C CNN
F 3 "" H 2500 4225 60  0000 C CNN
	1    2500 4225
	1    0    0    -1  
$EndComp
Text Label 3325 1300 2    60   ~ 0
SWDIO_KE04
Text Label 3325 1400 2    60   ~ 0
SWDCLK_KE04
Text Label 2200 2825 0    60   ~ 0
SWDIO_KE04
Text Label 2200 2925 0    60   ~ 0
SWDCLK_KE04
Text Label 3325 1700 2    60   ~ 0
nRESET_KE04
Text Label 2200 2725 0    60   ~ 0
nRESET_KE04
$Comp
L 3V3 #PWR023
U 1 1 55A75D91
P 1600 1200
F 0 "#PWR023" H 1600 1300 40  0001 C CNN
F 1 "3V3" H 1600 1325 40  0000 C CNN
F 2 "" H 1600 1200 60  0000 C CNN
F 3 "" H 1600 1200 60  0000 C CNN
	1    1600 1200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR024
U 1 1 55A75F3F
P 1600 1875
F 0 "#PWR024" H 1600 1875 30  0001 C CNN
F 1 "GND" H 1600 1805 30  0001 C CNN
F 2 "" H 1600 1875 60  0000 C CNN
F 3 "" H 1600 1875 60  0000 C CNN
	1    1600 1875
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 55A761C4
P 2525 3225
F 0 "R6" V 2605 3225 40  0000 C CNN
F 1 "10k" V 2532 3226 40  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 2455 3225 30  0001 C CNN
F 3 "" H 2525 3225 30  0000 C CNN
	1    2525 3225
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR025
U 1 1 55A764B7
P 2525 3525
F 0 "#PWR025" H 2525 3525 30  0001 C CNN
F 1 "GND" H 2525 3455 30  0001 C CNN
F 2 "" H 2525 3525 60  0000 C CNN
F 3 "" H 2525 3525 60  0000 C CNN
	1    2525 3525
	1    0    0    -1  
$EndComp
Text Label 6225 2025 0    60   ~ 0
M1_FWD
Text Label 6225 4925 0    60   ~ 0
M2_FWD
Text Label 6225 5125 0    60   ~ 0
M2_REV
Text Label 6225 2225 0    60   ~ 0
M1_REV
$Comp
L R R5
U 1 1 55A77D11
P 2150 2425
F 0 "R5" V 2230 2425 40  0000 C CNN
F 1 "10k" V 2157 2426 40  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 2080 2425 30  0001 C CNN
F 3 "" H 2150 2425 30  0000 C CNN
	1    2150 2425
	1    0    0    -1  
$EndComp
$Comp
L 3V3 #PWR026
U 1 1 55A77DF0
P 2150 2175
F 0 "#PWR026" H 2150 2275 40  0001 C CNN
F 1 "3V3" H 2150 2300 40  0000 C CNN
F 2 "" H 2150 2175 60  0000 C CNN
F 3 "" H 2150 2175 60  0000 C CNN
	1    2150 2175
	1    0    0    -1  
$EndComp
Wire Wire Line
	7325 3125 7325 3000
Wire Wire Line
	7225 3000 7225 3125
Wire Wire Line
	7225 3125 7325 3125
Wire Wire Line
	7275 3125 7275 3200
Connection ~ 7275 3125
Wire Wire Line
	7975 2025 8225 2025
Wire Wire Line
	7975 2225 8225 2225
Wire Wire Line
	7375 1375 7375 1300
Wire Wire Line
	7375 1300 7275 1300
Wire Wire Line
	7275 1275 7275 1375
Connection ~ 7275 1300
Wire Wire Line
	7275 1300 7275 850 
Wire Wire Line
	7275 1000 7650 1000
Wire Wire Line
	7650 1000 7650 1125
Connection ~ 7275 1000
Wire Wire Line
	7650 1525 7650 1575
Wire Wire Line
	6325 1250 6325 1350
Connection ~ 6325 1250
Wire Wire Line
	6325 1750 6325 1800
Wire Wire Line
	6325 4650 6325 4700
Connection ~ 6325 4150
Wire Wire Line
	6325 4150 6325 4250
Wire Wire Line
	6575 4150 6575 4725
Wire Wire Line
	6150 4150 6575 4150
Wire Wire Line
	7650 4425 7650 4475
Connection ~ 7275 3900
Wire Wire Line
	7650 3900 7650 4025
Wire Wire Line
	7275 3900 7650 3900
Wire Wire Line
	7275 3750 7275 4275
Connection ~ 7275 4200
Wire Wire Line
	7275 4175 7275 4200
Wire Wire Line
	7275 4200 7375 4200
Wire Wire Line
	7375 4200 7375 4275
Wire Wire Line
	7975 5125 8225 5125
Wire Wire Line
	7975 4925 8225 4925
Connection ~ 7275 6025
Wire Wire Line
	7275 6025 7275 6100
Wire Wire Line
	7225 6025 7325 6025
Wire Wire Line
	7225 5900 7225 6025
Wire Wire Line
	7325 6025 7325 5900
Wire Wire Line
	10250 3900 10400 3900
Wire Wire Line
	10250 3950 10250 3900
Wire Wire Line
	10250 3800 10400 3800
Wire Wire Line
	10250 3750 10250 3800
Wire Wire Line
	10400 3800 10400 3750
Wire Wire Line
	10250 3400 10250 3450
Wire Wire Line
	10350 3400 10250 3400
Wire Wire Line
	10250 3300 10250 3250
Wire Wire Line
	10350 3300 10250 3300
Wire Wire Line
	10100 3950 10250 3950
Wire Wire Line
	10100 3750 10250 3750
Wire Wire Line
	10250 3450 10100 3450
Wire Wire Line
	10250 3250 10100 3250
Wire Wire Line
	2500 3825 2500 4025
Wire Wire Line
	2775 4100 2775 4475
Wire Wire Line
	2775 4000 2500 4000
Connection ~ 2500 4000
Wire Wire Line
	2500 4425 2500 4525
Wire Wire Line
	2775 4475 2500 4475
Connection ~ 2500 4475
Wire Wire Line
	2700 1300 3325 1300
Wire Wire Line
	2700 1400 3325 1400
Wire Wire Line
	2700 1700 3325 1700
Wire Wire Line
	2150 2725 2775 2725
Wire Wire Line
	2200 2825 2775 2825
Wire Wire Line
	2200 2925 2775 2925
Wire Wire Line
	2525 3475 2525 3525
Wire Wire Line
	2525 2975 2525 2925
Connection ~ 2525 2925
Wire Wire Line
	4625 2925 4800 2925
Wire Wire Line
	4625 3025 4800 3025
Wire Wire Line
	6575 2025 6225 2025
Wire Wire Line
	6575 2225 6225 2225
Wire Wire Line
	6575 4925 6225 4925
Wire Wire Line
	6575 5125 6225 5125
Wire Wire Line
	2150 2725 2150 2675
Wire Wire Line
	4625 3325 5150 3325
Wire Wire Line
	4625 3425 5150 3425
Text Label 5150 3325 2    60   ~ 0
M1_FWD
Text Label 5150 3425 2    60   ~ 0
M2_FWD
Text Label 5150 3525 2    60   ~ 0
M1_REV
Wire Wire Line
	4625 3625 5150 3625
Text Label 5150 3625 2    60   ~ 0
M2_REV
Wire Wire Line
	4625 3525 5150 3525
Wire Wire Line
	4625 2825 4800 2825
Text GLabel 4800 2825 2    60   Input ~ 0
CMP_VBAT
NoConn ~ 4625 3225
NoConn ~ 4625 3725
NoConn ~ 4625 3825
Wire Wire Line
	4625 3125 4800 3125
Text GLabel 4800 3125 2    60   Input ~ 0
PCINT
Wire Wire Line
	6550 1825 6575 1825
Wire Wire Line
	6550 1250 6550 1825
Connection ~ 6550 1250
Wire Wire Line
	6125 1250 6550 1250
$Comp
L CONN_CORTEXDBG P2
U 1 1 55A74FFD
P 2150 1500
F 0 "P2" H 1850 1850 50  0000 C CNN
F 1 "SWD_KE04" H 2150 1200 50  0000 C CNN
F 2 "footprints:2x5_Debug_Header" H 2150 300 60  0001 C CNN
F 3 "" H 2150 300 60  0000 C CNN
	1    2150 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 1700 1600 1700
Wire Wire Line
	1600 1700 1600 1875
Wire Wire Line
	1650 1400 1600 1400
Wire Wire Line
	1600 1400 1600 1725
Connection ~ 1600 1725
Wire Wire Line
	1650 1500 1600 1500
Connection ~ 1600 1500
Wire Wire Line
	1650 1300 1600 1300
Wire Wire Line
	1600 1300 1600 1200
NoConn ~ 2700 1500
NoConn ~ 2700 1600
$EndSCHEMATC
