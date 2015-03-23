#ifndef __UART_H__
#define __UART_H__

#include <stdint.h>

typedef enum {
    proximaUartUsb,
    proximaUart1,
} ProximaUartEnum;


void proximaUartInit(ProximaUartEnum uart);

#endif
