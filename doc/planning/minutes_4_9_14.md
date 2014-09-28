Minutes for Sept 4 meeting
--------------------------

The plan is to build a PCB (the main board) containing multiple sensors and motors for use as an educational robot platform.
This main board will have a socket for a TI Tiva C Launchpad which will contain the main application processor. The TI CC3200
WiFi chip on the main board will provide a WLAN accessible monitoring web page for all of the sensors on the main board.

The sensors on the board will be connected over several different types of bus:

I2C: (2 pins) (PA6,7) (I2C1)
 * Accelerometer/Gyroscope/Magnetometer (MPU9150)
 * RTC
 * Temperature sensor

SPI: (3 pins + log2(n) + 1) (PA2-5, PA3 Enable, PD6,7=chip select) (SSI0)
 * A-D Converter
    * Microphone
    * Ultrasonic sensor
 * SDCard
 * WiFi Controller
 * D-A Converter

GPIO: (7 + 3 + 1 + 3 + 1)
 * Keypad 2x3 matrix (PB2-6) (GPIO)
 * Bumpers (3 bumpers, 1 pin per bumper) (PE0-2) (GPIO)
 * Speaker (1 pin) (PB7) (PWM1)
 * LEDs (3 leds, 1 pin per led) (PF1-3) (PWM5-7)
 * NMI Button (PF0)

#Parallel: (7 pins) (PC4-7, PD0-2)
# * LCD (GPIO)

CAN: (2 pins) (PE4,PE5) (CAN0)
 * Motor Controller
   * Build CAN based motor controller circuit (ATTiny? CAN->PWM->Hbridge)

UART: UART1 (PB0-1)
 * IrDA

Missing Peripherals?
--------------------




Spare pins
----------

3.3
Ground
reset
vusb
Ground

PF4
PE3
PD3

