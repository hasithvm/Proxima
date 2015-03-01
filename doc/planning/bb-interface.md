*Description*

This document contains the required pins for the CC3200-Mainboard interface.

*Required Pins*

Function | count | Assigned |
----------------------------
|Power| 4:2x(3V3, GND)||
|SPI| |6:(3xCSes/MISO/MOSI/CLK)| CLK: GPIO14, MISO: GPIO15, MOSI: GPIO16  CS0: GPIO0, CS2: GPIO30, CS1: GPIO22|
|I2C| |2|SDA: GPIO12, SCL:GPIO13|
|SPI-slave| 1:/CS| GPIO17|
|Control (CTRL)| 1|GPIO3|     
|GLCD GPIO|1|GPIO10|
|Interrupts|6|GPIO[9:4]|
|UART|2|TX:GPIO1, RX:GPIO2|
|Interrupt Out|1|GPIO28|


Total pins: 24



