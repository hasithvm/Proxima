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
        case proximaAdc1:
            return SYSCTL_PERIPH_GPIOB;
        case proximaAdc2:
            return SYSCTL_PERIPH_GPIOE;
        case proximaAdcPot:
            return SYSCTL_PERIPH_GPIOE;
        case proximaAdcTemp:
            return PROXIMA_INVALID;
        case proximaAdcLineL:
            return SYSCTL_PERIPH_GPIOD;
        case proximaAdcLineR:
            return SYSCTL_PERIPH_GPIOD;
        case proximaAdcLineC:
            return SYSCTL_PERIPH_GPIOE;
    }
    return PROXIMA_INVALID;
}

uint32_t getGpioBase(ProximaAdcEnum proximaAdc) {
    switch(proximaAdc) {
        case proximaAdc1:
            return GPIO_PORTB_BASE;
        case proximaAdc2:
            return GPIO_PORTE_BASE;
        case proximaAdcPot:
            return GPIO_PORTE_BASE;
        case proximaAdcTemp:
            return PROXIMA_INVALID;
        case proximaAdcLineL:
            return GPIO_PORTD_BASE;
        case proximaAdcLineR:
            return GPIO_PORTD_BASE;
        case proximaAdcLineC:
            return GPIO_PORTE_BASE;
    }
    return PROXIMA_INVALID;
}

uint32_t getGpioPin(ProximaAdcEnum proximaAdc) {
    switch (proximaAdc) {
        case proximaAdc1:
            return GPIO_PIN_5;
        case proximaAdc2:
            return GPIO_PIN_5;
        case proximaAdcPot:
            return GPIO_PIN_2;
        case proximaAdcTemp:
            return PROXIMA_INVALID;
        case proximaAdcLineL:
            return GPIO_PIN_2;
        case proximaAdcLineR:
            return GPIO_PIN_3;
        case proximaAdcLineC:
            return GPIO_PIN_1;
    }
    return PROXIMA_INVALID;
}

uint32_t getAdcChannel(ProximaAdcEnum proximaAdc) {
    switch (proximaAdc) {
        case proximaAdc1:
            return ADC_CTL_CH11;
        case proximaAdc2:
            return ADC_CTL_CH8;
        case proximaAdcPot:
            return ADC_CTL_CH1;
        case proximaAdcTemp:
            return ADC_CTL_TS;
        case proximaAdcLineL:
            return ADC_CTL_CH5;
        case proximaAdcLineR:
            return ADC_CTL_CH4;
        case proximaAdcLineC:
            return ADC_CTL_CH2;
    }
    return PROXIMA_INVALID;
}

uint32_t getAdcSysctl(ProximaAdcEnum proximaAdc) {
    switch (proximaAdc) {
        case proximaAdc1:
            return SYSCTL_PERIPH_ADC0;
        case proximaAdc2:
            return SYSCTL_PERIPH_ADC0;
        case proximaAdcPot:
            return SYSCTL_PERIPH_ADC0;
        case proximaAdcTemp:
            return SYSCTL_PERIPH_ADC0;
        case proximaAdcLineL:
            return SYSCTL_PERIPH_ADC1;
        case proximaAdcLineR:
            return SYSCTL_PERIPH_ADC1;
        case proximaAdcLineC:
            return SYSCTL_PERIPH_ADC1;
    }
    return PROXIMA_INVALID;
}

uint32_t getAdcBase(ProximaAdcEnum proximaAdc) {
    switch (proximaAdc) {
        case proximaAdc1:
            return ADC0_BASE;
        case proximaAdc2:
            return ADC0_BASE;
        case proximaAdcPot:
            return ADC0_BASE;
        case proximaAdcTemp:
            return ADC0_BASE;
        case proximaAdcLineL:
            return ADC1_BASE;
        case proximaAdcLineR:
            return ADC1_BASE;
        case proximaAdcLineC:
            return ADC1_BASE;
    }
    return PROXIMA_INVALID;
}

uint32_t getSequence(ProximaAdcEnum proximaAdc) {
    switch (proximaAdc) {
        case proximaAdc1:
            return 0;
        case proximaAdc2:
            return 1;
        case proximaAdcPot:
            return 2;
        case proximaAdcTemp:
            return 3;
        case proximaAdcLineL:
            return 0;
        case proximaAdcLineR:
            return 1;
        case proximaAdcLineC:
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
        case proximaSample:
            sequenceConfig = ADC_TRIGGER_PROCESSOR;
            stepConfig = adcChannel | ADC_CTL_IE | ADC_CTL_END;
            break;
        case proximaInterrupt:
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
