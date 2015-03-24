#include "gpio.h"
#include "proxima.h"

#include <stdint.h>
#include <stdbool.h>

#include "inc/hw_memmap.h"

#include "driverlib/gpio.h"
#include "driverlib/sysctl.h"
#include "driverlib/rom.h"
#include "driverlib/rom_map.h"

uint32_t getGpioSysctl(proximaGpioEnum gpio) {
    switch (gpio) {
        case PROXIMA_GPIO1:
            return SYSCTL_PERIPH_GPIOF;
        case PROXIMA_GPIO2:
            return SYSCTL_PERIPH_GPIOE;
        case PROXIMA_GPIO3:
            return SYSCTL_PERIPH_GPIOE;
        case PROXIMA_GPIO4:
            return SYSCTL_PERIPH_GPIOC;
        case PROXIMA_GPIO5:
            return SYSCTL_PERIPH_GPIOA;
        case PROXIMA_GPIO_BUTTON_C1:
            return SYSCTL_PERIPH_GPIOC;
        case PROXIMA_GPIO_BUTTON_C2:
            return SYSCTL_PERIPH_GPIOC;
        case PROXIMA_GPIO_BUTTON_R1:
            return SYSCTL_PERIPH_GPIOD;
        case PROXIMA_GPIO_BUTTON_R2:
            return SYSCTL_PERIPH_GPIOD;
        case PROXIMA_GPIO_SW1:
            return SYSCTL_PERIPH_GPIOF;
        case PROXIMA_GPIO_SW2:
            return SYSCTL_PERIPH_GPIOF;
        case PROXIMA_GPIO_LED0:
            return SYSCTL_PERIPH_GPIOF;
        case PROXIMA_GPIO_LED1:
            return SYSCTL_PERIPH_GPIOF;
        case PROXIMA_GPIO_LED2:
            return SYSCTL_PERIPH_GPIOF;
        case PROXIMA_GPIO_ADC1:
            return SYSCTL_PERIPH_GPIOB;
        case PROXIMA_GPIO_ADC2:
            return SYSCTL_PERIPH_GPIOE;
        case PROXIMA_GPIO_BUMP1:
            return SYSCTL_PERIPH_GPIOB;
        case PROXIMA_GPIO_BUMP2:
            return SYSCTL_PERIPH_GPIOB;
    }
    return PROXIMA_INVALID;
}

uint32_t getGpioBase(proximaGpioEnum gpio) {
    switch (gpio) {
        case PROXIMA_GPIO1:
            return GPIO_PORTF_BASE;
        case PROXIMA_GPIO2:
            return GPIO_PORTE_BASE;
        case PROXIMA_GPIO3:
            return GPIO_PORTE_BASE;
        case PROXIMA_GPIO4:
            return GPIO_PORTC_BASE;
        case PROXIMA_GPIO5:
            return GPIO_PORTA_BASE;
        case PROXIMA_GPIO_BUTTON_C1:
            return GPIO_PORTC_BASE;
        case PROXIMA_GPIO_BUTTON_C2:
            return GPIO_PORTC_BASE;
        case PROXIMA_GPIO_BUTTON_R1:
            return GPIO_PORTD_BASE;
        case PROXIMA_GPIO_BUTTON_R2:
            return GPIO_PORTD_BASE;
        case PROXIMA_GPIO_SW1:
            return GPIO_PORTF_BASE;
        case PROXIMA_GPIO_SW2:
            return GPIO_PORTF_BASE;
        case PROXIMA_GPIO_LED0:
            return GPIO_PORTF_BASE;
        case PROXIMA_GPIO_LED1:
            return GPIO_PORTF_BASE;
        case PROXIMA_GPIO_LED2:
            return GPIO_PORTF_BASE;
        case PROXIMA_GPIO_ADC1:
            return GPIO_PORTB_BASE;
        case PROXIMA_GPIO_ADC2:
            return GPIO_PORTE_BASE;
        case PROXIMA_GPIO_BUMP1:
            return GPIO_PORTB_BASE;
        case PROXIMA_GPIO_BUMP2:
            return GPIO_PORTB_BASE;
    }
    return PROXIMA_INVALID;
}

uint8_t getGpioPin(proximaGpioEnum gpio) {
    switch (gpio) {
        case PROXIMA_GPIO1:
            return GPIO_PIN_4;
        case PROXIMA_GPIO2:
            return GPIO_PIN_4;
        case PROXIMA_GPIO3:
            return GPIO_PIN_0;
        case PROXIMA_GPIO4:
            return GPIO_PIN_4;
        case PROXIMA_GPIO5:
            return GPIO_PIN_5;
        case PROXIMA_GPIO_BUTTON_C1:
            return GPIO_PIN_5;
        case PROXIMA_GPIO_BUTTON_C2:
            return GPIO_PIN_6;
        case PROXIMA_GPIO_BUTTON_R1:
            return GPIO_PIN_6;
        case PROXIMA_GPIO_BUTTON_R2:
            return GPIO_PIN_7;
        case PROXIMA_GPIO_SW1:
            return GPIO_PIN_4;
        case PROXIMA_GPIO_SW2:
            return GPIO_PIN_0;
        case PROXIMA_GPIO_LED0:
            return GPIO_PIN_1;
        case PROXIMA_GPIO_LED1:
            return GPIO_PIN_2;
        case PROXIMA_GPIO_LED2:
            return GPIO_PIN_3;
        case PROXIMA_GPIO_ADC1:
            return GPIO_PIN_5;
        case PROXIMA_GPIO_ADC2:
            return GPIO_PIN_5;
        case PROXIMA_GPIO_BUMP1:
            return GPIO_PIN_2;
        case PROXIMA_GPIO_BUMP2:
            return GPIO_PIN_3;
    }
    return PROXIMA_INVALID;
}

uint32_t getGpioResistorType(proximaGpioResistorType resistorType) {
    switch (resistorType) {
        case PROXIMA_GPIO_PULLUP:
            return GPIO_PIN_TYPE_STD_WPU;
        case PROXIMA_GPIO_PULLDOWN:
            return GPIO_PIN_TYPE_STD_WPD;
        case PROXIMA_GPIO_PULLNONE:
            return GPIO_PIN_TYPE_STD;
    }
    return GPIO_PIN_TYPE_STD;
}

void proximaGpioInit(proximaGpioEnum gpio, proximaGpioType type) {
    uint32_t gpioSysctl, gpioBase;
    uint8_t gpioPin;

    gpioSysctl = getGpioSysctl(gpio);
    gpioBase = getGpioBase(gpio);
    gpioPin = getGpioPin(gpio);

    if (gpioSysctl == PROXIMA_INVALID || gpioBase == PROXIMA_INVALID || gpioPin == PROXIMA_INVALID) {
        return;
    }

    MAP_SysCtlPeripheralEnable(gpioSysctl);

    switch(type) {
        case PROXIMA_GPIO_INPUT:
            MAP_GPIOPinTypeGPIOInput(gpioBase, gpioPin);
            break;
        case PROXIMA_GPIO_OUTPUT:
            MAP_GPIOPinTypeGPIOOutput(gpioBase, gpioPin);
            break;
        case PROXIMA_GPIO_ADC:
            MAP_GPIOPinTypeADC(gpioBase, gpioPin);
            break;
    }
}

void proximaGpioSetResistor(proximaGpioEnum gpio, proximaGpioResistorType resistorType) {
    uint32_t gpioBase, gpioResistor;
    uint8_t gpioPin;

    gpioBase = getGpioBase(gpio);
    gpioPin = getGpioPin(gpio);
    gpioResistor = getGpioResistorType(resistorType);

    MAP_GPIOPadConfigSet(gpioBase, gpioPin, GPIO_STRENGTH_2MA, gpioResistor);
}

uint8_t proximaGpioRead(proximaGpioEnum gpio) {
    uint32_t gpioBase, gpioPin;
    uint8_t value;

    gpioBase = getGpioBase(gpio);
    gpioPin = getGpioPin(gpio);

    value = MAP_GPIOPinRead(gpioBase, gpioPin);

    return value ? 1 : 0;
}

void proximaGpioWrite(proximaGpioEnum gpio, uint8_t value) {
    uint32_t gpioBase;
    uint8_t gpioPin;

    gpioBase = getGpioBase(gpio);
    gpioPin = getGpioPin(gpio);

    MAP_GPIOPinWrite(gpioBase, gpioPin, value ? gpioPin : 0);
}
