#include <stdint.h>

void EnableUart();
char UartReadChar();
long UartReadCharNonBlock();
void UartReadData(uint8_t* data, uint32_t n);
uint32_t UartReadInt();
uint8_t* UartReadline(uint8_t* buf, uint8_t n);
void UartOut(const uint8_t* data, uint32_t len);
void UartWrite(const char* msg);
void UartWriteInt(uint32_t i);

