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
Sheet 6 6
Title ""
Date "23 nov 2014"
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
Text GLabel 2000 1450 0    60   Input ~ 0
SPI_SCK_LP
Text GLabel 2000 2050 0    60   Input ~ 0
SPI_MOSI_LP
Text GLabel 2000 2600 0    60   Input ~ 0
SPI_MISO_LP
Text GLabel 2000 4000 0    60   Input ~ 0
SPI_SEL0_LP
Text GLabel 2000 4600 0    60   Input ~ 0
SPI_SEL1_LP
Text GLabel 2000 5150 0    60   Input ~ 0
SPI_SEL2_LP
Text GLabel 2000 3150 0    60   Input ~ 0
UART_RX_LP
Text GLabel 2000 5750 0    60   Input ~ 0
UART_TX_LP
Text GLabel 3600 1450 2    60   Input ~ 0
SPI_SCK
Text GLabel 3600 2050 2    60   Input ~ 0
SPI_MOSI
Text GLabel 3600 2600 2    60   Input ~ 0
SPI_MISO
Text GLabel 3600 3150 2    60   Input ~ 0
UART_RX
Text GLabel 3600 4000 2    60   Input ~ 0
SPI_SEL0
Text GLabel 3600 4600 2    60   Input ~ 0
SPI_SEL1
Text GLabel 3600 5150 2    60   Input ~ 0
SPI_SEL2
Text GLabel 3600 5750 2    60   Input ~ 0
UART_TX
Wire Wire Line
	3350 4000 3600 4000
Wire Wire Line
	3600 4600 3350 4600
Wire Wire Line
	3350 5150 3600 5150
Wire Wire Line
	3600 5750 3350 5750
Wire Wire Line
	3350 3150 3600 3150
Wire Wire Line
	3600 2600 3350 2600
Wire Wire Line
	3350 2050 3600 2050
Wire Wire Line
	3600 1450 3350 1450
Wire Wire Line
	2900 1750 2250 1750
Wire Wire Line
	2250 2350 2900 2350
Wire Wire Line
	2250 2900 2900 2900
Connection ~ 2250 2350
Connection ~ 2250 2900
Wire Wire Line
	2250 4300 2900 4300
Connection ~ 2250 3450
Wire Wire Line
	2250 4900 2900 4900
Connection ~ 2250 4300
Wire Wire Line
	2250 5450 2900 5450
Connection ~ 2250 4900
Wire Wire Line
	2250 6050 2900 6050
Connection ~ 2250 5450
Text GLabel 1300 3450 0    60   Input ~ 0
CC_CONTROL
$Comp
L R R?
U 1 1 54722583
P 2250 1100
F 0 "R?" V 2330 1100 40  0000 C CNN
F 1 "47K" V 2257 1101 40  0000 C CNN
F 2 "~" V 2180 1100 30  0000 C CNN
F 3 "~" H 2250 1100 30  0000 C CNN
	1    2250 1100
	1    0    0    -1  
$EndComp
Connection ~ 2250 6050
Wire Wire Line
	2000 1450 2450 1450
Wire Wire Line
	2000 2050 2450 2050
Wire Wire Line
	2000 2600 2450 2600
Wire Wire Line
	2000 3150 2450 3150
Wire Wire Line
	1300 3450 2900 3450
Wire Wire Line
	2000 4000 2450 4000
Wire Wire Line
	2000 4600 2450 4600
Wire Wire Line
	2000 5150 2450 5150
Wire Wire Line
	2000 5750 2450 5750
Text GLabel 7550 2750 0    60   Input ~ 0
SPI_SCK_CC
Text GLabel 7550 2900 0    60   Input ~ 0
SPI_MOSI_CC
Text GLabel 7550 3050 0    60   Input ~ 0
SPI_MISO_CC
Text GLabel 7550 3350 0    60   Input ~ 0
SPI_SEL0_CC
Text GLabel 7550 3500 0    60   Input ~ 0
SPI_SEL1_CC
Text GLabel 7550 3650 0    60   Input ~ 0
SPI_SEL2_CC
Text GLabel 7550 3200 0    60   Input ~ 0
UART_RX_CC
Text GLabel 7550 3800 0    60   Input ~ 0
UART_TX_CC
Text GLabel 9200 2750 2    60   Input ~ 0
SPI_SCK
Text GLabel 9200 2900 2    60   Input ~ 0
SPI_MOSI
Text GLabel 9200 3050 2    60   Input ~ 0
SPI_MISO
Text GLabel 9200 3200 2    60   Input ~ 0
UART_RX
Text GLabel 9200 3350 2    60   Input ~ 0
SPI_SEL0
Text GLabel 9200 3500 2    60   Input ~ 0
SPI_SEL1
Text GLabel 9200 3650 2    60   Input ~ 0
SPI_SEL2
Text GLabel 9200 3800 2    60   Input ~ 0
UART_TX
$Comp
L 74LS126 U?
U 1 1 54722780
P 2900 1450
F 0 "U?" H 3000 1650 60  0000 C CNN
F 1 "74ALVC126" H 3150 1300 60  0000 C CNN
F 2 "~" H 2900 1450 60  0000 C CNN
F 3 "~" H 2900 1450 60  0000 C CNN
	1    2900 1450
	1    0    0    -1  
$EndComp
$Comp
L 74LS126 U?
U 1 1 5472278D
P 2900 2050
F 0 "U?" H 3000 2250 60  0000 C CNN
F 1 "74ALVC126" H 3150 1900 60  0000 C CNN
F 2 "~" H 2900 2050 60  0000 C CNN
F 3 "~" H 2900 2050 60  0000 C CNN
	1    2900 2050
	1    0    0    -1  
$EndComp
$Comp
L 74LS126 U?
U 1 1 547227AB
P 2900 4000
F 0 "U?" H 3000 4200 60  0000 C CNN
F 1 "74ALVC126" H 3150 3850 60  0000 C CNN
F 2 "~" H 2900 4000 60  0000 C CNN
F 3 "~" H 2900 4000 60  0000 C CNN
	1    2900 4000
	1    0    0    -1  
$EndComp
$Comp
L 74LS126 U?
U 1 1 547227B1
P 2900 4600
F 0 "U?" H 3000 4800 60  0000 C CNN
F 1 "74ALVC126" H 3150 4450 60  0000 C CNN
F 2 "~" H 2900 4600 60  0000 C CNN
F 3 "~" H 2900 4600 60  0000 C CNN
	1    2900 4600
	1    0    0    -1  
$EndComp
$Comp
L 74LS126 U?
U 1 1 547227B7
P 2900 5150
F 0 "U?" H 3000 5350 60  0000 C CNN
F 1 "74ALVC126" H 3150 5000 60  0000 C CNN
F 2 "~" H 2900 5150 60  0000 C CNN
F 3 "~" H 2900 5150 60  0000 C CNN
	1    2900 5150
	1    0    0    -1  
$EndComp
$Comp
L 74LS126 U?
U 1 1 547227BD
P 2900 5750
F 0 "U?" H 3000 5950 60  0000 C CNN
F 1 "74ALVC126" H 3150 5600 60  0000 C CNN
F 2 "~" H 2900 5750 60  0000 C CNN
F 3 "~" H 2900 5750 60  0000 C CNN
	1    2900 5750
	1    0    0    -1  
$EndComp
$Comp
L 74LS126 U?
U 1 1 547227D5
P 2900 2600
F 0 "U?" H 3000 2800 60  0000 C CNN
F 1 "74ALVC126" H 3150 2450 60  0000 C CNN
F 2 "~" H 2900 2600 60  0000 C CNN
F 3 "~" H 2900 2600 60  0000 C CNN
	1    2900 2600
	-1   0    0    -1  
$EndComp
$Comp
L 74LS126 U?
U 1 1 547227DB
P 2900 3150
F 0 "U?" H 3000 3350 60  0000 C CNN
F 1 "74ALVC126" H 3150 3000 60  0000 C CNN
F 2 "~" H 2900 3150 60  0000 C CNN
F 3 "~" H 2900 3150 60  0000 C CNN
	1    2900 3150
	-1   0    0    -1  
$EndComp
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
Text GLabel 7550 2450 0    60   Input ~ 0
I2C_DA_CC
Text GLabel 7550 2600 0    60   Input ~ 0
I2C_CL_CC
Text GLabel 9200 2450 2    60   Input ~ 0
I2C_DA
Text GLabel 9200 2600 2    60   Input ~ 0
I2C_CL
$Comp
L PCA9515B U?
U 1 1 54723DAE
P 8500 5300
F 0 "U?" H 8500 5350 60  0000 C CNN
F 1 "PCA9515B" H 8500 5700 60  0000 C CNN
F 2 "" H 8500 5700 60  0000 C CNN
F 3 "" H 8500 5700 60  0000 C CNN
	1    8500 5300
	1    0    0    -1  
$EndComp
$Comp
L 3V3 #PWR?
U 1 1 54723DBD
P 7950 4900
F 0 "#PWR?" H 7950 5000 40  0001 C CNN
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
L GND #PWR?
U 1 1 54723E16
P 7950 5700
F 0 "#PWR?" H 7950 5700 30  0001 C CNN
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
	2250 1350 2250 6050
Connection ~ 2250 1750
$Comp
L 3V3 #PWR?
U 1 1 54723FF2
P 2250 750
F 0 "#PWR?" H 2250 850 40  0001 C CNN
F 1 "3V3" H 2250 875 40  0000 C CNN
F 2 "" H 2250 750 60  0000 C CNN
F 3 "" H 2250 750 60  0000 C CNN
	1    2250 750 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 850  2250 750 
$Comp
L CONN_10X2 P?
U 1 1 547257ED
P 8350 3150
F 0 "P?" H 8350 3700 60  0000 C CNN
F 1 "CC_ISO" V 8350 3050 50  0000 C CNN
F 2 "" H 8350 3150 60  0000 C CNN
F 3 "" H 8350 3150 60  0000 C CNN
	1    8350 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 2450 7950 2450
Wire Wire Line
	7950 2450 7950 2700
Wire Wire Line
	7550 2600 7900 2600
Wire Wire Line
	7900 2600 7900 2800
Wire Wire Line
	7900 2800 7950 2800
Wire Wire Line
	7550 2750 7850 2750
Wire Wire Line
	7850 2750 7850 2900
Wire Wire Line
	7850 2900 7950 2900
Wire Wire Line
	7550 2900 7800 2900
Wire Wire Line
	7800 2900 7800 3000
Wire Wire Line
	7800 3000 7950 3000
Wire Wire Line
	7550 3200 7950 3200
Wire Wire Line
	7550 3050 7750 3050
Wire Wire Line
	7750 3050 7750 3100
Wire Wire Line
	7750 3100 7950 3100
Wire Wire Line
	7550 3800 7950 3800
Wire Wire Line
	7950 3800 7950 3600
Wire Wire Line
	7550 3650 7900 3650
Wire Wire Line
	7900 3650 7900 3500
Wire Wire Line
	7900 3500 7950 3500
Wire Wire Line
	7550 3500 7850 3500
Wire Wire Line
	7850 3500 7850 3400
Wire Wire Line
	7850 3400 7950 3400
Wire Wire Line
	7550 3350 7800 3350
Wire Wire Line
	7800 3350 7800 3300
Wire Wire Line
	7800 3300 7950 3300
Wire Wire Line
	9200 3800 8750 3800
Wire Wire Line
	8750 3800 8750 3600
Wire Wire Line
	9200 3650 8800 3650
Wire Wire Line
	8800 3650 8800 3500
Wire Wire Line
	8800 3500 8750 3500
Wire Wire Line
	9200 3500 8850 3500
Wire Wire Line
	8850 3500 8850 3400
Wire Wire Line
	8850 3400 8750 3400
Wire Wire Line
	9200 3350 8900 3350
Wire Wire Line
	8900 3350 8900 3300
Wire Wire Line
	8900 3300 8750 3300
Wire Wire Line
	9200 3200 8750 3200
Wire Wire Line
	9200 2450 8750 2450
Wire Wire Line
	8750 2450 8750 2700
Wire Wire Line
	9200 2600 8800 2600
Wire Wire Line
	8800 2600 8800 2800
Wire Wire Line
	8800 2800 8750 2800
Wire Wire Line
	9200 2750 8850 2750
Wire Wire Line
	8850 2750 8850 2900
Wire Wire Line
	8850 2900 8750 2900
Wire Wire Line
	9200 2900 8900 2900
Wire Wire Line
	8900 2900 8900 3000
Wire Wire Line
	8900 3000 8750 3000
Wire Wire Line
	9200 3050 8950 3050
Wire Wire Line
	8950 3050 8950 3100
Wire Wire Line
	8950 3100 8750 3100
$EndSCHEMATC
