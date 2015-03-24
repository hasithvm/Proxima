#ifndef __gpio_h__
#define __gpio_h__

#include <stdint.h>

typedef enum {
    PROXIMA_GPIO1,
    PROXIMA_GPIO2,
    PROXIMA_GPIO3,
    PROXIMA_GPIO4,
    PROXIMA_GPIO5,
    PROXIMA_GPIO_BUTTON_C1,
    PROXIMA_GPIO_BUTTON_C2,
    PROXIMA_GPIO_BUTTON_R1,
    PROXIMA_GPIO_BUTTON_R2,
    PROXIMA_GPIO_SW1,
    PROXIMA_GPIO_SW2,
    PROXIMA_GPIO_LED0,
    PROXIMA_GPIO_LED1,
    PROXIMA_GPIO_LED2,
    PROXIMA_GPIO_ADC1,
    PROXIMA_GPIO_ADC2,
    PROXIMA_GPIO_BUMP1,
    PROXIMA_GPIO_BUMP2,
} proximaGpioEnum;

typedef enum {
    PROXIMA_GPIO_INPUT,
    PROXIMA_GPIO_OUTPUT,
    PROXIMA_GPIO_ADC,
} proximaGpioType;

typedef enum {
    PROXIMA_GPIO_PULLUP,
    PROXIMA_GPIO_PULLDOWN,
    PROXIMA_GPIO_PULLNONE,
} proximaGpioResistorType;

void proximaGpioInit(proximaGpioEnum gpio, proximaGpioType type);
void proximaGpioSetResistor(proximaGpioEnum gpio, proximaGpioResistorType resistorType);
uint8_t proximaGpioRead(proximaGpioEnum gpio);
void proximaGpioWrite(proximaGpioEnum gpio, uint8_t value);

#endif
