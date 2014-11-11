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
Sheet 1 3
Title ""
Date "11 nov 2014"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 800  900  2350 1400
U 5447238D
F0 "I2C Peripherals" 50
F1 "i2c_peripherals.sch" 50
$EndSheet
$Sheet
S 800  2700 2350 1450
U 54487774
F0 "SPI Peripherals" 50
F1 "SPI_peripherals.sch" 50
$EndSheet
Text GLabel 9650 1200 0    60   Input ~ 0
~RST
Text GLabel 10900 1200 2    60   Input ~ 0
RST
$Comp
L GND #PWR?
U 1 1 54556D99
P 10200 1700
F 0 "#PWR?" H 10200 1700 30  0001 C CNN
F 1 "GND" H 10200 1630 30  0001 C CNN
F 2 "" H 10200 1700 60  0000 C CNN
F 3 "" H 10200 1700 60  0000 C CNN
	1    10200 1700
	1    0    0    -1  
$EndComp
$Comp
L 3V3 #PWR?
U 1 1 54556DAA
P 10200 700
F 0 "#PWR?" H 10200 800 40  0001 C CNN
F 1 "3V3" H 10200 825 40  0000 C CNN
F 2 "" H 10200 700 60  0000 C CNN
F 3 "" H 10200 700 60  0000 C CNN
	1    10200 700 
	1    0    0    -1  
$EndComp
$Comp
L SN74LVC1G04 INV?
U 1 1 54556F3C
P 10200 1200
F 0 "INV?" H 10500 1300 40  0000 C CNN
F 1 "SN74LVC1G04" H 10500 1400 40  0000 C CNN
F 2 "" H 10200 1200 60  0000 C CNN
F 3 "" H 10200 1200 60  0000 C CNN
	1    10200 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	10200 700  10200 750 
Wire Wire Line
	9700 1200 9650 1200
Wire Wire Line
	10200 1650 10200 1700
Wire Wire Line
	10900 1200 10850 1200
$EndSCHEMATC
