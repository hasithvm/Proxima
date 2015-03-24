/**************************************************\
 *
 * Sysc4906 - Lab 1 (LCD)
 *
 * main.c - All of the source for the LCD lab
 *
 * Authors:
 *   Robert Nelson - 100845913
 *   Darren Stahl  - 100858939
 *
 **************************************************/
#ifdef DRIVERLIB
#ifndef TARGET_IS_BLIZZARD_RB1
#define TARGET_IS_BLIZZARD_RB1
#endif
#endif

#include "adc.h"
#include "uart.h"
#include "gpio.h"

#include "utils/uartstdio.h"

int main(void) {
    uint32_t tempC;

    proximaAdcInit(PROXIMA_ADC_TEMP, PROXIMA_ADC_SAMPLE);

    proximaGpioInit(PROXIMA_GPIO_LED1, PROXIMA_GPIO_OUTPUT);
    proximaGpioInit(PROXIMA_GPIO_SW1, PROXIMA_GPIO_INPUT);
    proximaGpioSetResistor(PROXIMA_GPIO_SW1, PROXIMA_GPIO_PULLUP);

    proximaUartInit(PROXIMA_UART_USB);

    proximaGpioWrite(PROXIMA_GPIO_LED1, 1);

    while(1) {
        tempC = ((147.5) - ((75 * 3.0) * (float)proximaAdcSample(PROXIMA_ADC_TEMP)) / 4096);
        if (proximaGpioRead(PROXIMA_GPIO_SW1)) {
            UARTprintf("SW1 is pressed!\n\r");
        }
        UARTprintf("The current temperature is: %d\n\r", tempC);
    }
}
