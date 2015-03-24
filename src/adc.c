#include "proxima.h"

#include "adc.h"

#include <stdint.h>
#include <stdbool.h>

#include "inc/hw_memmap.h"

#include "driverlib/adc.h"
#include "driverlib/gpio.h"
#include "driverlib/sysctl.h"
#include "driverlib/rom.h"
#include "driverlib/rom_map.h"

uint32_t getGpioSysctl(ProximaAdcEnum proximaAdc) {
    switch(proximaAdc) {
        case PROXIMA_ADC1:
            return SYSCTL_PERIPH_GPIOB;
        case PROXIMA_ADC2:
            return SYSCTL_PERIPH_GPIOE;
        case PROXIMA_ADC_POT:
            return SYSCTL_PERIPH_GPIOE;
        case PROXIMA_ADC_TEMP:
            return PROXIMA_INVALID;
        case PROXIMA_ADC_LINE_L:
            return SYSCTL_PERIPH_GPIOD;
        case PROXIMA_ADC_LINE_R:
            return SYSCTL_PERIPH_GPIOD;
        case PROXIMA_ADC_LINE_C:
            return SYSCTL_PERIPH_GPIOE;
    }
    return PROXIMA_INVALID;
}

uint32_t getGpioBase(ProximaAdcEnum proximaAdc) {
    switch(proximaAdc) {
        case PROXIMA_ADC1:
            return GPIO_PORTB_BASE;
        case PROXIMA_ADC2:
            return GPIO_PORTE_BASE;
        case PROXIMA_ADC_POT:
            return GPIO_PORTE_BASE;
        case PROXIMA_ADC_TEMP:
            return PROXIMA_INVALID;
        case PROXIMA_ADC_LINE_L:
            return GPIO_PORTD_BASE;
        case PROXIMA_ADC_LINE_R:
            return GPIO_PORTD_BASE;
        case PROXIMA_ADC_LINE_C:
            return GPIO_PORTE_BASE;
    }
    return PROXIMA_INVALID;
}

uint32_t getGpioPin(ProximaAdcEnum proximaAdc) {
    switch (proximaAdc) {
        case PROXIMA_ADC1:
            return GPIO_PIN_5;
        case PROXIMA_ADC2:
            return GPIO_PIN_5;
        case PROXIMA_ADC_POT:
            return GPIO_PIN_2;
        case PROXIMA_ADC_TEMP:
            return PROXIMA_INVALID;
        case PROXIMA_ADC_LINE_L:
            return GPIO_PIN_2;
        case PROXIMA_ADC_LINE_R:
            return GPIO_PIN_3;
        case PROXIMA_ADC_LINE_C:
            return GPIO_PIN_1;
    }
    return PROXIMA_INVALID;
}

uint32_t getAdcChannel(ProximaAdcEnum proximaAdc) {
    switch (proximaAdc) {
        case PROXIMA_ADC1:
            return ADC_CTL_CH11;
        case PROXIMA_ADC2:
            return ADC_CTL_CH8;
        case PROXIMA_ADC_POT:
            return ADC_CTL_CH1;
        case PROXIMA_ADC_TEMP:
            return ADC_CTL_TS;
        case PROXIMA_ADC_LINE_L:
            return ADC_CTL_CH5;
        case PROXIMA_ADC_LINE_R:
            return ADC_CTL_CH4;
        case PROXIMA_ADC_LINE_C:
            return ADC_CTL_CH2;
    }
    return PROXIMA_INVALID;
}

uint32_t getAdcSysctl(ProximaAdcEnum proximaAdc) {
    switch (proximaAdc) {
        case PROXIMA_ADC1:
            return SYSCTL_PERIPH_ADC0;
        case PROXIMA_ADC2:
            return SYSCTL_PERIPH_ADC0;
        case PROXIMA_ADC_POT:
            return SYSCTL_PERIPH_ADC0;
        case PROXIMA_ADC_TEMP:
            return SYSCTL_PERIPH_ADC0;
        case PROXIMA_ADC_LINE_L:
            return SYSCTL_PERIPH_ADC1;
        case PROXIMA_ADC_LINE_R:
            return SYSCTL_PERIPH_ADC1;
        case PROXIMA_ADC_LINE_C:
            return SYSCTL_PERIPH_ADC1;
    }
    return PROXIMA_INVALID;
}

uint32_t getAdcBase(ProximaAdcEnum proximaAdc) {
    switch (proximaAdc) {
        case PROXIMA_ADC1:
            return ADC0_BASE;
        case PROXIMA_ADC2:
            return ADC0_BASE;
        case PROXIMA_ADC_POT:
            return ADC0_BASE;
        case PROXIMA_ADC_TEMP:
            return ADC0_BASE;
        case PROXIMA_ADC_LINE_L:
            return ADC1_BASE;
        case PROXIMA_ADC_LINE_R:
            return ADC1_BASE;
        case PROXIMA_ADC_LINE_C:
            return ADC1_BASE;
    }
    return PROXIMA_INVALID;
}

uint32_t getSequence(ProximaAdcEnum proximaAdc) {
    switch (proximaAdc) {
        case PROXIMA_ADC1:
            return 0;
        case PROXIMA_ADC2:
            return 1;
        case PROXIMA_ADC_POT:
            return 2;
        case PROXIMA_ADC_TEMP:
            return 3;
        case PROXIMA_ADC_LINE_L:
            return 0;
        case PROXIMA_ADC_LINE_R:
            return 1;
        case PROXIMA_ADC_LINE_C:
            return 2;
    }
    return PROXIMA_INVALID;
}

void proximaAdcInit(ProximaAdcEnum proximaAdc, ProximaSampleType sampleType) {
    uint32_t adcSysctl, adcBase, adcChannel;
    uint32_t gpioSysctl, gpioBase, gpioPin;
    uint32_t sequence, sequenceConfig, stepConfig;

    adcSysctl = getAdcSysctl(proximaAdc);
    adcBase = getAdcBase(proximaAdc);
    adcChannel = getAdcChannel(proximaAdc);

    gpioSysctl = getGpioSysctl(proximaAdc);
    gpioBase = getGpioBase(proximaAdc);
    gpioPin = getGpioPin(proximaAdc);

    sequence = getSequence(proximaAdc);

    switch(sampleType) {
        case PROXIMA_ADC_SAMPLE:
            sequenceConfig = ADC_TRIGGER_PROCESSOR;
            stepConfig = adcChannel | ADC_CTL_IE | ADC_CTL_END;
            break;
        case PROXIMA_ADC_INTERRUPT:
            sequenceConfig = ADC_TRIGGER_TIMER;
            stepConfig = adcChannel | ADC_CTL_IE | ADC_CTL_END;
            // TODO: Make a timer here too
            break;
    }

    if (gpioSysctl != PROXIMA_INVALID) {
        MAP_SysCtlPeripheralEnable(gpioSysctl);
    }
    
    if (gpioBase != PROXIMA_INVALID) {
        MAP_GPIOPinTypeADC(gpioBase, gpioPin);
    }

    if (adcSysctl != PROXIMA_INVALID) {
        MAP_SysCtlPeripheralEnable(adcSysctl);
    }

    if (adcBase != PROXIMA_INVALID && sequence != PROXIMA_INVALID) {
        MAP_ADCSequenceConfigure(adcBase, sequence, sequenceConfig, 0);
        MAP_ADCSequenceStepConfigure(adcBase, sequence, 0, stepConfig);
        MAP_ADCSequenceEnable(adcBase, sequence);
        MAP_ADCIntClear(adcBase, sequence);
    }
}

uint32_t proximaAdcSample(ProximaAdcEnum proximaAdc) {
    uint32_t adcBase, sequence;

    uint32_t value[1];

    adcBase = getAdcBase(proximaAdc);
    sequence = getSequence(proximaAdc);

    MAP_ADCIntClear(adcBase, sequence);

    MAP_ADCProcessorTrigger(adcBase, sequence);

    while(!MAP_ADCIntStatus(adcBase, sequence, false))
    {
    }

    MAP_ADCIntClear(adcBase, sequence);

    MAP_ADCSequenceDataGet(adcBase, sequence, value);

    return value[0];
}
