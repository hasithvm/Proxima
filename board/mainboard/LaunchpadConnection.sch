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
Sheet 5 10
Title ""
Date "3 mar 2015"
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
F 2 "footprints:TivaC" H 5700 2750 60  0000 C CNN
F 3 "~" H 5700 2750 60  0000 C CNN
	1    5700 2750
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
L GND #PWR037
U 1 1 5468095A
P 8050 1350
F 0 "#PWR037" H 8050 1350 30  0001 C CNN
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
L GND #PWR038
U 1 1 546A7E28
P 4300 3200
F 0 "#PWR038" H 4300 3200 30  0001 C CNN
F 1 "GND" H 4300 3130 30  0001 C CNN
F 2 "" H 4300 3200 60  0000 C CNN
F 3 "" H 4300 3200 60  0000 C CNN
	1    4300 3200
	1    0    0    -1  
$EndComp
Text GLabel 4050 3950 0    60   Input ~ 0
AIN3
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
Text GLabel 9750 2550 0    60   Input ~ 0
LED2
Text GLabel 9750 2400 0    60   Input ~ 0
LED1
$Comp
L LED D2
U 1 1 546A8A5B
P 10950 2600
F 0 "D2" H 10950 2700 50  0000 C CNN
F 1 "RLED" H 10950 2500 50  0000 C CNN
F 2 "LEDs:LED-0805" H 10950 2600 60  0000 C CNN
F 3 "~" H 10950 2600 60  0000 C CNN
	1    10950 2600
	0    1    1    0   
$EndComp
$Comp
L LED D1
U 1 1 546A8A77
P 10650 2750
F 0 "D1" H 10650 2850 50  0000 C CNN
F 1 "GLED" H 10650 2650 50  0000 C CNN
F 2 "LEDs:LED-0805" H 10650 2750 60  0000 C CNN
F 3 "~" H 10650 2750 60  0000 C CNN
	1    10650 2750
	0    1    1    0   
$EndComp
$Comp
L R R17
U 1 1 546A8AAA
P 10100 2400
F 0 "R17" V 10180 2400 40  0000 C CNN
F 1 "220" V 10107 2401 40  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 10030 2400 30  0001 C CNN
F 3 "~" H 10100 2400 30  0000 C CNN
	1    10100 2400
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR039
U 1 1 546A8BD2
P 10800 3100
F 0 "#PWR039" H 10800 3100 30  0001 C CNN
F 1 "GND" H 10800 3030 30  0001 C CNN
F 2 "" H 10800 3100 60  0000 C CNN
F 3 "" H 10800 3100 60  0000 C CNN
	1    10800 3100
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW1
U 1 1 546A8D80
P 9200 5100
F 0 "SW1" H 9350 5210 50  0000 C CNN
F 1 "SW_PUSH" H 9200 5020 50  0000 C CNN
F 2 "footprints:PTS645" H 9200 5100 60  0000 C CNN
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
F 2 "footprints:PTS645" H 10100 5100 60  0000 C CNN
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
F 2 "footprints:PTS645" H 9200 5700 60  0000 C CNN
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
F 2 "footprints:PTS645" H 10100 5700 60  0000 C CNN
F 3 "~" H 10100 5700 60  0000 C CNN
	1    10100 5700
	1    0    0    -1  
$EndComp
Text GLabel 8500 5100 0    60   Input ~ 0
KPAD_R1
Text GLabel 8500 5700 0    60   Input ~ 0
KPAD_R2
Text GLabel 9600 4650 2    60   Input ~ 0
KPAD_C1
Text GLabel 10500 4650 2    60   Input ~ 0
KPAD_C2
Text GLabel 10150 1550 0    60   Input ~ 0
BUMP1
Text GLabel 10150 1750 0    60   Input ~ 0
BUMP2
Text GLabel 4050 3800 0    60   Input ~ 0
LINE_SENSOR_C
$Comp
L R R16
U 1 1 547220E2
P 9550 6400
F 0 "R16" V 9630 6400 40  0000 C CNN
F 1 "10K" V 9557 6401 40  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 9480 6400 30  0001 C CNN
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
F 2 "Resistors_SMD:R_0603" V 10380 6400 30  0001 C CNN
F 3 "~" H 10450 6400 30  0000 C CNN
	1    10450 6400
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR040
U 1 1 547221EF
P 10800 3100
F 0 "#PWR040" H 10800 3100 30  0001 C CNN
F 1 "GND" H 10800 3030 30  0001 C CNN
F 2 "" H 10800 3100 60  0000 C CNN
F 3 "" H 10800 3100 60  0000 C CNN
	1    10800 3100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR041
U 1 1 547221F6
P 10000 6850
F 0 "#PWR041" H 10000 6850 30  0001 C CNN
F 1 "GND" H 10000 6780 30  0001 C CNN
F 2 "" H 10000 6850 60  0000 C CNN
F 3 "" H 10000 6850 60  0000 C CNN
	1    10000 6850
	1    0    0    -1  
$EndComp
Text GLabel 1500 6900 0    60   Input ~ 0
RTCINT1
Text GLabel 1500 7050 0    60   Input ~ 0
RTCINT2
Text GLabel 1500 6600 0    60   Input ~ 0
PCINT
Text GLabel 1500 7200 0    60   Input ~ 0
SD_SWITCH
Text GLabel 1500 7350 0    60   Input ~ 0
ACCELINT1
Text GLabel 1500 7500 0    60   Input ~ 0
ACCELINT2
Text GLabel 7150 3800 2    60   Input ~ 0
GLCD_A0_LP
Text GLabel 1500 6750 0    60   Input ~ 0
WIFI_INT
Text GLabel 7150 1550 2    60   Input ~ 0
PE0
Text GLabel 7150 3350 2    60   Input ~ 0
PC4
Text GLabel 7150 4250 2    60   Input ~ 0
PF4
Text GLabel 4050 1850 0    60   Input ~ 0
PE4
Text GLabel 4050 2300 0    60   Input ~ 0
PA5
$Comp
L CONN_01X05 P9
U 1 1 54726AA3
P 2550 1200
F 0 "P9" V 2500 1200 50  0000 C CNN
F 1 "GPIO" V 2600 1200 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x05" H 2550 1200 60  0001 C CNN
F 3 "" H 2550 1200 60  0000 C CNN
	1    2550 1200
	1    0    0    -1  
$EndComp
Text GLabel 1850 900  0    60   Input ~ 0
PA5
Text GLabel 1850 1050 0    60   Input ~ 0
PC4
Text GLabel 1850 1200 0    60   Input ~ 0
PE0
Text GLabel 1850 1350 0    60   Input ~ 0
PE4
Text GLabel 1850 1500 0    60   Input ~ 0
PF4
$Comp
L CONN_01X04 P10
U 1 1 54741374
P 10850 1700
F 0 "P10" V 10800 1700 50  0000 C CNN
F 1 "BUMPERS" V 10900 1700 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04" H 10850 1700 60  0001 C CNN
F 3 "" H 10850 1700 60  0000 C CNN
	1    10850 1700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR042
U 1 1 54741383
P 10400 2000
F 0 "#PWR042" H 10400 2000 30  0001 C CNN
F 1 "GND" H 10400 1930 30  0001 C CNN
F 2 "" H 10400 2000 60  0000 C CNN
F 3 "" H 10400 2000 60  0000 C CNN
	1    10400 2000
	1    0    0    -1  
$EndComp
$Comp
L R R9
U 1 1 54DE166E
P 10100 2550
F 0 "R9" V 10180 2550 40  0000 C CNN
F 1 "220" V 10107 2551 40  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 10030 2550 30  0001 C CNN
F 3 "~" H 10100 2550 30  0000 C CNN
	1    10100 2550
	0    -1   -1   0   
$EndComp
$Comp
L R R8
U 1 1 54DE17F4
P 10200 1200
F 0 "R8" V 10280 1200 40  0000 C CNN
F 1 "47k" V 10207 1201 40  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 10130 1200 30  0001 C CNN
F 3 "~" H 10200 1200 30  0000 C CNN
	1    10200 1200
	-1   0    0    1   
$EndComp
$Comp
L R R19
U 1 1 54DE180D
P 10350 1200
F 0 "R19" V 10430 1200 40  0000 C CNN
F 1 "47k" V 10357 1201 40  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 10280 1200 30  0001 C CNN
F 3 "~" H 10350 1200 30  0000 C CNN
	1    10350 1200
	1    0    0    -1  
$EndComp
$Comp
L 3V3 #PWR043
U 1 1 54DE19B8
P 10200 750
F 0 "#PWR043" H 10200 850 40  0001 C CNN
F 1 "3V3" H 10200 875 40  0000 C CNN
F 2 "" H 10200 750 60  0000 C CNN
F 3 "" H 10200 750 60  0000 C CNN
	1    10200 750 
	1    0    0    -1  
$EndComp
$Comp
L 3V3 #PWR044
U 1 1 54DE1AF6
P 9700 3300
F 0 "#PWR044" H 9700 3400 40  0001 C CNN
F 1 "3V3" H 9700 3425 40  0000 C CNN
F 2 "" H 9700 3300 60  0000 C CNN
F 3 "" H 9700 3300 60  0000 C CNN
	1    9700 3300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR045
U 1 1 54DE1B05
P 10950 3550
F 0 "#PWR045" H 10950 3550 30  0001 C CNN
F 1 "GND" H 10950 3480 30  0001 C CNN
F 2 "" H 10950 3550 60  0000 C CNN
F 3 "" H 10950 3550 60  0000 C CNN
	1    10950 3550
	1    0    0    -1  
$EndComp
$Comp
L R R7
U 1 1 54DE1B12
P 10050 3350
F 0 "R7" V 10130 3350 40  0000 C CNN
F 1 "220" V 10057 3351 40  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 9980 3350 30  0001 C CNN
F 3 "~" H 10050 3350 30  0000 C CNN
	1    10050 3350
	0    -1   -1   0   
$EndComp
$Comp
L LED D3
U 1 1 54DE1CC5
P 10600 3350
F 0 "D3" H 10600 3450 50  0000 C CNN
F 1 "POWER" H 10600 3200 50  0000 C CNN
F 2 "LEDs:LED-0805" H 10600 3350 60  0000 C CNN
F 3 "~" H 10600 3350 60  0000 C CNN
	1    10600 3350
	1    0    0    -1  
$EndComp
$Comp
L R R20
U 1 1 54ED2BE5
P 3800 6050
F 0 "R20" V 3880 6050 40  0000 C CNN
F 1 "220" V 3807 6051 40  0000 C CNN
F 2 "" V 3730 6050 30  0001 C CNN
F 3 "~" H 3800 6050 30  0000 C CNN
	1    3800 6050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR046
U 1 1 54ED2BF4
P 3800 7100
F 0 "#PWR046" H 3800 7100 30  0001 C CNN
F 1 "GND" H 3800 7030 30  0001 C CNN
F 2 "" H 3800 7100 60  0000 C CNN
F 3 "" H 3800 7100 60  0000 C CNN
	1    3800 7100
	1    0    0    -1  
$EndComp
$Comp
L 3V3 #PWR047
U 1 1 54ED2C03
P 3800 5050
F 0 "#PWR047" H 3800 5150 40  0001 C CNN
F 1 "3V3" H 3800 5175 40  0000 C CNN
F 2 "" H 3800 5050 60  0000 C CNN
F 3 "" H 3800 5050 60  0000 C CNN
	1    3800 5050
	1    0    0    -1  
$EndComp
$Comp
L MOS_P Q1
U 1 1 54ED2C12
P 3700 5450
F 0 "Q1" H 3700 5640 60  0000 R CNN
F 1 "BSS84" H 3650 5200 60  0000 R CNN
F 2 "" H 3700 5450 60  0001 C CNN
F 3 "~" H 3700 5450 60  0000 C CNN
	1    3700 5450
	1    0    0    1   
$EndComp
$Comp
L LED D4
U 1 1 54ED2C2E
P 3800 6600
F 0 "D4" H 3800 6700 50  0000 C CNN
F 1 "CONTROL" H 3800 6450 50  0000 C CNN
F 2 "LEDs:LED-0805" H 3800 6600 60  0000 C CNN
F 3 "~" H 3800 6600 60  0000 C CNN
	1    3800 6600
	0    1    1    0   
$EndComp
Text GLabel 3350 5450 0    60   Input ~ 0
CC_CONTROL
$Comp
L CONN_01X07 P8
U 1 1 54ED301F
P 2300 7050
F 0 "P8" V 2270 7050 60  0000 C CNN
F 1 "OPTIONAL_PERIPH" V 2370 7050 60  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x07" H 2300 7050 60  0001 C CNN
F 3 "" H 2300 7050 60  0000 C CNN
	1    2300 7050
	1    0    0    -1  
$EndComp
$Comp
L RPM841-H11 IR1
U 1 1 54EE0118
P 5550 5650
F 0 "IR1" H 5550 5100 60  0000 C CNN
F 1 "RPM841-H11" H 5550 5850 60  0000 C CNN
F 2 "footprints:RPM973-H11" H 5550 5650 60  0001 C CNN
F 3 "" H 5550 5650 60  0000 C CNN
	1    5550 5650
	1    0    0    -1  
$EndComp
$Comp
L 3V3 #PWR048
U 1 1 54EE0127
P 4300 5250
F 0 "#PWR048" H 4300 5350 40  0001 C CNN
F 1 "3V3" H 4300 5375 40  0000 C CNN
F 2 "" H 4300 5250 60  0000 C CNN
F 3 "" H 4300 5250 60  0000 C CNN
	1    4300 5250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR049
U 1 1 54EE0140
P 4850 6400
F 0 "#PWR049" H 4850 6400 30  0001 C CNN
F 1 "GND" H 4850 6330 30  0001 C CNN
F 2 "" H 4850 6400 60  0000 C CNN
F 3 "" H 4850 6400 60  0000 C CNN
	1    4850 6400
	1    0    0    -1  
$EndComp
$Comp
L R R21
U 1 1 54EE031E
P 4650 5700
F 0 "R21" V 4550 5700 40  0000 C CNN
F 1 "3" V 4657 5701 40  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 4580 5700 30  0001 C CNN
F 3 "~" H 4650 5700 30  0000 C CNN
	1    4650 5700
	0    -1   -1   0   
$EndComp
Text GLabel 6225 5700 2    60   Input ~ 0
UART_RX
Text GLabel 6225 5575 2    60   Input ~ 0
UART_TX
$Comp
L CONN_01X03 K1
U 1 1 54EE05C4
P 7500 5850
F 0 "K1" V 7450 5850 50  0000 C CNN
F 1 "IRDA_EN" V 7550 5850 40  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 7500 5850 60  0001 C CNN
F 3 "" H 7500 5850 60  0000 C CNN
	1    7500 5850
	1    0    0    -1  
$EndComp
$Comp
L 3V3 #PWR050
U 1 1 54EE05D1
P 7100 5500
F 0 "#PWR050" H 7100 5600 40  0001 C CNN
F 1 "3V3" H 7100 5625 40  0000 C CNN
F 2 "" H 7100 5500 60  0000 C CNN
F 3 "" H 7100 5500 60  0000 C CNN
	1    7100 5500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR051
U 1 1 54EE05D7
P 7100 6100
F 0 "#PWR051" H 7100 6100 30  0001 C CNN
F 1 "GND" H 7100 6030 30  0001 C CNN
F 2 "" H 7100 6100 60  0000 C CNN
F 3 "" H 7100 6100 60  0000 C CNN
	1    7100 6100
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X04 P13
U 1 1 54EE088E
P 2250 4600
F 0 "P13" V 2200 4600 50  0000 C CNN
F 1 "UART" V 2300 4600 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04" H 2250 4600 60  0001 C CNN
F 3 "" H 2250 4600 60  0000 C CNN
	1    2250 4600
	1    0    0    -1  
$EndComp
$Comp
L 3V3 #PWR052
U 1 1 54EE0894
P 1600 4200
F 0 "#PWR052" H 1600 4300 40  0001 C CNN
F 1 "3V3" H 1600 4325 40  0000 C CNN
F 2 "" H 1600 4200 60  0000 C CNN
F 3 "" H 1600 4200 60  0000 C CNN
	1    1600 4200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR053
U 1 1 54EE093D
P 1800 4950
F 0 "#PWR053" H 1800 4950 30  0001 C CNN
F 1 "GND" H 1800 4880 30  0001 C CNN
F 2 "" H 1800 4950 60  0000 C CNN
F 3 "" H 1800 4950 60  0000 C CNN
	1    1800 4950
	1    0    0    -1  
$EndComp
Text GLabel 1550 4500 0    60   Input ~ 0
UART_RX
Text GLabel 1550 4350 0    60   Input ~ 0
UART_TX
NoConn ~ 6850 1700
$Comp
L R R10
U 1 1 54F5F6BC
P 8900 1850
F 0 "R10" V 8980 1850 40  0000 C CNN
F 1 "10k" V 8907 1851 40  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 8830 1850 30  0001 C CNN
F 3 "~" H 8900 1850 30  0000 C CNN
	1    8900 1850
	-1   0    0    1   
$EndComp
Text GLabel 9000 2150 2    60   Input ~ 0
RST
$Comp
L 3V3 #PWR054
U 1 1 54F5F6CD
P 8900 1400
F 0 "#PWR054" H 8900 1500 40  0001 C CNN
F 1 "3V3" H 8900 1525 40  0000 C CNN
F 2 "" H 8900 1400 60  0000 C CNN
F 3 "" H 8900 1400 60  0000 C CNN
	1    8900 1400
	1    0    0    -1  
$EndComp
Text GLabel 4050 1250 0    60   Input ~ 0
3V3_LP
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
	4050 1250 4550 1250
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
	10350 2400 10950 2400
Wire Wire Line
	9850 2400 9750 2400
Wire Wire Line
	10650 2950 10650 3000
Wire Wire Line
	10650 3000 10950 3000
Wire Wire Line
	10800 3000 10800 3100
Wire Wire Line
	10950 3000 10950 2800
Connection ~ 10800 3000
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
Wire Wire Line
	9550 5700 9500 5700
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
Wire Wire Line
	10150 1550 10650 1550
Wire Wire Line
	10150 1750 10650 1750
Connection ~ 9550 5700
Connection ~ 10450 5700
Wire Wire Line
	9550 6650 9550 6700
Wire Wire Line
	9550 6700 10450 6700
Wire Wire Line
	10450 6700 10450 6650
Wire Wire Line
	10000 6700 10000 6850
Connection ~ 10000 6700
Wire Wire Line
	8050 1250 8050 1350
Wire Wire Line
	1500 6600 1900 6600
Wire Wire Line
	1900 6600 1900 6750
Wire Wire Line
	1900 6750 2100 6750
Wire Wire Line
	1500 6750 1800 6750
Wire Wire Line
	1800 6750 1800 6850
Wire Wire Line
	1800 6850 2100 6850
Wire Wire Line
	1500 6900 1700 6900
Wire Wire Line
	1700 6900 1700 6950
Wire Wire Line
	1700 6950 2100 6950
Wire Wire Line
	1500 7050 2100 7050
Wire Wire Line
	1500 7200 1700 7200
Wire Wire Line
	1700 7200 1700 7150
Wire Wire Line
	1700 7150 2100 7150
Wire Wire Line
	1500 7350 1800 7350
Wire Wire Line
	1800 7350 1800 7250
Wire Wire Line
	1800 7250 2100 7250
Wire Wire Line
	6850 3800 7150 3800
Wire Wire Line
	6850 1550 7150 1550
Wire Wire Line
	6850 3350 7150 3350
Wire Wire Line
	6850 4250 7150 4250
Wire Wire Line
	4050 1850 4550 1850
Wire Wire Line
	4050 2300 4550 2300
Wire Wire Line
	1850 900  2150 900 
Wire Wire Line
	2150 900  2150 1000
Wire Wire Line
	1850 1050 2100 1050
Wire Wire Line
	2100 1050 2100 1100
Wire Wire Line
	2100 1100 2350 1100
Wire Wire Line
	1850 1200 2350 1200
Wire Wire Line
	1850 1350 2100 1350
Wire Wire Line
	2100 1350 2100 1300
Wire Wire Line
	2100 1300 2350 1300
Wire Wire Line
	1850 1500 2150 1500
Wire Wire Line
	2150 1500 2150 1400
Wire Wire Line
	1500 7500 1900 7500
Wire Wire Line
	1900 7350 2100 7350
Wire Wire Line
	1900 7500 1900 7350
Wire Wire Line
	10400 1650 10650 1650
Wire Wire Line
	10400 1650 10400 2000
Wire Wire Line
	10400 1850 10650 1850
Connection ~ 10400 1850
Wire Wire Line
	9750 2550 9850 2550
Wire Wire Line
	10350 2550 10650 2550
Wire Wire Line
	10200 1450 10200 1550
Connection ~ 10200 1550
Wire Wire Line
	10350 1450 10350 1750
Connection ~ 10350 1750
Wire Wire Line
	10200 750  10200 950 
Wire Wire Line
	10350 950  10350 900 
Wire Wire Line
	10350 900  10200 900 
Connection ~ 10200 900 
Wire Wire Line
	10300 3350 10400 3350
Wire Wire Line
	10950 3550 10950 3350
Wire Wire Line
	10950 3350 10800 3350
Wire Wire Line
	9700 3300 9700 3350
Wire Wire Line
	9700 3350 9800 3350
Wire Wire Line
	3800 5800 3800 5650
Wire Wire Line
	3800 6800 3800 7100
Wire Wire Line
	3800 5050 3800 5250
Wire Wire Line
	3350 5450 3500 5450
Wire Wire Line
	5000 6000 4850 6000
Wire Wire Line
	4850 6000 4850 6400
Wire Wire Line
	5000 6100 4850 6100
Connection ~ 4850 6100
Wire Wire Line
	5000 5600 4300 5600
Wire Wire Line
	4300 5250 4300 5700
Wire Wire Line
	4900 5700 5000 5700
Wire Wire Line
	4300 5700 4400 5700
Connection ~ 4300 5600
Wire Wire Line
	7100 5500 7100 5750
Wire Wire Line
	7100 5750 7300 5750
Wire Wire Line
	7100 5950 7300 5950
Wire Wire Line
	7100 5950 7100 6100
Wire Wire Line
	6100 5850 7300 5850
Wire Wire Line
	1800 4450 2050 4450
Wire Wire Line
	1800 4450 1800 4350
Wire Wire Line
	1800 4750 1800 4950
Wire Wire Line
	1800 4750 2050 4750
Wire Wire Line
	1700 4550 2050 4550
Wire Wire Line
	1700 4550 1700 4500
Wire Wire Line
	1700 4500 1550 4500
Wire Wire Line
	3800 6300 3800 6400
Wire Wire Line
	1800 4350 1550 4350
Wire Wire Line
	1600 4650 2050 4650
Wire Wire Line
	1600 4650 1600 4200
Wire Wire Line
	8900 1600 8900 1400
Wire Wire Line
	9000 2150 8900 2150
Wire Wire Line
	8900 2150 8900 2100
Wire Wire Line
	2150 1000 2350 1000
Wire Wire Line
	2150 1400 2350 1400
Wire Wire Line
	6100 5700 6225 5700
Wire Wire Line
	6100 5600 6175 5600
Wire Wire Line
	6175 5600 6175 5575
Wire Wire Line
	6175 5575 6225 5575
$Comp
L PWR_FLAG #FLG055
U 1 1 55A8C7A5
P 4325 1175
F 0 "#FLG055" H 4325 1270 30  0001 C CNN
F 1 "PWR_FLAG" H 4325 1355 30  0000 C CNN
F 2 "" H 4325 1175 60  0000 C CNN
F 3 "" H 4325 1175 60  0000 C CNN
	1    4325 1175
	1    0    0    -1  
$EndComp
Wire Wire Line
	4325 1175 4325 1250
Connection ~ 4325 1250
$EndSCHEMATC
