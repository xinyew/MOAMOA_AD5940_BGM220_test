/***************************************************************************//**
 * @file
 * @brief Top level application functions
 *******************************************************************************
 * # License
 * <b>Copyright 2020 Silicon Laboratories Inc. www.silabs.com</b>
 *******************************************************************************
 *
 * The licensor of this software is Silicon Laboratories Inc. Your use of this
 * software is governed by the terms of Silicon Labs Master Software License
 * Agreement (MSLA) available at
 * www.silabs.com/about-us/legal/master-software-license-agreement. This
 * software is distributed to you in Source Code format and is governed by the
 * sections of the MSLA applicable to Source Code.
 *
 ******************************************************************************/
#include "spidrv_master_baremetal.h"
#include "app_assert.h"
#include "gpiointerrupt.h"
#include "sl_emlib_gpio_init_AD5940_INT_config.h"
#include <stdio.h>


/***************************************************************************//**
 * Initialize application.
 ******************************************************************************/
void ad5940int_handler (uint8_t intNo) {
  app_assert(intNo == 0);
  // ucInterrupted = 1;
  printf("Interrupt captured!!\n");
}

void ad5940int_init() {
  GPIOINT_Init();
  GPIOINT_CallbackRegister(0, ad5940int_handler);
  GPIO_ExtIntConfig(SL_EMLIB_GPIO_INIT_AD5940_INT_PORT, SL_EMLIB_GPIO_INIT_AD5940_INT_PIN, 0, false, true, true);
  GPIO_IntEnable(1 << 0);
}

void app_init(void)
{
  spidrv_app_init();
  ad5940int_init();
}

/***************************************************************************//**
 * App ticking function.
 ******************************************************************************/
void app_process_action(void)
{
  spidrv_app_process_action();
}
