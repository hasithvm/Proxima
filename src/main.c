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

#include "utils/uartstdio.h"

int main(void) {
    uint32_t tempC;

    proximaAdcInit(proximaAdcTemp, proximaSample);

    proximaUartInit(proximaUartUsb);

    while(1) {
        tempC = ((147.5) - ((75 * 3.0) * (float)proximaAdcSample(proximaAdcTemp)) / 4096);
        UARTprintf("The current temperature is: %d\n\r", tempC);
    }
}
