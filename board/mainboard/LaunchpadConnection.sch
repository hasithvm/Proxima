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
Sheet 4 5
Title ""
Date "17 nov 2014"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L TIVALAUNCHPAD LP?
U 1 1 5467DA7D
P 5700 3750
F 0 "LP?" H 5700 3600 60  0000 C CNN
F 1 "TIVALAUNCHPAD" H 5700 3750 60  0000 C CNN
F 2 "~" H 5700 3750 60  0000 C CNN
F 3 "~" H 5700 3750 60  0000 C CNN
	1    5700 3750
	1    0    0    -1  
$EndComp
$Comp
L 3V3 #PWR?
U 1 1 5467DAD5
P 4300 2050
F 0 "#PWR?" H 4300 2150 40  0001 C CNN
F 1 "3V3" H 4300 2175 40  0000 C CNN
F 2 "" H 4300 2050 60  0000 C CNN
F 3 "" H 4300 2050 60  0000 C CNN
	1    4300 2050
	1    0    0    -1  
$EndComp
Text GLabel 4050 3450 0    60   Input ~ 0
I2C_CL
Text GLabel 4050 3600 0    60   Input ~ 0
I2C_DA
Text GLabel 7150 3150 2    60   Input ~ 0
SPI_MISO
Text GLabel 7150 3000 2    60   Input ~ 0
SPI_MOSI
Text GLabel 7150 2850 2    60   Input ~ 0
RST
Text GLabel 4050 3150 0    60   Input ~ 0
SPI_SCK
Text GLabel 7150 3600 2    60   Input ~ 0
SPI_SEL0
Text GLabel 7150 3450 2    60   Input ~ 0
SPI_SEL1
Text GLabel 7150 3300 2    60   Input ~ 0
SPI_SEL2
NoConn ~ 6850 2550
NoConn ~ 4550 2850
NoConn ~ 4550 3300
NoConn ~ 4550 3900
NoConn ~ 4550 4200
NoConn ~ 4550 4350
NoConn ~ 4550 5100
NoConn ~ 4550 5250
NoConn ~ 6850 5250
NoConn ~ 6850 4800
NoConn ~ 6850 4350
$Comp
L GND #PWR?
U 1 1 5468095A
P 8050 2350
F 0 "#PWR?" H 8050 2350 30  0001 C CNN
F 1 "GND" H 8050 2280 30  0001 C CNN
F 2 "" H 8050 2350 60  0000 C CNN
F 3 "" H 8050 2350 60  0000 C CNN
	1    8050 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 2250 8050 2350
Wire Wire Line
	6850 2250 8050 2250
Wire Wire Line
	7150 3300 6850 3300
Wire Wire Line
	6850 3600 7150 3600
Wire Wire Line
	7150 3450 6850 3450
Wire Wire Line
	4050 3150 4550 3150
Wire Wire Line
	7150 2850 6850 2850
Wire Wire Line
	6850 3150 7150 3150
Wire Wire Line
	7150 3000 6850 3000
Wire Wire Line
	4050 3600 4550 3600
Wire Wire Line
	4050 3450 4550 3450
Wire Wire Line
	4550 2250 4300 2250
Wire Wire Line
	4300 2250 4300 2050
Text GLabel 4050 2550 0    60   Input ~ 0
UART_RX
Wire Wire Line
	4050 2550 4550 2550
Text GLabel 4050 2700 0    60   Input ~ 0
UART_TX
Wire Wire Line
	4050 2700 4550 2700
Text GLabel 4050 3000 0    60   Input ~ 0
AIN2
$Comp
L GND #PWR?
U 1 1 546A7E28
P 4300 4200
F 0 "#PWR?" H 4300 4200 30  0001 C CNN
F 1 "GND" H 4300 4130 30  0001 C CNN
F 2 "" H 4300 4200 60  0000 C CNN
F 3 "" H 4300 4200 60  0000 C CNN
	1    4300 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 4050 4300 4050
Wire Wire Line
	4300 4050 4300 4200
Text GLabel 4050 4800 0    60   Input ~ 0
POT1
Text GLabel 4050 4950 0    60   Input ~ 0
POT2
Wire Wire Line
	4050 4800 4550 4800
Wire Wire Line
	4050 4950 4550 4950
Text GLabel 4050 4500 0    60   Input ~ 0
PHOTO1
Text GLabel 4050 4650 0    60   Input ~ 0
PHOTO2
Wire Wire Line
	4050 4500 4550 4500
Wire Wire Line
	4050 4650 4550 4650
Text GLabel 4050 2400 0    60   Input ~ 0
AIN1
Wire Wire Line
	4050 2400 4550 2400
Wire Wire Line
	4050 3000 4550 3000
Text GLabel 7150 4950 2    60   Input ~ 0
KPAD_R1
Text GLabel 7150 5100 2    60   Input ~ 0
KPAD_R2
Text GLabel 7150 4500 2    60   Input ~ 0
KPAD_C1
Text GLabel 7150 4650 2    60   Input ~ 0
KPAD_C2
Wire Wire Line
	6850 4500 7150 4500
Wire Wire Line
	6850 4650 7150 4650
Wire Wire Line
	6850 4950 7150 4950
Wire Wire Line
	6850 5100 7150 5100
Text GLabel 7150 2400 2    60   Input ~ 0
BUMP1
Wire Wire Line
	6850 2400 7150 2400
Text GLabel 7150 4200 2    60   Input ~ 0
BUMP2
Text GLabel 7150 4050 2    60   Input ~ 0
LED2
Text GLabel 7150 3900 2    60   Input ~ 0
LED1
Wire Wire Line
	6850 3900 7150 3900
Wire Wire Line
	6850 4050 7150 4050
Wire Wire Line
	6850 4200 7150 4200
Text GLabel 7150 2700 2    60   Input ~ 0
NMI
Wire Wire Line
	6850 2700 7150 2700
$EndSCHEMATC
