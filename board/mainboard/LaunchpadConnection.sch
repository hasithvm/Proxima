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
Sheet 4 8
Title ""
Date "25 nov 2014"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L TIVALAUNCHPAD LP1
U 1 1 5467DA7D
P 5700 2750
F 0 "LP1" H 5700 2600 60  0000 C CNN
F 1 "TIVALAUNCHPAD" H 5700 2750 60  0000 C CNN
F 2 "~" H 5700 2750 60  0000 C CNN
F 3 "~" H 5700 2750 60  0000 C CNN
	1    5700 2750
	1    0    0    -1  
$EndComp
$Comp
L 3V3 #PWR039
U 1 1 5467DAD5
P 4300 1050
F 0 "#PWR039" H 4300 1150 40  0001 C CNN
F 1 "3V3" H 4300 1175 40  0000 C CNN
F 2 "" H 4300 1050 60  0000 C CNN
F 3 "" H 4300 1050 60  0000 C CNN
	1    4300 1050
	1    0    0    -1  
$EndComp
Text GLabel 4050 2450 0    60   Input ~ 0
I2C_CL_LP
Text GLabel 4050 2600 0    60   Input ~ 0
I2C_DA_LP
Text GLabel 7150 2150 2    60   Input ~ 0
SPI_MISO_LP
Text GLabel 7150 2000 2    60   Input ~ 0
SPI_MOSI_LP
Text GLabel 7150 1850 2    60   Input ~ 0
RST
Text GLabel 4050 2150 0    60   Input ~ 0
SPI_SCK_LP
Text GLabel 7150 2600 2    60   Input ~ 0
SPI_SEL0_LP
Text GLabel 7150 2450 2    60   Input ~ 0
SPI_SEL1_LP
Text GLabel 7150 2300 2    60   Input ~ 0
SPI_SEL2_LP
NoConn ~ 4550 2900
NoConn ~ 4550 3200
NoConn ~ 4550 3350
NoConn ~ 4550 4100
NoConn ~ 4550 4250
$Comp
L GND #PWR040
U 1 1 5468095A
P 8050 1350
F 0 "#PWR040" H 8050 1350 30  0001 C CNN
F 1 "GND" H 8050 1280 30  0001 C CNN
F 2 "" H 8050 1350 60  0000 C CNN
F 3 "" H 8050 1350 60  0000 C CNN
	1    8050 1350
	1    0    0    -1  
$EndComp
Text GLabel 4050 1550 0    60   Input ~ 0
UART_RX_LP
Text GLabel 4050 1700 0    60   Input ~ 0
UART_TX_LP
Text GLabel 4050 2000 0    60   Input ~ 0
AIN2
$Comp
L GND #PWR041
U 1 1 546A7E28
P 4300 3200
F 0 "#PWR041" H 4300 3200 30  0001 C CNN
F 1 "GND" H 4300 3130 30  0001 C CNN
F 2 "" H 4300 3200 60  0000 C CNN
F 3 "" H 4300 3200 60  0000 C CNN
	1    4300 3200
	1    0    0    -1  
$EndComp
Text GLabel 4050 3950 0    60   Input ~ 0
POT
Text GLabel 4050 3500 0    60   Input ~ 0
LINE_SENSOR_L
Text GLabel 4050 3650 0    60   Input ~ 0
LINE_SENSOR_R
Text GLabel 4050 1400 0    60   Input ~ 0
AIN1
Text GLabel 7150 3950 2    60   Input ~ 0
KPAD_R1
Text GLabel 7150 4100 2    60   Input ~ 0
KPAD_R2
Text GLabel 7150 3500 2    60   Input ~ 0
KPAD_C1
Text GLabel 7150 3650 2    60   Input ~ 0
KPAD_C2
Text GLabel 7150 1400 2    60   Input ~ 0
BUMP1
Text GLabel 7150 3200 2    60   Input ~ 0
BUMP2
Text GLabel 7150 3050 2    60   Input ~ 0
LED2
Text GLabel 7150 2900 2    60   Input ~ 0
LED1
Text GLabel 7150 1700 2    60   Input ~ 0
NMI
$Comp
L 3V3 #PWR042
U 1 1 546A82AF
P 2000 4650
F 0 "#PWR042" H 2000 4750 40  0001 C CNN
F 1 "3V3" H 2000 4775 40  0000 C CNN
F 2 "" H 2000 4650 60  0000 C CNN
F 3 "" H 2000 4650 60  0000 C CNN
	1    2000 4650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR043
U 1 1 546A82BC
P 2000 5350
F 0 "#PWR043" H 2000 5350 30  0001 C CNN
F 1 "GND" H 2000 5280 30  0001 C CNN
F 2 "" H 2000 5350 60  0000 C CNN
F 3 "" H 2000 5350 60  0000 C CNN
	1    2000 5350
	1    0    0    -1  
$EndComp
$Comp
L POT RV1
U 1 1 546A82C5
P 2000 5000
F 0 "RV1" H 2000 4900 50  0000 C CNN
F 1 "10K" H 2000 5000 50  0000 C CNN
F 2 "~" H 2000 5000 60  0000 C CNN
F 3 "~" H 2000 5000 60  0000 C CNN
	1    2000 5000
	0    -1   -1   0   
$EndComp
Text GLabel 1700 5000 0    60   Input ~ 0
POT
$Comp
L GND #PWR044
U 1 1 546A8777
P 2000 5350
F 0 "#PWR044" H 2000 5350 30  0001 C CNN
F 1 "GND" H 2000 5280 30  0001 C CNN
F 2 "" H 2000 5350 60  0000 C CNN
F 3 "" H 2000 5350 60  0000 C CNN
	1    2000 5350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR045
U 1 1 546A877E
P 2000 5350
F 0 "#PWR045" H 2000 5350 30  0001 C CNN
F 1 "GND" H 2000 5280 30  0001 C CNN
F 2 "" H 2000 5350 60  0000 C CNN
F 3 "" H 2000 5350 60  0000 C CNN
	1    2000 5350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR046
U 1 1 546A8785
P 2000 5350
F 0 "#PWR046" H 2000 5350 30  0001 C CNN
F 1 "GND" H 2000 5280 30  0001 C CNN
F 2 "" H 2000 5350 60  0000 C CNN
F 3 "" H 2000 5350 60  0000 C CNN
	1    2000 5350
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P7
U 1 1 546A885A
P 1500 3700
F 0 "P7" V 1450 3700 40  0000 C CNN
F 1 "ANALOG" V 1550 3700 40  0000 C CNN
F 2 "" H 1500 3700 60  0000 C CNN
F 3 "" H 1500 3700 60  0000 C CNN
	1    1500 3700
	-1   0    0    1   
$EndComp
Text GLabel 2050 3800 2    60   Input ~ 0
AIN1
Text GLabel 2050 3600 2    60   Input ~ 0
AIN2
Text GLabel 9350 3450 0    60   Input ~ 0
LED2
Text GLabel 9350 3300 0    60   Input ~ 0
LED1
$Comp
L LED D2
U 1 1 546A8A5B
P 10550 3500
F 0 "D2" H 10550 3600 50  0000 C CNN
F 1 "RLED" H 10550 3400 50  0000 C CNN
F 2 "~" H 10550 3500 60  0000 C CNN
F 3 "~" H 10550 3500 60  0000 C CNN
	1    10550 3500
	0    1    1    0   
$EndComp
$Comp
L LED D1
U 1 1 546A8A77
P 10250 3650
F 0 "D1" H 10250 3750 50  0000 C CNN
F 1 "GLED" H 10250 3550 50  0000 C CNN
F 2 "~" H 10250 3650 60  0000 C CNN
F 3 "~" H 10250 3650 60  0000 C CNN
	1    10250 3650
	0    1    1    0   
$EndComp
$Comp
L R R17
U 1 1 546A8AAA
P 9700 3300
F 0 "R17" V 9780 3300 40  0000 C CNN
F 1 "560" V 9707 3301 40  0000 C CNN
F 2 "~" V 9630 3300 30  0000 C CNN
F 3 "~" H 9700 3300 30  0000 C CNN
	1    9700 3300
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR047
U 1 1 546A8BD2
P 10400 4000
F 0 "#PWR047" H 10400 4000 30  0001 C CNN
F 1 "GND" H 10400 3930 30  0001 C CNN
F 2 "" H 10400 4000 60  0000 C CNN
F 3 "" H 10400 4000 60  0000 C CNN
	1    10400 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 1250 8050 1250
Wire Wire Line
	7150 2300 6850 2300
Wire Wire Line
	6850 2600 7150 2600
Wire Wire Line
	7150 2450 6850 2450
Wire Wire Line
	4050 2150 4550 2150
Wire Wire Line
	7150 1850 6850 1850
Wire Wire Line
	6850 2150 7150 2150
Wire Wire Line
	7150 2000 6850 2000
Wire Wire Line
	4050 2600 4550 2600
Wire Wire Line
	4050 2450 4550 2450
Wire Wire Line
	4550 1250 4300 1250
Wire Wire Line
	4300 1250 4300 1050
Wire Wire Line
	4050 1550 4550 1550
Wire Wire Line
	4050 1700 4550 1700
Wire Wire Line
	4550 3050 4300 3050
Wire Wire Line
	4300 3050 4300 3200
Wire Wire Line
	4050 3800 4550 3800
Wire Wire Line
	4050 3950 4550 3950
Wire Wire Line
	4050 3500 4550 3500
Wire Wire Line
	4050 3650 4550 3650
Wire Wire Line
	4050 1400 4550 1400
Wire Wire Line
	4050 2000 4550 2000
Wire Wire Line
	6850 3500 7150 3500
Wire Wire Line
	6850 3650 7150 3650
Wire Wire Line
	6850 3950 7150 3950
Wire Wire Line
	6850 4100 7150 4100
Wire Wire Line
	6850 1400 7150 1400
Wire Wire Line
	6850 2900 7150 2900
Wire Wire Line
	6850 3050 7150 3050
Wire Wire Line
	6850 3200 7150 3200
Wire Wire Line
	6850 1700 7150 1700
Wire Wire Line
	1700 5000 1850 5000
Wire Wire Line
	2050 3800 1850 3800
Wire Wire Line
	2050 3600 1850 3600
Wire Wire Line
	9950 3300 10550 3300
Wire Wire Line
	9450 3300 9350 3300
Wire Wire Line
	9350 3450 10250 3450
Wire Wire Line
	10250 3850 10250 3900
Wire Wire Line
	10250 3900 10550 3900
Wire Wire Line
	10400 3900 10400 4000
Wire Wire Line
	10550 3900 10550 3700
Connection ~ 10400 3900
$Comp
L SW_PUSH SW1
U 1 1 546A8D80
P 9200 5100
F 0 "SW1" H 9350 5210 50  0000 C CNN
F 1 "SW_PUSH" H 9200 5020 50  0000 C CNN
F 2 "~" H 9200 5100 60  0000 C CNN
F 3 "~" H 9200 5100 60  0000 C CNN
	1    9200 5100
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW3
U 1 1 546A8D8D
P 10100 5100
F 0 "SW3" H 10250 5210 50  0000 C CNN
F 1 "SW_PUSH" H 10100 5020 50  0000 C CNN
F 2 "~" H 10100 5100 60  0000 C CNN
F 3 "~" H 10100 5100 60  0000 C CNN
	1    10100 5100
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW2
U 1 1 546A8D93
P 9200 5700
F 0 "SW2" H 9350 5810 50  0000 C CNN
F 1 "SW_PUSH" H 9200 5620 50  0000 C CNN
F 2 "~" H 9200 5700 60  0000 C CNN
F 3 "~" H 9200 5700 60  0000 C CNN
	1    9200 5700
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW4
U 1 1 546A8D99
P 10100 5700
F 0 "SW4" H 10250 5810 50  0000 C CNN
F 1 "SW_PUSH" H 10100 5620 50  0000 C CNN
F 2 "~" H 10100 5700 60  0000 C CNN
F 3 "~" H 10100 5700 60  0000 C CNN
	1    10100 5700
	1    0    0    -1  
$EndComp
Text GLabel 8500 5100 0    60   Input ~ 0
KPAD_R1
Text GLabel 8500 5700 0    60   Input ~ 0
KPAD_R2
Wire Wire Line
	8500 5100 8900 5100
Wire Wire Line
	8500 5700 8900 5700
Wire Wire Line
	8800 5100 8800 5350
Wire Wire Line
	8800 5350 9800 5350
Wire Wire Line
	9800 5350 9800 5100
Connection ~ 8800 5100
Wire Wire Line
	8800 5700 8800 5950
Wire Wire Line
	8800 5950 9800 5950
Wire Wire Line
	9800 5950 9800 5700
Connection ~ 8800 5700
Text GLabel 9600 4650 2    60   Input ~ 0
KPAD_C1
Text GLabel 10500 4650 2    60   Input ~ 0
KPAD_C2
Wire Wire Line
	9500 5700 9550 5700
Wire Wire Line
	9500 5100 9550 5100
Wire Wire Line
	10450 5700 10400 5700
Wire Wire Line
	10450 4650 10450 6150
Wire Wire Line
	10450 5100 10400 5100
Wire Wire Line
	10500 4650 10450 4650
Connection ~ 10450 5100
Wire Wire Line
	9550 4650 9600 4650
Connection ~ 9550 5100
Wire Wire Line
	9550 4650 9550 6150
$Comp
L CONN_2 P10
U 1 1 546A9114
P 10250 2250
F 0 "P10" V 10200 2250 40  0000 C CNN
F 1 "BUMPERS" V 10300 2250 40  0000 C CNN
F 2 "" H 10250 2250 60  0000 C CNN
F 3 "" H 10250 2250 60  0000 C CNN
	1    10250 2250
	1    0    0    -1  
$EndComp
Text GLabel 9700 2150 0    60   Input ~ 0
BUMP1
Text GLabel 9700 2350 0    60   Input ~ 0
BUMP2
Wire Wire Line
	9700 2150 9900 2150
Wire Wire Line
	9700 2350 9900 2350
$Comp
L CONN_5 P6
U 1 1 546BE6CC
P 1350 2600
F 0 "P6" V 1300 2600 50  0000 C CNN
F 1 "CONN_5" V 1400 2600 50  0000 C CNN
F 2 "" H 1350 2600 60  0000 C CNN
F 3 "" H 1350 2600 60  0000 C CNN
	1    1350 2600
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR048
U 1 1 546BE7D1
P 1950 3000
F 0 "#PWR048" H 1950 3000 30  0001 C CNN
F 1 "GND" H 1950 2930 30  0001 C CNN
F 2 "" H 1950 3000 60  0000 C CNN
F 3 "" H 1950 3000 60  0000 C CNN
	1    1950 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 2800 1950 2800
Wire Wire Line
	1950 2800 1950 3000
$Comp
L 3V3 #PWR049
U 1 1 546BE83D
P 1950 2250
F 0 "#PWR049" H 1950 2350 40  0001 C CNN
F 1 "3V3" H 1950 2375 40  0000 C CNN
F 2 "" H 1950 2250 60  0000 C CNN
F 3 "" H 1950 2250 60  0000 C CNN
	1    1950 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 2400 1950 2400
Wire Wire Line
	1950 2400 1950 2250
Text GLabel 2200 2400 2    60   Input ~ 0
LINE_SENSOR_R
Text GLabel 2200 2600 2    60   Input ~ 0
LINE_SENSOR_C
Text GLabel 2200 2800 2    60   Input ~ 0
LINE_SENSOR_L
Wire Wire Line
	1750 2600 2200 2600
Wire Wire Line
	1750 2500 2050 2500
Wire Wire Line
	2050 2500 2050 2400
Wire Wire Line
	2050 2400 2200 2400
Wire Wire Line
	1750 2700 2050 2700
Wire Wire Line
	2050 2700 2050 2800
Wire Wire Line
	2050 2800 2200 2800
Text GLabel 4050 3800 0    60   Input ~ 0
LINE_SENSOR_C
Wire Wire Line
	2000 4650 2000 4750
Wire Wire Line
	2000 5250 2000 5350
$Comp
L R R16
U 1 1 547220E2
P 9550 6400
F 0 "R16" V 9630 6400 40  0000 C CNN
F 1 "10K" V 9557 6401 40  0000 C CNN
F 2 "~" V 9480 6400 30  0000 C CNN
F 3 "~" H 9550 6400 30  0000 C CNN
	1    9550 6400
	-1   0    0    1   
$EndComp
$Comp
L R R18
U 1 1 547220F8
P 10450 6400
F 0 "R18" V 10530 6400 40  0000 C CNN
F 1 "10K" V 10457 6401 40  0000 C CNN
F 2 "~" V 10380 6400 30  0000 C CNN
F 3 "~" H 10450 6400 30  0000 C CNN
	1    10450 6400
	-1   0    0    1   
$EndComp
Connection ~ 9550 5700
Connection ~ 10450 5700
Wire Wire Line
	9550 6650 9550 6700
Wire Wire Line
	9550 6700 10450 6700
Wire Wire Line
	10450 6700 10450 6650
$Comp
L GND #PWR050
U 1 1 547221EF
P 10400 4000
F 0 "#PWR050" H 10400 4000 30  0001 C CNN
F 1 "GND" H 10400 3930 30  0001 C CNN
F 2 "" H 10400 4000 60  0000 C CNN
F 3 "" H 10400 4000 60  0000 C CNN
	1    10400 4000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR051
U 1 1 547221F6
P 10000 6850
F 0 "#PWR051" H 10000 6850 30  0001 C CNN
F 1 "GND" H 10000 6780 30  0001 C CNN
F 2 "" H 10000 6850 60  0000 C CNN
F 3 "" H 10000 6850 60  0000 C CNN
	1    10000 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 6700 10000 6850
Connection ~ 10000 6700
Wire Wire Line
	8050 1250 8050 1350
Text GLabel 3500 5150 0    60   Input ~ 0
RTCINT1
Text GLabel 3500 5300 0    60   Input ~ 0
RTCINT2
Text GLabel 3500 5450 0    60   Input ~ 0
MPUINT
Text GLabel 3500 5600 0    60   Input ~ 0
SD_SWITCH
Text GLabel 3500 5750 0    60   Input ~ 0
MOTOR1F
Text GLabel 3500 5900 0    60   Input ~ 0
MOTOR2F
Wire Wire Line
	3500 5150 3900 5150
Wire Wire Line
	3900 5150 3900 5300
Wire Wire Line
	3900 5300 3950 5300
Wire Wire Line
	3500 5300 3800 5300
Wire Wire Line
	3800 5300 3800 5400
Wire Wire Line
	3800 5400 3950 5400
Wire Wire Line
	3500 5450 3700 5450
Wire Wire Line
	3700 5450 3700 5500
Wire Wire Line
	3700 5500 3950 5500
Wire Wire Line
	3500 5600 3950 5600
Wire Wire Line
	3500 5750 3700 5750
Wire Wire Line
	3700 5750 3700 5700
Wire Wire Line
	3700 5700 3950 5700
Wire Wire Line
	3500 5900 3800 5900
Wire Wire Line
	3800 5900 3800 5800
Wire Wire Line
	3800 5800 3950 5800
Text GLabel 7150 3800 2    60   Input ~ 0
GLCD_A0_LP
Wire Wire Line
	6850 3800 7150 3800
Text GLabel 3500 6050 0    60   Input ~ 0
WIFI_INT
Text GLabel 7150 1550 2    60   Input ~ 0
PE0
Wire Wire Line
	6850 1550 7150 1550
Text GLabel 7150 3350 2    60   Input ~ 0
PC4
Wire Wire Line
	6850 3350 7150 3350
Text GLabel 7150 4250 2    60   Input ~ 0
PF4
Wire Wire Line
	6850 4250 7150 4250
Text GLabel 4050 1850 0    60   Input ~ 0
PE4
Wire Wire Line
	4050 1850 4550 1850
Text GLabel 4050 2300 0    60   Input ~ 0
PA5
Wire Wire Line
	4050 2300 4550 2300
$Comp
L CONN_5 P9
U 1 1 54726AA3
P 6850 5650
F 0 "P9" V 6800 5650 50  0000 C CNN
F 1 "GPIO" V 6900 5650 50  0000 C CNN
F 2 "" H 6850 5650 60  0000 C CNN
F 3 "" H 6850 5650 60  0000 C CNN
	1    6850 5650
	1    0    0    -1  
$EndComp
Text GLabel 6150 5350 0    60   Input ~ 0
PA5
Text GLabel 6150 5500 0    60   Input ~ 0
PC4
Text GLabel 6150 5650 0    60   Input ~ 0
PE0
Text GLabel 6150 5800 0    60   Input ~ 0
PE4
Text GLabel 6150 5950 0    60   Input ~ 0
PF4
Wire Wire Line
	6150 5350 6450 5350
Wire Wire Line
	6450 5350 6450 5450
Wire Wire Line
	6150 5500 6400 5500
Wire Wire Line
	6400 5500 6400 5550
Wire Wire Line
	6400 5550 6450 5550
Wire Wire Line
	6150 5650 6450 5650
Wire Wire Line
	6150 5800 6400 5800
Wire Wire Line
	6400 5800 6400 5750
Wire Wire Line
	6400 5750 6450 5750
Wire Wire Line
	6150 5950 6450 5950
Wire Wire Line
	6450 5950 6450 5850
$Comp
L CONN_8 P8
U 1 1 5473C1EB
P 4300 5650
F 0 "P8" V 4250 5650 60  0000 C CNN
F 1 "OPTIONAL_PERIPH" V 4350 5650 60  0000 C CNN
F 2 "" H 4300 5650 60  0000 C CNN
F 3 "" H 4300 5650 60  0000 C CNN
	1    4300 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 6050 3900 6050
Text GLabel 3500 6200 0    60   Input ~ 0
AUD_DAC_CL
Wire Wire Line
	3500 6200 3950 6200
Wire Wire Line
	3950 6200 3950 6000
Wire Wire Line
	3950 5900 3900 5900
Wire Wire Line
	3900 5900 3900 6050
$EndSCHEMATC
