#include "uart_if.h"

#include "simplelink.h"

#include "rom.h"
#include "rom_map.h"

#include "hw_types.h"
#include "hw_memmap.h"

#include "pin.h"
#include "prcm.h"
#include "uart.h"


void EnableUart() {
    MAP_PRCMPeripheralClkEnable(PRCM_UARTA0, PRCM_RUN_MODE_CLK);
    MAP_PinTypeUART(PIN_55, PIN_MODE_3);
    MAP_PinTypeUART(PIN_57, PIN_MODE_3);

    MAP_UARTConfigSetExpClk(UARTA0_BASE, MAP_PRCMPeripheralClockGet(PRCM_UARTA0), 921600, UART_CONFIG_WLEN_8 | UART_CONFIG_PAR_NONE | UART_CONFIG_STOP_ONE);
    MAP_UARTEnable(UARTA0_BASE);
}

void _putNibble(uint8_t n) {
    if (n <= 9) {
        MAP_UARTCharPut(UARTA0_BASE, '0' + n);
    } else if (n <= 0xF) {
        MAP_UARTCharPut(UARTA0_BASE, 'A' + n - 0xA);
    } else {
        MAP_UARTCharPut(UARTA0_BASE, '?');
    }
}

char UartReadChar() {
    return MAP_UARTCharGet(UARTA0_BASE);
}

long UartReadCharNonBlock() {
    return MAP_UARTCharGetNonBlocking(UARTA0_BASE);
}

void UartReadData(uint8_t* data, uint32_t n) {
    while(n--) {
        *data++ = MAP_UARTCharGet(UARTA0_BASE);
    }
}

uint32_t UartReadInt() {
    uint32_t val = 0;
    uint8_t c;
    do {
        c = MAP_UARTCharGet(UARTA0_BASE);
        //MAP_UARTCharPut(UARTA0_BASE, c);
        if (c >= '0' && c <= '9') {
            val = val * 10 + c - '0';
        } else if (c == '\r' || c == '\n') {
            break;
        }
    } while(val <= (UINT32_MAX / 10));

    return val;
}

uint8_t* UartReadline(uint8_t* buf, uint8_t n) {
    uint8_t c;
    uint8_t l = 0;

    do {
        c = MAP_UARTCharGet(UARTA0_BASE);
        if (c == '\r' || c == '\n') {
            break;
        }
        buf[l++] = c;
    } while (l < (n - 1));
    buf[l] = '\0';

    return buf;
}

void UartOut(const uint8_t* data, uint32_t len) {
    while(len--) {
        MAP_UARTCharPut(UARTA0_BASE, (uint8_t)*(data++));
    }
}

void UartWrite(const char* msg) {
	while ((*msg) != '\0') {
		MAP_UARTCharPut(UARTA0_BASE, (uint8_t)*(msg++));
	}
}

void UartWriteInt(uint32_t i) {
    UartWrite("0x");

    for(uint8_t j = 7; j < 8; j--) {
        _putNibble((i & (0xF << (4 * j))) >> (4 * j));
    }
}

