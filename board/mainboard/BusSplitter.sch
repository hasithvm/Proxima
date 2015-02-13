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
Sheet 5 7
Title ""
Date "13 feb 2015"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 7900 5150 0    60   Input ~ 0
I2C_DA_LP
Text GLabel 7350 5050 0    60   Input ~ 0
I2C_CL_LP
Text GLabel 2750 4350 0    60   Input ~ 0
SPI_SCK_LP
Text GLabel 2750 3600 0    60   Input ~ 0
SPI_MOSI_LP
Text GLabel 2750 3450 0    60   Input ~ 0
SPI_MISO_LP
Text GLabel 2750 3000 0    60   Input ~ 0
SPI_SEL0_LP
Text GLabel 2750 3150 0    60   Input ~ 0
SPI_SEL1_LP
Text GLabel 2750 3300 0    60   Input ~ 0
SPI_SEL2_LP
Text GLabel 2750 4500 0    60   Input ~ 0
UART_RX_LP
Text GLabel 2750 4650 0    60   Input ~ 0
UART_TX_LP
Text GLabel 5250 3500 2    60   Input ~ 0
SPI_SCK
Text GLabel 5250 3650 2    60   Input ~ 0
SPI_MOSI
Text GLabel 5250 3800 2    60   Input ~ 0
SPI_MISO
Text GLabel 2900 5050 0    60   Input ~ 0
UART_RX
Text GLabel 2900 5200 0    60   Input ~ 0
UART_TX
Text GLabel 5250 4400 2    60   Input ~ 0
CC_CONTROL
Text GLabel 8250 3450 0    60   Input ~ 0
SPI_SCK_CC
Text GLabel 8250 3600 0    60   Input ~ 0
SPI_MOSI_CC
Text GLabel 8250 3750 0    60   Input ~ 0
SPI_MISO_CC
Text GLabel 5250 3950 2    60   Input ~ 0
SPI_SEL0_CC
Text GLabel 5250 4100 2    60   Input ~ 0
SPI_SEL1_CC
Text GLabel 5250 4250 2    60   Input ~ 0
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
Wire Wire Line
	7350 5050 8050 5050
Wire Wire Line
	8050 5150 7900 5150
Text GLabel 9100 5150 2    60   Input ~ 0
I2C_DA
Text GLabel 9650 5050 2    60   Input ~ 0
I2C_CL
Wire Wire Line
	9650 5050 8950 5050
Wire Wire Line
	8950 5150 9100 5150
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
F 2 "" H 8500 5700 60  0000 C CNN
F 3 "" H 8500 5700 60  0000 C CNN
	1    8500 5300
	1    0    0    -1  
$EndComp
$Comp
L 3V3 #PWR053
U 1 1 54723DBD
P 7950 4900
F 0 "#PWR053" H 7950 5000 40  0001 C CNN
F 1 "3V3" H 7950 5025 40  0000 C CNN
F 2 "" H 7950 4900 60  0000 C CNN
F 3 "" H 7950 4900 60  0000 C CNN
	1    7950 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 4900 7950 5350
Wire Wire Line
	7950 5350 8050 5350
$Comp
L GND #PWR054
U 1 1 54723E16
P 7950 5700
F 0 "#PWR054" H 7950 5700 30  0001 C CNN
F 1 "GND" H 7950 5630 30  0001 C CNN
F 2 "" H 7950 5700 60  0000 C CNN
F 3 "" H 7950 5700 60  0000 C CNN
	1    7950 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 5550 7950 5550
Wire Wire Line
	7950 5550 7950 5700
Wire Wire Line
	7900 5450 8050 5450
Wire Wire Line
	8250 3900 8550 3900
Text GLabel 5250 5600 2    60   Input ~ 0
GLCD_A0_LP
Text GLabel 2750 3750 0    60   Input ~ 0
GLCD_A0
Text GLabel 5250 5450 2    60   Input ~ 0
SPI_CS1
Text GLabel 5250 5300 2    60   Input ~ 0
SPI_CS2
Text GLabel 5250 5150 2    60   Input ~ 0
SPI_CS3
Text GLabel 5250 5000 2    60   Input ~ 0
SPI_CS4
Text GLabel 5250 4850 2    60   Input ~ 0
SPI_CS5
Text GLabel 5250 4700 2    60   Input ~ 0
SPI_CS6
Text GLabel 5250 4550 2    60   Input ~ 0
SPI_CS7
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
$Comp
L XC2C32A U?
U 1 1 54DD81D8
P 4000 4150
F 0 "U?" H 4000 4150 60  0000 C CNN
F 1 "XC2C32A" H 4000 5400 60  0000 C CNN
F 2 "~" H 4000 4800 60  0000 C CNN
F 3 "~" H 4000 4800 60  0000 C CNN
	1    4000 4150
	1    0    0    -1  
$EndComp
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
	2900 5200 3200 5200
Wire Wire Line
	3200 5100 2950 5100
Wire Wire Line
	2950 5100 2950 5050
Wire Wire Line
	2950 5050 2900 5050
Wire Wire Line
	4800 3500 5250 3500
Wire Wire Line
	5250 3650 5200 3650
Wire Wire Line
	5200 3650 5200 3600
Wire Wire Line
	5200 3600 4800 3600
Wire Wire Line
	5250 3800 5150 3800
Wire Wire Line
	5150 3800 5150 3700
Wire Wire Line
	5150 3700 4800 3700
Wire Wire Line
	4800 3800 5100 3800
Wire Wire Line
	5100 3800 5100 3950
Wire Wire Line
	5100 3950 5250 3950
Wire Wire Line
	4800 3900 5050 3900
Wire Wire Line
	5050 3900 5050 4100
Wire Wire Line
	5050 4100 5250 4100
Wire Wire Line
	4800 4000 5000 4000
Wire Wire Line
	5000 4000 5000 4250
Wire Wire Line
	5000 4250 5250 4250
Wire Wire Line
	5250 4400 4950 4400
Wire Wire Line
	4950 4400 4950 4100
Wire Wire Line
	4950 4100 4800 4100
Wire Wire Line
	4900 4400 4800 4400
Wire Wire Line
	5250 4550 5200 4550
Wire Wire Line
	5200 4550 5200 4450
Wire Wire Line
	5200 4450 4900 4450
Wire Wire Line
	4900 4450 4900 4400
Wire Wire Line
	5250 4700 5150 4700
Wire Wire Line
	5150 4700 5150 4500
Wire Wire Line
	5150 4500 4800 4500
Wire Wire Line
	5250 4850 5100 4850
Wire Wire Line
	5100 4850 5100 4600
Wire Wire Line
	5100 4600 4800 4600
Wire Wire Line
	5250 5000 5050 5000
Wire Wire Line
	5050 5000 5050 4700
Wire Wire Line
	5050 4700 4800 4700
Wire Wire Line
	5250 5150 5000 5150
Wire Wire Line
	5000 5150 5000 4800
Wire Wire Line
	5000 4800 4800 4800
Wire Wire Line
	5250 5300 4950 5300
Wire Wire Line
	4950 5300 4950 4900
Wire Wire Line
	4950 4900 4800 4900
Wire Wire Line
	5250 5450 4900 5450
Wire Wire Line
	4900 5450 4900 5000
Wire Wire Line
	4900 5000 4800 5000
$Comp
L 3V3 #PWR?
U 1 1 54DD88EA
P 4850 2750
F 0 "#PWR?" H 4850 2850 40  0001 C CNN
F 1 "3V3" H 4850 2875 40  0000 C CNN
F 2 "" H 4850 2750 60  0000 C CNN
F 3 "" H 4850 2750 60  0000 C CNN
	1    4850 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 4300 4800 4300
Wire Wire Line
	4850 2750 4850 2800
Wire Wire Line
	4850 2800 4850 3400
Wire Wire Line
	4850 3400 4850 4300
Wire Wire Line
	4800 3400 4850 3400
Connection ~ 4850 3400
$Comp
L GND #PWR?
U 1 1 54DD89FD
P 6100 3500
F 0 "#PWR?" H 6100 3500 30  0001 C CNN
F 1 "GND" H 6100 3430 30  0001 C CNN
F 2 "" H 6100 3500 60  0000 C CNN
F 3 "" H 6100 3500 60  0000 C CNN
	1    6100 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 3300 6100 3300
Wire Wire Line
	6100 3300 6100 3500
Wire Wire Line
	3200 3700 3150 3700
Wire Wire Line
	3150 3700 3150 2800
Wire Wire Line
	3150 2800 4850 2800
Connection ~ 4850 2800
Wire Wire Line
	2850 3400 3200 3400
$Comp
L GND #PWR?
U 1 1 54DD8C2C
P 1950 4950
F 0 "#PWR?" H 1950 4950 30  0001 C CNN
F 1 "GND" H 1950 4880 30  0001 C CNN
F 2 "" H 1950 4950 60  0000 C CNN
F 3 "" H 1950 4950 60  0000 C CNN
	1    1950 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 4850 1950 4950
$Comp
L 1V8 #PWR?
U 1 1 54DD8CFA
P 1950 4550
F 0 "#PWR?" H 1950 4690 20  0001 C CNN
F 1 "1V8" H 1950 4660 30  0000 C CNN
F 2 "" H 1950 4550 60  0000 C CNN
F 3 "" H 1950 4550 60  0000 C CNN
	1    1950 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 4550 1950 4800
Text GLabel 5250 3200 2    60   Input ~ 0
CPLD_TDO
Text GLabel 2750 3900 0    60   Input ~ 0
CPLD_TDI
Text GLabel 2750 4050 0    60   Input ~ 0
CPLD_TMS
Text GLabel 2750 4200 0    60   Input ~ 0
CPLD_TCK
Wire Wire Line
	2750 3900 3200 3900
Wire Wire Line
	2900 4000 3200 4000
Wire Wire Line
	5250 3200 4800 3200
Wire Wire Line
	5250 5600 4850 5600
Wire Wire Line
	4850 5600 4850 5200
Wire Wire Line
	4850 5200 4800 5200
NoConn ~ 4800 5100
NoConn ~ 4800 3100
Wire Wire Line
	2750 3750 3150 3750
Wire Wire Line
	3150 3750 3150 3800
Wire Wire Line
	3150 3800 3200 3800
Wire Wire Line
	2850 4700 3200 4700
Wire Wire Line
	2850 3400 2850 4700
Wire Wire Line
	2850 4700 2850 4850
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
NoConn ~ 3200 4800
NoConn ~ 3200 4900
NoConn ~ 3200 5000
Text GLabel 8250 3000 0    60   Input ~ 0
SPI_CS5
Text GLabel 8550 3000 2    60   Input ~ 0
SPI_CS_CC
Wire Wire Line
	8250 3000 8550 3000
$EndSCHEMATC
