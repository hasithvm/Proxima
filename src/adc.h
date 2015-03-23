#ifndef __adc_h__
#define __adc_h__

#include <stdint.h>

typedef enum {
    proximaAdc1,
    proximaAdc2,
    proximaAdcPot,
    proximaAdcTemp,
    proximaAdcLineL,
    proximaAdcLineR,
    proximaAdcLineC,
} ProximaAdcEnum;

typedef enum {
    proximaSample,
    proximaInterrupt,
} ProximaSampleType;

void proximaAdcInit(ProximaAdcEnum proximaAdc, ProximaSampleType sampleType);
uint32_t proximaAdcSample(ProximaAdcEnum proximaAdc);

#endif
