################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include gecko_sdk_4.4.4/platform/service/udelay/src/subdir.mk
-include gecko_sdk_4.4.4/platform/service/system/src/subdir.mk
-include gecko_sdk_4.4.4/platform/service/sleeptimer/src/subdir.mk
-include gecko_sdk_4.4.4/platform/service/iostream/src/subdir.mk
-include gecko_sdk_4.4.4/platform/service/device_init/src/subdir.mk
-include gecko_sdk_4.4.4/platform/emlib/src/subdir.mk
-include gecko_sdk_4.4.4/platform/emdrv/spidrv/src/subdir.mk
-include gecko_sdk_4.4.4/platform/emdrv/gpiointerrupt/src/subdir.mk
-include gecko_sdk_4.4.4/platform/emdrv/dmadrv/src/subdir.mk
-include gecko_sdk_4.4.4/platform/driver/debug/src/subdir.mk
-include gecko_sdk_4.4.4/platform/common/toolchain/src/subdir.mk
-include gecko_sdk_4.4.4/platform/common/src/subdir.mk
-include gecko_sdk_4.4.4/platform/Device/SiliconLabs/BGM22/Source/subdir.mk
-include gecko_sdk_4.4.4/hardware/driver/mx25_flash_shutdown/src/sl_mx25_flash_shutdown_usart/subdir.mk
-include gecko_sdk_4.4.4/hardware/driver/configuration_over_swo/src/subdir.mk
-include gecko_sdk_4.4.4/hardware/board/src/subdir.mk
-include autogen/subdir.mk
-include ad5940lib/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
endif

-include ../makefile.defs

OPTIONAL_TOOL_DEPS := \
$(wildcard ../makefile.defs) \
$(wildcard ../makefile.init) \
$(wildcard ../makefile.targets) \


BUILD_ARTIFACT_NAME := test
BUILD_ARTIFACT_EXTENSION := axf
BUILD_ARTIFACT_PREFIX :=
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME)$(if $(BUILD_ARTIFACT_EXTENSION),.$(BUILD_ARTIFACT_EXTENSION),)

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all: main-build

# Main-build Target
main-build: test.axf

# Tool invocations
test.axf: $(OBJS) $(USER_OBJS) makefile objects.mk $(OPTIONAL_TOOL_DEPS)
	@echo 'Building target: $@'
	@echo 'Invoking: GNU ARM C++ Linker'
	arm-none-eabi-g++ -g -gdwarf-2 -mcpu=cortex-m33 -mthumb -T "/Users/xinye/SimplicityStudio/v5_workspace/test/autogen/linkerfile.ld" -Wl,--no-warn-rwx-segments --specs=nosys.specs -Xlinker --gc-sections -Xlinker -Map="test.map" -mfpu=fpv5-sp-d16 -mfloat-abi=hard --specs=nano.specs -u _printf_float -o test.axf -Wl,--start-group "./BGM220Port.o" "./app.o" "./main.o" "./spidrv_master_baremetal.o" "./ad5940lib/AD5940Main.o" "./ad5940lib/SqrWaveVoltammetry.o" "./ad5940lib/ad5940.o" "./autogen/sl_board_default_init.o" "./autogen/sl_device_init_clocks.o" "./autogen/sl_emlib_gpio_simple_init.o" "./autogen/sl_event_handler.o" "./autogen/sl_iostream_handles.o" "./autogen/sl_iostream_init_eusart_instances.o" "./autogen/sl_spidrv_init.o" "./gecko_sdk_4.4.4/hardware/board/src/sl_board_control_gpio.o" "./gecko_sdk_4.4.4/hardware/board/src/sl_board_init.o" "./gecko_sdk_4.4.4/hardware/driver/configuration_over_swo/src/sl_cos.o" "./gecko_sdk_4.4.4/hardware/driver/mx25_flash_shutdown/src/sl_mx25_flash_shutdown_usart/sl_mx25_flash_shutdown.o" "./gecko_sdk_4.4.4/platform/Device/SiliconLabs/BGM22/Source/startup_bgm22.o" "./gecko_sdk_4.4.4/platform/Device/SiliconLabs/BGM22/Source/system_bgm22.o" "./gecko_sdk_4.4.4/platform/common/src/sl_assert.o" "./gecko_sdk_4.4.4/platform/common/src/sl_slist.o" "./gecko_sdk_4.4.4/platform/common/src/sl_string.o" "./gecko_sdk_4.4.4/platform/common/src/sl_syscalls.o" "./gecko_sdk_4.4.4/platform/common/toolchain/src/sl_memory.o" "./gecko_sdk_4.4.4/platform/driver/debug/src/sl_debug_swo.o" "./gecko_sdk_4.4.4/platform/emdrv/dmadrv/src/dmadrv.o" "./gecko_sdk_4.4.4/platform/emdrv/gpiointerrupt/src/gpiointerrupt.o" "./gecko_sdk_4.4.4/platform/emdrv/spidrv/src/spidrv.o" "./gecko_sdk_4.4.4/platform/emlib/src/em_burtc.o" "./gecko_sdk_4.4.4/platform/emlib/src/em_cmu.o" "./gecko_sdk_4.4.4/platform/emlib/src/em_core.o" "./gecko_sdk_4.4.4/platform/emlib/src/em_emu.o" "./gecko_sdk_4.4.4/platform/emlib/src/em_eusart.o" "./gecko_sdk_4.4.4/platform/emlib/src/em_gpio.o" "./gecko_sdk_4.4.4/platform/emlib/src/em_ldma.o" "./gecko_sdk_4.4.4/platform/emlib/src/em_msc.o" "./gecko_sdk_4.4.4/platform/emlib/src/em_rtcc.o" "./gecko_sdk_4.4.4/platform/emlib/src/em_system.o" "./gecko_sdk_4.4.4/platform/emlib/src/em_timer.o" "./gecko_sdk_4.4.4/platform/emlib/src/em_usart.o" "./gecko_sdk_4.4.4/platform/service/device_init/src/sl_device_init_dcdc_s2.o" "./gecko_sdk_4.4.4/platform/service/device_init/src/sl_device_init_emu_s2.o" "./gecko_sdk_4.4.4/platform/service/device_init/src/sl_device_init_hfxo_s2.o" "./gecko_sdk_4.4.4/platform/service/device_init/src/sl_device_init_lfxo_s2.o" "./gecko_sdk_4.4.4/platform/service/device_init/src/sl_device_init_nvic.o" "./gecko_sdk_4.4.4/platform/service/iostream/src/sl_iostream.o" "./gecko_sdk_4.4.4/platform/service/iostream/src/sl_iostream_eusart.o" "./gecko_sdk_4.4.4/platform/service/iostream/src/sl_iostream_retarget_stdio.o" "./gecko_sdk_4.4.4/platform/service/iostream/src/sl_iostream_stdlib_config.o" "./gecko_sdk_4.4.4/platform/service/iostream/src/sl_iostream_uart.o" "./gecko_sdk_4.4.4/platform/service/sleeptimer/src/sl_sleeptimer.o" "./gecko_sdk_4.4.4/platform/service/sleeptimer/src/sl_sleeptimer_hal_burtc.o" "./gecko_sdk_4.4.4/platform/service/sleeptimer/src/sl_sleeptimer_hal_prortc.o" "./gecko_sdk_4.4.4/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.o" "./gecko_sdk_4.4.4/platform/service/sleeptimer/src/sl_sleeptimer_hal_timer.o" "./gecko_sdk_4.4.4/platform/service/system/src/sl_system_init.o" "./gecko_sdk_4.4.4/platform/service/system/src/sl_system_process_action.o" "./gecko_sdk_4.4.4/platform/service/udelay/src/sl_udelay.o" "./gecko_sdk_4.4.4/platform/service/udelay/src/sl_udelay_armv6m_gcc.o" -lgcc -lc -lm -lnosys -Wl,--end-group -Wl,--start-group -lgcc -lc -lnosys -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

	@echo 'Building out file: test.out'
	arm-none-eabi-objcopy "test.axf" "test.out"
	@echo ' '

	@echo 'Building hex file: test.hex'
	arm-none-eabi-objcopy -O ihex "test.axf" "test.hex"
	@echo ' '

	@echo 'Building bin file: test.bin'
	arm-none-eabi-objcopy -O binary "test.axf" "test.bin"
	@echo ' '

	@echo 'Building s37 file: test.s37'
	arm-none-eabi-objcopy -O srec "test.axf" "test.s37"
	@echo ' '

	@echo 'Running size tool'
	arm-none-eabi-size "test.axf" -A
	@echo ' '

# Other Targets
clean:
	-@$(foreach FILE, $(CC_DEPS), $(shell $(RM) $(FILE)) )
	-@$(foreach FILE, $(C++_DEPS), $(shell $(RM) $(FILE)) )
	-@$(foreach FILE, $(EXECUTABLES), $(shell $(RM) $(FILE)) )
	-@$(foreach FILE, $(OBJS), $(shell $(RM) $(FILE)) )
	-@$(foreach FILE, $(C_UPPER_DEPS), $(shell $(RM) $(FILE)) )
	-@$(foreach FILE, $(CXX_DEPS), $(shell $(RM) $(FILE)) )
	-@$(foreach FILE, $(C_DEPS), $(shell $(RM) $(FILE)) )
	-@$(foreach FILE, $(CPP_DEPS), $(shell $(RM) $(FILE)) )
	-$(RM) test.axf
	-@echo ' '

.PHONY: all clean dependents main-build

-include ../makefile.targets
