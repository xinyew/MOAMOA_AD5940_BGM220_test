/*!
 *****************************************************************************
 @file:    ADICUP3029Port.c
 @author:  Neo Xu
 @brief:   The port for ADI's ADICUP3029 board.
 -----------------------------------------------------------------------------

Copyright (c) 2017-2019 Analog Devices, Inc. All Rights Reserved.

This software is proprietary to Analog Devices, Inc. and its licensors.
By using this software you agree to the terms of the associated
Analog Devices Software License Agreement.

*****************************************************************************/

#include <AD5940.h>
#include "bgm220sc12wga.h"
#include "sl_udelay.h"
#include "sl_emlib_gpio_init_AD5940_Rst_config.h"
#include "em_gpio.h"
#include "sl_spidrv_exp_config.h"
#include "sl_spidrv_instances.h"
#include "sl_emlib_gpio_init_CS_config.h"

#define SYSTICK_MAXCOUNT ((1L<<24)-1) /* we use Systick to complete function Delay10uS(). This value only applies to ADICUP3029 board. */
#define SYSTICK_CLKFREQ   26000000L   /* Systick clock frequency in Hz. This only appies to ADICUP3029 board */
volatile uint32_t ucInterrupted = 0;       /* Flag to indicate interrupt occurred */

#define SL_EMLIB_GPIO_INIT_AD5940_CS_PORT SL_SPIDRV_EXP_CS_PORT
#define SL_EMLIB_GPIO_INIT_AD5940_CS_PIN SL_SPIDRV_EXP_CS_PIN

// use SPI handle for EXP header (configured in project settings)
#define SPI_HANDLE                  sl_spidrv_exp_handle
static volatile bool transfer_complete = false;

// Callback fired when data is transmitted
void transfer_callback(SPIDRV_HandleData_t *handle,
                       Ecode_t transfer_status,
                       int items_transferred)
{
  (void)&handle;
  (void)items_transferred;

  // Post semaphore to signal to application
  // task that transfer is successful
  if (transfer_status == ECODE_EMDRV_SPIDRV_OK) {
    transfer_complete = true;
  }
}


/**
	@brief Using SPI to transmit N bytes and return the received bytes. This function targets to 
         provide a more efficient way to transmit/receive data.
	@param pSendBuffer :{0 - 0xFFFFFFFF}
      - Pointer to the data to be sent.
	@param pRecvBuff :{0 - 0xFFFFFFFF}
      - Pointer to the buffer used to store received data.
	@param length :{0 - 0xFFFFFFFF}
      - Data length in SendBuffer.
	@return None.
**/
void AD5940_ReadWriteNBytes(unsigned char *pSendBuffer,unsigned char *pRecvBuff,unsigned long length)
{
  Ecode_t ecode;
  transfer_complete = false;
  // Non-blocking data transfer to slave. When complete, rx buffer
  // will be filled.
  ecode = SPIDRV_MTransfer(SPI_HANDLE, pSendBuffer, pRecvBuff, length, transfer_callback);
  EFM_ASSERT(ecode == ECODE_OK);
  // wait for transfer to complete
  while (!transfer_complete) ;
}

void AD5940_CsClr(void)
{
    GPIO_PinOutClear(SL_EMLIB_GPIO_INIT_CS_PORT, SL_EMLIB_GPIO_INIT_CS_PIN);
}

void AD5940_CsSet(void)
{
    GPIO_PinOutSet(SL_EMLIB_GPIO_INIT_CS_PORT, SL_EMLIB_GPIO_INIT_CS_PIN);
}

void AD5940_RstSet(void)
{
    GPIO_PinOutSet(SL_EMLIB_GPIO_INIT_AD5940_RST_PORT, SL_EMLIB_GPIO_INIT_AD5940_RST_PIN);
}

void AD5940_RstClr(void)
{
    GPIO_PinOutClear(SL_EMLIB_GPIO_INIT_AD5940_RST_PORT, SL_EMLIB_GPIO_INIT_AD5940_RST_PIN);
}

void AD5940_Delay10us(uint32_t time)
{
    sl_udelay_wait(time * 10);
}

uint32_t AD5940_GetMCUIntFlag(void)
{
   return ucInterrupted;
}

uint32_t AD5940_ClrMCUIntFlag(void)
{
    ucInterrupted = 0;
    return 1;
}

/* Functions that used to initialize MCU platform */

uint32_t AD5940_MCUResourceInit(void *pCfg)
{
  return 0;
}