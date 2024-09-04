################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/Users/xinye/SimplicityStudio/SDKs/gecko_sdk_2/platform/driver/debug/src/sl_debug_swo.c 

OBJS += \
./gecko_sdk_4.4.4/platform/driver/debug/src/sl_debug_swo.o 

C_DEPS += \
./gecko_sdk_4.4.4/platform/driver/debug/src/sl_debug_swo.d 


# Each subdirectory must supply rules for building sources it contributes
gecko_sdk_4.4.4/platform/driver/debug/src/sl_debug_swo.o: /Users/xinye/SimplicityStudio/SDKs/gecko_sdk_2/platform/driver/debug/src/sl_debug_swo.c gecko_sdk_4.4.4/platform/driver/debug/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DBGM220SC12WGA=1' '-DSL_BOARD_NAME="BRD4310A"' '-DSL_BOARD_REV="A05"' '-DHARDWARE_BOARD_DEFAULT_RF_BAND_2400=1' '-DHARDWARE_BOARD_SUPPORTS_1_RF_BAND=1' '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_2400=1' '-DSL_COMPONENT_CATALOG_PRESENT=1' '-DCHIPSEL_594X=1' '-DADI_DEBUG=1' -I"/Users/xinye/SimplicityStudio/v5_workspace/test/config" -I"/Users/xinye/SimplicityStudio/v5_workspace/test/autogen" -I"/Users/xinye/SimplicityStudio/v5_workspace/test" -I"/Users/xinye/SimplicityStudio/SDKs/gecko_sdk_2//platform/Device/SiliconLabs/BGM22/Include" -I"/Users/xinye/SimplicityStudio/SDKs/gecko_sdk_2//app/common/util/app_assert" -I"/Users/xinye/SimplicityStudio/SDKs/gecko_sdk_2//platform/common/inc" -I"/Users/xinye/SimplicityStudio/SDKs/gecko_sdk_2//hardware/board/inc" -I"/Users/xinye/SimplicityStudio/SDKs/gecko_sdk_2//platform/CMSIS/Core/Include" -I"/Users/xinye/SimplicityStudio/SDKs/gecko_sdk_2//hardware/driver/configuration_over_swo/inc" -I"/Users/xinye/SimplicityStudio/SDKs/gecko_sdk_2//platform/driver/debug/inc" -I"/Users/xinye/SimplicityStudio/SDKs/gecko_sdk_2//platform/service/device_init/inc" -I"/Users/xinye/SimplicityStudio/SDKs/gecko_sdk_2//platform/emdrv/dmadrv/inc" -I"/Users/xinye/SimplicityStudio/SDKs/gecko_sdk_2//platform/emdrv/common/inc" -I"/Users/xinye/SimplicityStudio/SDKs/gecko_sdk_2//platform/emlib/inc" -I"/Users/xinye/SimplicityStudio/SDKs/gecko_sdk_2//platform/emlib/init/gpio_simple" -I"/Users/xinye/SimplicityStudio/SDKs/gecko_sdk_2//platform/emdrv/gpiointerrupt/inc" -I"/Users/xinye/SimplicityStudio/SDKs/gecko_sdk_2//platform/service/iostream/inc" -I"/Users/xinye/SimplicityStudio/SDKs/gecko_sdk_2//hardware/driver/mx25_flash_shutdown/inc/sl_mx25_flash_shutdown_usart" -I"/Users/xinye/SimplicityStudio/SDKs/gecko_sdk_2//platform/common/toolchain/inc" -I"/Users/xinye/SimplicityStudio/SDKs/gecko_sdk_2//platform/service/system/inc" -I"/Users/xinye/SimplicityStudio/SDKs/gecko_sdk_2//platform/service/sleeptimer/inc" -I"/Users/xinye/SimplicityStudio/SDKs/gecko_sdk_2//platform/emdrv/spidrv/inc" -I"/Users/xinye/SimplicityStudio/SDKs/gecko_sdk_2//platform/service/udelay/inc" -I"/Users/xinye/SimplicityStudio/v5_workspace/test/ad5940lib" -Os -Wall -Wextra -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mcmse --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.4.4/platform/driver/debug/src/sl_debug_swo.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


