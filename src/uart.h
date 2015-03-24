#ifndef __UART_H__
#define __UART_H__

#include <stdint.h>

typedef enum {
    PROXIMA_UART_USB,
    PROXIMA_UART1,
} ProximaUartEnum;


void proximaUartInit(ProximaUartEnum uart);

#endif
