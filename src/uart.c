#include "uart.h"

#include <stdint.h>
#include <stdbool.h>

#include "inc/hw_memmap.h"

#include "driverlib/rom.h"
#include "driverlib/rom_map.h"

#include "driverlib/sysctl.h"
#include "driverlib/gpio.h"
#include "driverlib/pin_map.h"
#include "driverlib/uart.h"

#include "utils/uartstdio.h"


#define PUTFAIL(u, c) if (PutChar(u, c) == -1) { return -1; }

uint32_t ClockRate = 80000000;

uint32_t getUartSysctl(ProximaUartEnum uart) {
    switch (uart) {
        case PROXIMA_UART_USB:
            return SYSCTL_PERIPH_UART0;
        case PROXIMA_UART1:
            return SYSCTL_PERIPH_UART1;
    }
    return -1;
}

uint32_t getUartBase(ProximaUartEnum uart) {
    switch (uart) {
        case PROXIMA_UART_USB:
            return UART0_BASE;
        case PROXIMA_UART1:
            return UART1_BASE;
    }
    return -1;
}

uint32_t getUartGpioSysctl(ProximaUartEnum uart) {
    switch (uart) {
        case PROXIMA_UART_USB:
            return SYSCTL_PERIPH_GPIOA;
        case PROXIMA_UART1:
            return SYSCTL_PERIPH_GPIOB;
    }
    return -1;
}

uint32_t getUartGpioBase(ProximaUartEnum uart) {
    switch (uart) {
        case PROXIMA_UART_USB:
            return GPIO_PORTA_BASE;
        case PROXIMA_UART1:
            return GPIO_PORTB_BASE;
    }
    return -1;
}

void proximaUartInit(ProximaUartEnum uart) {
    uint32_t uartSysctl, uartBase;
    uint32_t gpioSysctl, gpioBase;

    uartSysctl = getUartSysctl(uart);
    uartBase = getUartBase(uart);

    gpioSysctl = getUartGpioSysctl(uart);
    gpioBase = getUartGpioBase(uart);

    MAP_SysCtlPeripheralEnable(gpioSysctl);

    switch(uart) {
        case PROXIMA_UART_USB:
            MAP_GPIOPinConfigure(GPIO_PA0_U0RX);
            MAP_GPIOPinConfigure(GPIO_PA1_U0TX);
            break;
        case PROXIMA_UART1:
            MAP_GPIOPinConfigure(GPIO_PB0_U1RX);
            MAP_GPIOPinConfigure(GPIO_PB1_U1TX);
            break;
    }

    MAP_SysCtlPeripheralEnable(uartSysctl);

    MAP_UARTClockSourceSet(uartBase, UART_CLOCK_PIOSC);

    switch (uart) {
        case PROXIMA_UART_USB:
        case PROXIMA_UART1:
            MAP_GPIOPinTypeUART(gpioBase, GPIO_PIN_0 | GPIO_PIN_1);
    }

    UARTStdioConfig(0, 115200, 16000000);
}
