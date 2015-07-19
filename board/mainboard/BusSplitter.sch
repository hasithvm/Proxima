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
Sheet 6 10
Title ""
Date "3 mar 2015"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 7300 5150 0    60   Input ~ 0
I2C_DA_LP
Text GLabel 6750 5050 0    60   Input ~ 0
I2C_CL_LP
Text GLabel 2750 4650 0    60   Input ~ 0
SPI_SCK_LP
Text GLabel 2750 3600 0    60   Input ~ 0
SPI_MOSI_LP
Text GLabel 2750 3450 0    60   Input ~ 0
SPI_MISO_LP
Text GLabel 5250 5800 2    60   Input ~ 0
SPI_SEL0_LP
Text GLabel 2750 3000 0    60   Input ~ 0
SPI_SEL1_LP
Text GLabel 2750 3150 0    60   Input ~ 0
SPI_SEL2_LP
Text GLabel 2750 4350 0    60   Input ~ 0
UART_RX_LP
Text GLabel 2750 4500 0    60   Input ~ 0
UART_TX_LP
Text GLabel 5250 4300 2    60   Input ~ 0
SPI_SCK
Text GLabel 5250 4150 2    60   Input ~ 0
SPI_MOSI
Text GLabel 5250 4000 2    60   Input ~ 0
SPI_MISO
Text GLabel 5250 5500 2    60   Input ~ 0
UART_RX
Text GLabel 5250 5650 2    60   Input ~ 0
UART_TX
Text GLabel 5250 3850 2    60   Input ~ 0
CC_CONTROL
Text GLabel 8250 3450 0    60   Input ~ 0
SPI_SCK_CC
Text GLabel 8250 3600 0    60   Input ~ 0
SPI_MOSI_CC
Text GLabel 8250 3750 0    60   Input ~ 0
SPI_MISO_CC
Text GLabel 5250 3400 2    60   Input ~ 0
SPI_SEL0_CC
Text GLabel 5250 3550 2    60   Input ~ 0
SPI_SEL1_CC
Text GLabel 5250 3700 2    60   Input ~ 0
SPI_SEL2_CC
Text GLabel 8250 3900 0    60   Input ~ 0
UART_RX_CC
Text GLabel 8250 4050 0    60   Input ~ 0
UART_TX_CC
Text GLabel 8550 3450 2    60   Input ~ 0
SPI_SCK
Text GLabel 8550 3600 2    60   Input ~ 0
SPI_MOSI
Text GLabel 8550 3750 2    60   Input ~ 0
SPI_MISO
Text GLabel 8550 3900 2    60   Input ~ 0
UART_RX
Text GLabel 8550 4050 2    60   Input ~ 0
UART_TX
Text GLabel 9500 5150 2    60   Input ~ 0
I2C_DA
Text GLabel 9950 5050 2    60   Input ~ 0
I2C_CL
Text GLabel 7900 5450 0    60   Input ~ 0
CC_CONTROL
Text GLabel 8250 3150 0    60   Input ~ 0
I2C_DA_CC
Text GLabel 8250 3300 0    60   Input ~ 0
I2C_CL_CC
Text GLabel 8550 3150 2    60   Input ~ 0
I2C_DA
Text GLabel 8550 3300 2    60   Input ~ 0
I2C_CL
$Comp
L PCA9515B U6
U 1 1 54723DAE
P 8500 5300
F 0 "U6" H 8500 5350 60  0000 C CNN
F 1 "PCA9515B" H 8500 5700 60  0000 C CNN
F 2 "" H 8500 5700 60  0001 C CNN
F 3 "" H 8500 5700 60  0000 C CNN
	1    8500 5300
	1    0    0    -1  
$EndComp
$Comp
L 3V3 #PWR056
U 1 1 54723DBD
P 7950 4900
F 0 "#PWR056" H 7950 5000 40  0001 C CNN
F 1 "3V3" H 7950 5025 40  0000 C CNN
F 2 "" H 7950 4900 60  0000 C CNN
F 3 "" H 7950 4900 60  0000 C CNN
	1    7950 4900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR057
U 1 1 54723E16
P 7950 5700
F 0 "#PWR057" H 7950 5700 30  0001 C CNN
F 1 "GND" H 7950 5630 30  0001 C CNN
F 2 "" H 7950 5700 60  0000 C CNN
F 3 "" H 7950 5700 60  0000 C CNN
	1    7950 5700
	1    0    0    -1  
$EndComp
Text GLabel 2750 3300 0    60   Input ~ 0
GLCD_A0_LP
Text GLabel 5300 4450 2    60   Input ~ 0
GLCD_A0
Text GLabel 5250 5350 2    60   Input ~ 0
SPI_CS1
Text GLabel 5250 5200 2    60   Input ~ 0
SPI_CS2
Text GLabel 5250 5050 2    60   Input ~ 0
SPI_CS3
Text GLabel 6300 5750 2    60   Input ~ 0
SPI_CS4
Text GLabel 5250 4900 2    60   Input ~ 0
SPI_CS5
Text GLabel 5250 4750 2    60   Input ~ 0
SPI_CS6
Text GLabel 5250 4600 2    60   Input ~ 0
SPI_CS7
$Comp
L XC2C32A U1
U 1 1 54DD81D8
P 4000 4150
F 0 "U1" H 4000 4150 60  0000 C CNN
F 1 "XC2C32A" H 4000 5400 60  0000 C CNN
F 2 "footprints:CoolrunnerII" H 4000 4800 60  0000 C CNN
F 3 "~" H 4000 4800 60  0000 C CNN
	1    4000 4150
	1    0    0    -1  
$EndComp
$Comp
L 3V3 #PWR058
U 1 1 54DD88EA
P 4850 2750
F 0 "#PWR058" H 4850 2850 40  0001 C CNN
F 1 "3V3" H 4850 2875 40  0000 C CNN
F 2 "" H 4850 2750 60  0000 C CNN
F 3 "" H 4850 2750 60  0000 C CNN
	1    4850 2750
	1    0    0    -1  
$EndComp
$Comp
L 1V8 #PWR059
U 1 1 54DD8CFA
P 1950 4550
F 0 "#PWR059" H 1950 4690 20  0001 C CNN
F 1 "1V8" H 1950 4660 30  0000 C CNN
F 2 "" H 1950 4550 60  0000 C CNN
F 3 "" H 1950 4550 60  0000 C CNN
	1    1950 4550
	1    0    0    -1  
$EndComp
Text GLabel 5250 3200 2    60   Input ~ 0
CPLD_TDO
Text GLabel 2750 3900 0    60   Input ~ 0
CPLD_TDI
Text GLabel 2750 4050 0    60   Input ~ 0
CPLD_TMS
Text GLabel 2750 4200 0    60   Input ~ 0
CPLD_TCK
NoConn ~ 3200 3800
NoConn ~ 3200 4800
NoConn ~ 3200 4900
NoConn ~ 3200 5000
Text GLabel 8250 3000 0    60   Input ~ 0
SPI_CS5
Text GLabel 8550 3000 2    60   Input ~ 0
SPI_CS_CC
Text GLabel 5950 1400 0    60   Input ~ 0
CPLD_TDO
Text GLabel 5950 1550 0    60   Input ~ 0
CPLD_TDI
Text GLabel 5950 1700 0    60   Input ~ 0
CPLD_TMS
Text GLabel 5950 1250 0    60   Input ~ 0
CPLD_TCK
$Comp
L CONN_01X06 P11
U 1 1 54DE1CE8
P 6800 1450
F 0 "P11" V 6750 1450 60  0000 C CNN
F 1 "CPLD_JTAG" V 6850 1450 60  0000 C CNN
F 2 "" H 6800 1450 60  0001 C CNN
F 3 "" H 6800 1450 60  0000 C CNN
	1    6800 1450
	1    0    0    -1  
$EndComp
$Comp
L 3V3 #PWR060
U 1 1 54DE1F75
P 6400 900
F 0 "#PWR060" H 6400 1000 40  0001 C CNN
F 1 "3V3" H 6400 1025 40  0000 C CNN
F 2 "" H 6400 900 60  0000 C CNN
F 3 "" H 6400 900 60  0000 C CNN
	1    6400 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 5050 8050 5050
Wire Wire Line
	7300 5150 8050 5150
Wire Wire Line
	8950 5050 9950 5050
Wire Wire Line
	8950 5150 9500 5150
Wire Wire Line
	7950 4900 7950 5350
Wire Wire Line
	7950 5350 8050 5350
Wire Wire Line
	8050 5550 7950 5550
Wire Wire Line
	7950 5550 7950 5700
Wire Wire Line
	7900 5450 8050 5450
Wire Wire Line
	8250 3900 8550 3900
Wire Wire Line
	8250 4050 8550 4050
Wire Wire Line
	8250 3750 8550 3750
Wire Wire Line
	8550 3600 8250 3600
Wire Wire Line
	8250 3450 8550 3450
Wire Wire Line
	8550 3300 8250 3300
Wire Wire Line
	8250 3150 8550 3150
Wire Wire Line
	2750 3300 3200 3300
Wire Wire Line
	3200 3200 3000 3200
Wire Wire Line
	3000 3200 3000 3150
Wire Wire Line
	3000 3150 2750 3150
Wire Wire Line
	3200 3100 3050 3100
Wire Wire Line
	3050 3100 3050 3000
Wire Wire Line
	3050 3000 2750 3000
Wire Wire Line
	2750 3600 3200 3600
Wire Wire Line
	2750 3450 2950 3450
Wire Wire Line
	2950 3450 2950 3500
Wire Wire Line
	2950 3500 3200 3500
Wire Wire Line
	4800 3700 5250 3700
Wire Wire Line
	4800 3800 5200 3800
Wire Wire Line
	4800 3900 5150 3900
Wire Wire Line
	4800 4000 5100 4000
Wire Wire Line
	4800 4100 5050 4100
Wire Wire Line
	4900 4400 4800 4400
Wire Wire Line
	5250 4600 5200 4600
Wire Wire Line
	5200 4600 5200 4450
Wire Wire Line
	5200 4450 4900 4450
Wire Wire Line
	4900 4450 4900 4400
Wire Wire Line
	5250 4750 5150 4750
Wire Wire Line
	5150 4750 5150 4500
Wire Wire Line
	5150 4500 4800 4500
Wire Wire Line
	5250 4900 5100 4900
Wire Wire Line
	5100 4900 5100 4600
Wire Wire Line
	5100 4600 4800 4600
Wire Wire Line
	5250 5050 5050 5050
Wire Wire Line
	5050 5050 5050 4700
Wire Wire Line
	5050 4700 4800 4700
Wire Wire Line
	5250 5200 5000 5200
Wire Wire Line
	5000 5200 5000 4800
Wire Wire Line
	5000 4800 4800 4800
Wire Wire Line
	5250 5350 4950 5350
Wire Wire Line
	4950 5350 4950 4900
Wire Wire Line
	4950 4900 4800 4900
Wire Wire Line
	5250 5500 4900 5500
Wire Wire Line
	4900 5500 4900 5000
Wire Wire Line
	4900 5000 4800 5000
Wire Wire Line
	4850 4300 4800 4300
Wire Wire Line
	4850 2750 4850 4300
Wire Wire Line
	4800 3400 4850 3400
Connection ~ 4850 3400
Wire Wire Line
	3200 3700 3150 3700
Wire Wire Line
	3150 3700 3150 2800
Wire Wire Line
	3150 2800 4850 2800
Connection ~ 4850 2800
Wire Wire Line
	2850 3400 3200 3400
Wire Wire Line
	1950 4850 1950 4950
Wire Wire Line
	1950 4550 1950 4800
Wire Wire Line
	2750 3900 3200 3900
Wire Wire Line
	2900 4000 3200 4000
Wire Wire Line
	5250 3200 4800 3200
Wire Wire Line
	4800 5800 5250 5800
Wire Wire Line
	4800 5200 4800 5800
Wire Wire Line
	2850 4700 3200 4700
Wire Wire Line
	2850 3400 2850 4850
Wire Wire Line
	2850 4850 1950 4850
Connection ~ 2850 4700
Wire Wire Line
	2900 4000 2900 4050
Wire Wire Line
	2900 4050 2750 4050
Wire Wire Line
	2750 4200 2950 4200
Wire Wire Line
	2950 4200 2950 4100
Wire Wire Line
	2950 4100 3200 4100
Wire Wire Line
	3200 4200 3000 4200
Wire Wire Line
	3000 4200 3000 4350
Wire Wire Line
	3000 4350 2750 4350
Wire Wire Line
	3200 4300 3050 4300
Wire Wire Line
	3050 4300 3050 4500
Wire Wire Line
	3050 4500 2750 4500
Wire Wire Line
	3200 4400 3100 4400
Wire Wire Line
	3100 4400 3100 4650
Wire Wire Line
	3100 4650 2750 4650
Wire Wire Line
	3200 4500 3150 4500
Wire Wire Line
	3150 4500 3150 4800
Wire Wire Line
	3150 4800 1950 4800
Wire Wire Line
	8250 3000 8550 3000
Wire Wire Line
	5950 1700 6600 1700
Wire Wire Line
	5950 1550 6050 1550
Wire Wire Line
	6050 1550 6050 1600
Wire Wire Line
	6050 1600 6600 1600
Wire Wire Line
	5950 1400 6100 1400
Wire Wire Line
	6100 1400 6100 1500
Wire Wire Line
	6100 1500 6600 1500
Wire Wire Line
	5950 1250 6150 1250
Wire Wire Line
	6150 1250 6150 1400
Wire Wire Line
	6150 1400 6600 1400
Wire Wire Line
	6350 1300 6600 1300
Wire Wire Line
	6400 1200 6600 1200
Wire Wire Line
	6400 1200 6400 900 
Wire Wire Line
	5250 3400 4950 3400
Wire Wire Line
	4950 3400 4950 3500
Wire Wire Line
	4950 3500 4800 3500
Wire Wire Line
	4800 3600 4900 3600
Wire Wire Line
	4900 3600 4900 3550
Wire Wire Line
	4900 3550 5250 3550
Wire Wire Line
	5200 3800 5200 3850
Wire Wire Line
	5200 3850 5250 3850
Wire Wire Line
	5250 4000 5150 4000
Wire Wire Line
	5150 4000 5150 3900
Wire Wire Line
	5100 4000 5100 4150
Wire Wire Line
	5100 4150 5250 4150
Wire Wire Line
	5050 4100 5050 4300
Wire Wire Line
	5050 4300 5250 4300
Wire Wire Line
	5300 4450 5250 4450
Wire Wire Line
	5250 4450 5250 4400
Wire Wire Line
	5250 4400 5200 4400
Wire Wire Line
	5200 4400 5200 4350
Wire Wire Line
	5200 4350 5000 4350
Wire Wire Line
	5000 4350 5000 4200
Wire Wire Line
	5000 4200 4800 4200
NoConn ~ 4800 3100
$Comp
L R R4
U 1 1 54EE9CCB
P 9100 4700
F 0 "R4" V 9180 4700 40  0000 C CNN
F 1 "4.7k" V 9107 4701 40  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 9030 4700 30  0001 C CNN
F 3 "~" H 9100 4700 30  0000 C CNN
	1    9100 4700
	1    0    0    -1  
$EndComp
$Comp
L 3V3 #PWR061
U 1 1 54EE9CD1
P 9100 4400
F 0 "#PWR061" H 9100 4500 40  0001 C CNN
F 1 "3V3" H 9100 4525 40  0000 C CNN
F 2 "" H 9100 4400 60  0000 C CNN
F 3 "" H 9100 4400 60  0000 C CNN
	1    9100 4400
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 54EE9CD7
P 9300 4700
F 0 "R3" V 9380 4700 40  0000 C CNN
F 1 "4.7k" V 9307 4701 40  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 9230 4700 30  0001 C CNN
F 3 "~" H 9300 4700 30  0000 C CNN
	1    9300 4700
	1    0    0    -1  
$EndComp
$Comp
L 3V3 #PWR062
U 1 1 54EE9CDD
P 9300 4400
F 0 "#PWR062" H 9300 4500 40  0001 C CNN
F 1 "3V3" H 9300 4525 40  0000 C CNN
F 2 "" H 9300 4400 60  0000 C CNN
F 3 "" H 9300 4400 60  0000 C CNN
	1    9300 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 4450 9100 4400
Wire Wire Line
	9300 4450 9300 4400
Wire Wire Line
	9300 4950 9300 5050
Connection ~ 9300 5050
Wire Wire Line
	9100 4950 9100 5150
Connection ~ 9100 5150
$Comp
L R R22
U 1 1 54EE9E96
P 7500 4750
F 0 "R22" V 7580 4750 40  0000 C CNN
F 1 "4.7k" V 7507 4751 40  0000 C CNN
F 2 "" V 7430 4750 30  0001 C CNN
F 3 "~" H 7500 4750 30  0000 C CNN
	1    7500 4750
	1    0    0    -1  
$EndComp
$Comp
L 3V3 #PWR063
U 1 1 54EE9E9C
P 7500 4450
F 0 "#PWR063" H 7500 4550 40  0001 C CNN
F 1 "3V3" H 7500 4575 40  0000 C CNN
F 2 "" H 7500 4450 60  0000 C CNN
F 3 "" H 7500 4450 60  0000 C CNN
	1    7500 4450
	1    0    0    -1  
$EndComp
$Comp
L R R23
U 1 1 54EE9EA2
P 7700 4750
F 0 "R23" V 7780 4750 40  0000 C CNN
F 1 "4.7k" V 7707 4751 40  0000 C CNN
F 2 "" V 7630 4750 30  0001 C CNN
F 3 "~" H 7700 4750 30  0000 C CNN
	1    7700 4750
	1    0    0    -1  
$EndComp
$Comp
L 3V3 #PWR064
U 1 1 54EE9EA8
P 7700 4450
F 0 "#PWR064" H 7700 4550 40  0001 C CNN
F 1 "3V3" H 7700 4575 40  0000 C CNN
F 2 "" H 7700 4450 60  0000 C CNN
F 3 "" H 7700 4450 60  0000 C CNN
	1    7700 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 4500 7500 4450
Wire Wire Line
	7700 4500 7700 4450
Wire Wire Line
	7500 5000 7500 5050
Connection ~ 7500 5050
Wire Wire Line
	7700 5000 7700 5150
Connection ~ 7700 5150
Wire Wire Line
	5250 5650 4850 5650
Wire Wire Line
	4850 5650 4850 5100
Wire Wire Line
	4850 5100 4800 5100
NoConn ~ 3200 5200
NoConn ~ 3200 5100
NoConn ~ 3200 4600
$Comp
L GND #PWR065
U 1 1 55A8C1A3
P 6250 1300
F 0 "#PWR065" H 6250 1300 30  0001 C CNN
F 1 "GND" H 6250 1230 30  0001 C CNN
F 2 "" H 6250 1300 60  0000 C CNN
F 3 "" H 6250 1300 60  0000 C CNN
	1    6250 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 1300 6350 1250
Wire Wire Line
	6350 1250 6250 1250
Wire Wire Line
	6250 1250 6250 1300
$Comp
L GND #PWR066
U 1 1 55A8CDE3
P 6200 3450
F 0 "#PWR066" H 6200 3450 30  0001 C CNN
F 1 "GND" H 6200 3380 30  0001 C CNN
F 2 "" H 6200 3450 60  0000 C CNN
F 3 "" H 6200 3450 60  0000 C CNN
	1    6200 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 3300 6200 3300
Wire Wire Line
	6200 3300 6200 3450
$Comp
L GND #PWR067
U 1 1 55A8D239
P 1950 4950
F 0 "#PWR067" H 1950 4950 30  0001 C CNN
F 1 "GND" H 1950 4880 30  0001 C CNN
F 2 "" H 1950 4950 60  0000 C CNN
F 3 "" H 1950 4950 60  0000 C CNN
	1    1950 4950
	1    0    0    -1  
$EndComp
$EndSCHEMATC
