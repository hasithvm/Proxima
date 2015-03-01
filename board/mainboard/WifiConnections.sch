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
Sheet 6 8
Title ""
Date "28 feb 2015"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L WIFI_BOARD WB1
U 1 1 54725F4B
P 5700 3650
F 0 "WB1" H 5700 3600 60  0000 C CNN
F 1 "WIFI_BOARD" H 5700 4900 60  0000 C CNN
F 2 "~" H 5700 3600 60  0000 C CNN
F 3 "~" H 5700 3600 60  0000 C CNN
	1    5700 3650
	1    0    0    -1  
$EndComp
$Comp
L 3V3 #PWR072
U 1 1 54725F5A
P 6600 1750
F 0 "#PWR072" H 6600 1850 40  0001 C CNN
F 1 "3V3" H 6600 1875 40  0000 C CNN
F 2 "" H 6600 1750 60  0000 C CNN
F 3 "" H 6600 1750 60  0000 C CNN
	1    6600 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 2550 6600 2550
Wire Wire Line
	6600 2550 6600 1750
$Comp
L 3V3 #PWR073
U 1 1 54725F6C
P 6600 3850
F 0 "#PWR073" H 6600 3950 40  0001 C CNN
F 1 "3V3" H 6600 3975 40  0000 C CNN
F 2 "" H 6600 3850 60  0000 C CNN
F 3 "" H 6600 3850 60  0000 C CNN
	1    6600 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 3950 6600 3950
Wire Wire Line
	6600 3950 6600 3850
$Comp
L GND #PWR074
U 1 1 54725F76
P 6900 3750
F 0 "#PWR074" H 6900 3750 30  0001 C CNN
F 1 "GND" H 6900 3680 30  0001 C CNN
F 2 "" H 6900 3750 60  0000 C CNN
F 3 "" H 6900 3750 60  0000 C CNN
	1    6900 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 3600 6900 3600
Wire Wire Line
	6900 3600 6900 3750
$Comp
L GND #PWR075
U 1 1 54725F95
P 6600 5150
F 0 "#PWR075" H 6600 5150 30  0001 C CNN
F 1 "GND" H 6600 5080 30  0001 C CNN
F 2 "" H 6600 5150 60  0000 C CNN
F 3 "" H 6600 5150 60  0000 C CNN
	1    6600 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 5000 6600 5150
Wire Wire Line
	6450 5000 6600 5000
Text GLabel 6850 4700 2    60   Input ~ 0
MOTOR1F
Text GLabel 6850 4850 2    60   Input ~ 0
MOTOR2F
Wire Wire Line
	6450 4850 6850 4850
Wire Wire Line
	6850 4700 6450 4700
Text GLabel 6850 4400 2    60   Input ~ 0
RTCINT2
Text GLabel 6850 4550 2    60   Input ~ 0
SD_SWITCH
Wire Wire Line
	6450 4550 6850 4550
Wire Wire Line
	6850 4400 6450 4400
Text GLabel 6850 4100 2    60   Input ~ 0
MPUINT
Text GLabel 6850 4250 2    60   Input ~ 0
RTCINT1
Wire Wire Line
	6450 4250 6850 4250
Wire Wire Line
	6850 4100 6450 4100
Text GLabel 6850 3300 2    60   Input ~ 0
UART_TX_CC
Text GLabel 6850 3450 2    60   Input ~ 0
WIFI_INT
Wire Wire Line
	6450 3450 6850 3450
Wire Wire Line
	6850 3300 6450 3300
Text GLabel 6850 3000 2    60   Input ~ 0
I2C_CL_CC
Text GLabel 6850 3150 2    60   Input ~ 0
UART_RX_CC
Wire Wire Line
	6450 3150 6850 3150
Wire Wire Line
	6850 3000 6450 3000
Text GLabel 6850 2700 2    60   Input ~ 0
CC_CONTROL
Text GLabel 6850 2850 2    60   Input ~ 0
I2C_DA_CC
Wire Wire Line
	6450 2850 6850 2850
Wire Wire Line
	6850 2700 6450 2700
Text GLabel 4550 3600 0    60   Input ~ 0
SPI_SEL1_CC
Text GLabel 4550 3750 0    60   Input ~ 0
SPI_SEL2_CC
Wire Wire Line
	4950 3750 4550 3750
Wire Wire Line
	4550 3600 4950 3600
Text GLabel 4550 3300 0    60   Input ~ 0
SPI_MISO_CC
Text GLabel 4550 3450 0    60   Input ~ 0
SPI_SEL0_CC
Wire Wire Line
	4950 3450 4550 3450
Wire Wire Line
	4550 3300 4950 3300
Text GLabel 4550 3000 0    60   Input ~ 0
SPI_SCK_CC
Text GLabel 4550 3150 0    60   Input ~ 0
SPI_MOSI_CC
Wire Wire Line
	4950 3150 4550 3150
Wire Wire Line
	4550 3000 4950 3000
Text GLabel 4550 3900 0    60   Input ~ 0
SPI_CS_CC
Text GLabel 4550 4050 0    60   Input ~ 0
GLCD_A0
Wire Wire Line
	4950 4050 4550 4050
Wire Wire Line
	4550 3900 4950 3900
$Comp
L R R27
U 1 1 54ED26EB
P 6800 2300
F 0 "R27" V 6880 2300 40  0000 C CNN
F 1 "10K" V 6807 2301 40  0000 C CNN
F 2 "~" V 6730 2300 30  0000 C CNN
F 3 "~" H 6800 2300 30  0000 C CNN
	1    6800 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 2050 6800 1850
Wire Wire Line
	6800 1850 6600 1850
Connection ~ 6600 1850
Wire Wire Line
	6800 2550 6800 2700
Connection ~ 6800 2700
$EndSCHEMATC
