Peripherals List:
-----------------

I2C: (2 pins) (PA6,7) (I2C1) - Total cost: 14.12 -> 23.29
 * Accelerometer/Gyroscope/Magnetometer (Invesense - MPU9150)
    * Digikey (1428-1009-1-ND) - 12.70
    * CDI (MPU-9150) - 6.62
    * Invesense - 6.62
 * RTC (SII - S-35390A)
    * Digikey (728-1007-1-ND) - 1.61
    * Mouser (s-35390A-T8T1G) - 1.61
 * Temperature sensor (TI - TMP100)
    * Digikey (296-12749-6-ND) - 3.12
    * Mouser (TMP100NA/250) - 2.59
 * 2x Motor controller (TI - DRV8830)
    * Digikey (296-33278-5-ND) - 2.93
    * Arrow (DRV8830DGQ) - 1.65

SPI: (3 pins + log2(n) + 1) (PA2-4 CS, PB6-7 SPI, PB4 CLK) (SSI0) Total Cost: 7.63 -> 10.67
 * SDCard (Molex 47219-2001)
    * Mouser (47219-2001) - 0.98
 * WiFi Controller (TI - CC3200)
    * Digikey (296-38012-ND) - 18.94
    * Avnet Express (CC3200R1M2RGC) - 16.82
 * Audio Codec (WM8731)
    * Mouser (WM8731SEDS/RV) - 3.06
    * Newark (52R8742) - 3.45
    Preamps?
    * Microphone
    * Speaker
 * D-A Converter (TI - TLV56211 (4 ch 8bit))
    * Digikey (296-2307-5-ND) - 6.24
    * Arrow (TLV5621ID) - 3.59
 * GLCD (Nokia 5110) (deprecated)
 * GLCD (Newhaven NHD-C12832A1Z-NSW-BBW-3V3)
    * Digikey (NHD-C12832A1Z-NSW-BBW-3V3-ND) - 11.00
    * Mouser (NHD-C12832A1Z-NSW-BBW-3V3) - 11.00
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

