Peripherals List:
-----------------

I2C: (2 pins) (PA6,7) (I2C1)
 * Accelerometer/Gyroscope/Magnetometer (Invesense - MPU9150)
 * RTC (SII - S-35390A)
 * Temperature sensor (TI - TMP100)
 * 2x Motor controller (TI - DRV8830)

SPI: (3 pins + log2(n) + 1) (PA2-4 CS, PB6-7 SPI, PB4 CLK) (SSI0)
 * SDCard (Duh)
 * WiFi Controller (TI - CC3200)
 * Audio Codec (WM8731)
    Preamps?
    * Microphone
    * Speaker
 * D-A Converter (TI - TLV56211 (4 ch 8bit))
 * GLCD (Nokia 5110)
-- Requires 3-8 decoder

GPIO: (4 + 2 + 2 + 1)
 * Keypad 2x2 matrix (PC5-6 + PD6-7) (GPIO)
 * Bumpers (2 bumpers, 1 pin per bumper) (PB2-3) (GPIO)
 * LEDs (2 leds, 1 pin per led) (PF2-3) (PWM5-7)
 * NMI Button (PF0)

AD Converter - Internal (
 * 2xPot (PE1-2) 
 * 2xPhoto Resistors (PD2-3)
 * 2xExposed (PE5, PB5)
 * Breathalyzer?
 * Ultrasonic sensor?
 * Photoresistor?
 * Pressure?

UART: UART1 (PB0-1)
 * IrDA (RPM973-H11)

Remaining pins
--------------

3.3
2x Ground
Reset
VUsb

6x GPIO
 * 1x PWM

