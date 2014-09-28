//*****************************************************************************
// main.c
//
//*****************************************************************************

#include <stdint.h>

#include "simplelink.h"

#include "rom.h"
#include "rom_map.h"

#include "hw_types.h"
#include "hw_ints.h"
#include "hw_memmap.h"

#include "gpio.h"
#include "interrupt.h"
#include "pin.h"
#include "prcm.h"
#include "uart.h"

#include "file.h"
#include "gpio_if.h"
#include "uart_if.h"

#define UNUSED(a) (void)(a)

extern void (* const g_pfnVectors[])(void);

/****************************************************************************/
/*                      LOCAL FUNCTION PROTOTYPES                           */
/****************************************************************************/
static void BoardInit(void);

/****************************************************************************/
/*                      LOCAL FUNCTION DEFINITIONS                          */
/****************************************************************************/

//*****************************************************************************
//
//! Board Initialization & Configuration
//!
//! \param  None
//!
//! \return None
//
//*****************************************************************************
static void
BoardInit(void)
{
    MAP_IntVTableBaseSet((unsigned long)&g_pfnVectors[0]);
    //
    // Enable Processor Interrupts
    //
    MAP_IntMasterEnable();

    PRCMCC3200MCUInit();

    //
    // Enable LED Peripheral
    //
    MAP_PRCMPeripheralClkEnable(PRCM_GPIOA1, PRCM_RUN_MODE_CLK);

    //
    // Setup LEDs
    //
    MAP_PinTypeGPIO(PIN_01, PIN_MODE_0, false);
    MAP_PinTypeGPIO(PIN_02, PIN_MODE_0, false);
    MAP_PinTypeGPIO(PIN_64, PIN_MODE_0, false);

    MAP_GPIODirModeSet(GPIOA1_BASE, 0x2, GPIO_DIR_MODE_OUT);
    MAP_GPIODirModeSet(GPIOA1_BASE, 0x4, GPIO_DIR_MODE_OUT);
    MAP_GPIODirModeSet(GPIOA1_BASE, 0x8, GPIO_DIR_MODE_OUT);

    MAP_PRCMPeripheralClkEnable(PRCM_I2CA0, PRCM_RUN_MODE_CLK);
    //
    // Configure PIN_01 for I2C0 I2C_SCL
    //
    MAP_PinTypeI2C(PIN_03, PIN_MODE_5);

    //
    // Configure PIN_02 for I2C0 I2C_SDA
    //
    MAP_PinTypeI2C(PIN_04, PIN_MODE_5);

}

//****************************************************************************
//
//! Main function
//!
//! \param none
//! 
//! This function  
//!    1. Invokes the LEDBlinkyTask
//!
//! \return None.
//
//****************************************************************************
int
main()
{
    //
    // Initialize Board configurations
    //
    BoardInit();
    
    //
    // Power on the corresponding GPIO port B for 9,10,11.
    // Set up the GPIO lines to mode 0 (GPIO)
    //
    GPIO_IF_LedConfigure(LED1|LED2|LED3);

	GPIO_IF_LedOff(MCU_ALL_LED_IND);
    GPIO_IF_LedOn(MCU_ORANGE_LED_GPIO);

    sl_Start(NULL, NULL, NULL);
    EnableUart();

    GPIO_IF_LedOff(MCU_ORANGE_LED_GPIO);

    while(1) {
        GPIO_IF_LedOn(MCU_GREEN_LED_GPIO);
        GPIO_IF_LedOff(MCU_RED_LED_GPIO);

        long choice = UartReadCharNonBlock();

        if (choice == -1) {
            _SlNonOsMainLoopTask();
            continue;
        }

        GPIO_IF_LedOff(MCU_GREEN_LED_GPIO);
        GPIO_IF_LedOn(MCU_RED_LED_GPIO);

        if (choice == 'w') {
            UartWrite("write OK\n");
            WriteFile();
        } else if (choice == 'r') {
            UartWrite("read OK\n");
            ReadFile();
        } else if (choice == 'd') {
            UartWrite("delete OK\n");
            DeleteFile();
        } else if (choice == 'i') {
            UartWrite("info OK\n");
            InfoFile();
        } else {
            UartWrite("Unknown Command\n");
        }
    }

    return 0;
}

void SimpleLinkWlanEventHandler(SlWlanEvent_t *s) {
    UNUSED(s);
}
void SimpleLinkSockEventHandler(SlSockEvent_t *s) {
    UNUSED(s);
}
void SimpleLinkNetAppEventHandler(SlNetAppEvent_t *s) {
    UNUSED(s);
}
void SimpleLinkHttpServerCallback(SlHttpServerEvent_t *event, SlHttpServerResponse_t *resp) {
    UNUSED(event);
    UNUSED(resp);
}

