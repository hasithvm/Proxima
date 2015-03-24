#ifndef __adc_h__
#define __adc_h__

#include <stdint.h>

typedef enum {
    PROXIMA_ADC1,
    PROXIMA_ADC2,
    PROXIMA_ADC_POT,
    PROXIMA_ADC_TEMP,
    PROXIMA_ADC_LINE_L,
    PROXIMA_ADC_LINE_R,
    PROXIMA_ADC_LINE_C,
} ProximaAdcEnum;

typedef enum {
    PROXIMA_ADC_SAMPLE,
    PROXIMA_ADC_INTERRUPT,
} ProximaSampleType;

void proximaAdcInit(ProximaAdcEnum proximaAdc, ProximaSampleType sampleType);
uint32_t proximaAdcSample(ProximaAdcEnum proximaAdc);

#endif
