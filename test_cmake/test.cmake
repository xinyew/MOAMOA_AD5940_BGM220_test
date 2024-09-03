set(SDK_PATH "/Users/xinye/SimplicityStudio/SDKs/gecko_sdk_2")
set(COPIED_SDK_PATH "gecko_sdk_4.4.4")

add_library(slc_test OBJECT
    "${SDK_PATH}/hardware/board/src/sl_board_control_gpio.c"
    "${SDK_PATH}/hardware/board/src/sl_board_init.c"
    "${SDK_PATH}/hardware/driver/configuration_over_swo/src/sl_cos.c"
    "${SDK_PATH}/hardware/driver/mx25_flash_shutdown/src/sl_mx25_flash_shutdown_usart/sl_mx25_flash_shutdown.c"
    "${SDK_PATH}/platform/common/src/sl_assert.c"
    "${SDK_PATH}/platform/common/src/sl_slist.c"
    "${SDK_PATH}/platform/common/src/sl_string.c"
    "${SDK_PATH}/platform/common/src/sl_syscalls.c"
    "${SDK_PATH}/platform/common/toolchain/src/sl_memory.c"
    "${SDK_PATH}/platform/Device/SiliconLabs/BGM22/Source/startup_bgm22.c"
    "${SDK_PATH}/platform/Device/SiliconLabs/BGM22/Source/system_bgm22.c"
    "${SDK_PATH}/platform/driver/debug/src/sl_debug_swo.c"
    "${SDK_PATH}/platform/emdrv/dmadrv/src/dmadrv.c"
    "${SDK_PATH}/platform/emdrv/gpiointerrupt/src/gpiointerrupt.c"
    "${SDK_PATH}/platform/emdrv/spidrv/src/spidrv.c"
    "${SDK_PATH}/platform/emlib/src/em_burtc.c"
    "${SDK_PATH}/platform/emlib/src/em_cmu.c"
    "${SDK_PATH}/platform/emlib/src/em_core.c"
    "${SDK_PATH}/platform/emlib/src/em_emu.c"
    "${SDK_PATH}/platform/emlib/src/em_eusart.c"
    "${SDK_PATH}/platform/emlib/src/em_gpio.c"
    "${SDK_PATH}/platform/emlib/src/em_ldma.c"
    "${SDK_PATH}/platform/emlib/src/em_msc.c"
    "${SDK_PATH}/platform/emlib/src/em_rtcc.c"
    "${SDK_PATH}/platform/emlib/src/em_system.c"
    "${SDK_PATH}/platform/emlib/src/em_timer.c"
    "${SDK_PATH}/platform/emlib/src/em_usart.c"
    "${SDK_PATH}/platform/service/device_init/src/sl_device_init_dcdc_s2.c"
    "${SDK_PATH}/platform/service/device_init/src/sl_device_init_emu_s2.c"
    "${SDK_PATH}/platform/service/device_init/src/sl_device_init_hfxo_s2.c"
    "${SDK_PATH}/platform/service/device_init/src/sl_device_init_lfxo_s2.c"
    "${SDK_PATH}/platform/service/device_init/src/sl_device_init_nvic.c"
    "${SDK_PATH}/platform/service/iostream/src/sl_iostream.c"
    "${SDK_PATH}/platform/service/iostream/src/sl_iostream_eusart.c"
    "${SDK_PATH}/platform/service/iostream/src/sl_iostream_retarget_stdio.c"
    "${SDK_PATH}/platform/service/iostream/src/sl_iostream_stdlib_config.c"
    "${SDK_PATH}/platform/service/iostream/src/sl_iostream_uart.c"
    "${SDK_PATH}/platform/service/sleeptimer/src/sl_sleeptimer.c"
    "${SDK_PATH}/platform/service/sleeptimer/src/sl_sleeptimer_hal_burtc.c"
    "${SDK_PATH}/platform/service/sleeptimer/src/sl_sleeptimer_hal_prortc.c"
    "${SDK_PATH}/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.c"
    "${SDK_PATH}/platform/service/sleeptimer/src/sl_sleeptimer_hal_timer.c"
    "${SDK_PATH}/platform/service/system/src/sl_system_init.c"
    "${SDK_PATH}/platform/service/system/src/sl_system_process_action.c"
    "${SDK_PATH}/platform/service/udelay/src/sl_udelay.c"
    "${SDK_PATH}/platform/service/udelay/src/sl_udelay_armv6m_gcc.S"
    "../app.c"
    "../autogen/sl_board_default_init.c"
    "../autogen/sl_device_init_clocks.c"
    "../autogen/sl_emlib_gpio_simple_init.c"
    "../autogen/sl_event_handler.c"
    "../autogen/sl_iostream_handles.c"
    "../autogen/sl_iostream_init_eusart_instances.c"
    "../autogen/sl_spidrv_init.c"
    "../main.c"
    "../spidrv_master_baremetal.c"
)

target_include_directories(slc_test PUBLIC
   "../config"
   "../autogen"
   "../."
    "${SDK_PATH}/platform/Device/SiliconLabs/BGM22/Include"
    "${SDK_PATH}/app/common/util/app_assert"
    "${SDK_PATH}/platform/common/inc"
    "${SDK_PATH}/hardware/board/inc"
    "${SDK_PATH}/platform/CMSIS/Core/Include"
    "${SDK_PATH}/hardware/driver/configuration_over_swo/inc"
    "${SDK_PATH}/platform/driver/debug/inc"
    "${SDK_PATH}/platform/service/device_init/inc"
    "${SDK_PATH}/platform/emdrv/dmadrv/inc"
    "${SDK_PATH}/platform/emdrv/common/inc"
    "${SDK_PATH}/platform/emlib/inc"
    "${SDK_PATH}/platform/emlib/init/gpio_simple"
    "${SDK_PATH}/platform/emdrv/gpiointerrupt/inc"
    "${SDK_PATH}/platform/service/iostream/inc"
    "${SDK_PATH}/hardware/driver/mx25_flash_shutdown/inc/sl_mx25_flash_shutdown_usart"
    "${SDK_PATH}/platform/common/toolchain/inc"
    "${SDK_PATH}/platform/service/system/inc"
    "${SDK_PATH}/platform/service/sleeptimer/inc"
    "${SDK_PATH}/platform/emdrv/spidrv/inc"
    "${SDK_PATH}/platform/service/udelay/inc"
)

target_compile_definitions(slc_test PUBLIC
    "DEBUG_EFM=1"
    "BGM220SC12WGA=1"
    "SL_BOARD_NAME=\"BRD4310A\""
    "SL_BOARD_REV=\"A05\""
    "HARDWARE_BOARD_DEFAULT_RF_BAND_2400=1"
    "HARDWARE_BOARD_SUPPORTS_1_RF_BAND=1"
    "HARDWARE_BOARD_SUPPORTS_RF_BAND_2400=1"
    "SL_COMPONENT_CATALOG_PRESENT=1"
)

target_link_libraries(slc_test PUBLIC
    "-Wl,--start-group"
    "gcc"
    "c"
    "m"
    "nosys"
    "-Wl,--end-group"
)
target_compile_options(slc_test PUBLIC
    $<$<COMPILE_LANGUAGE:C>:-mcpu=cortex-m33>
    $<$<COMPILE_LANGUAGE:C>:-mthumb>
    $<$<COMPILE_LANGUAGE:C>:-mfpu=fpv5-sp-d16>
    $<$<COMPILE_LANGUAGE:C>:-mfloat-abi=hard>
    $<$<COMPILE_LANGUAGE:C>:-Wall>
    $<$<COMPILE_LANGUAGE:C>:-Wextra>
    $<$<COMPILE_LANGUAGE:C>:-Os>
    $<$<COMPILE_LANGUAGE:C>:-fdata-sections>
    $<$<COMPILE_LANGUAGE:C>:-ffunction-sections>
    $<$<COMPILE_LANGUAGE:C>:-fomit-frame-pointer>
    "$<$<COMPILE_LANGUAGE:C>:SHELL:-imacros sl_gcc_preinclude.h>"
    $<$<COMPILE_LANGUAGE:C>:-mcmse>
    $<$<COMPILE_LANGUAGE:C>:--specs=nano.specs>
    $<$<COMPILE_LANGUAGE:C>:-g>
    $<$<COMPILE_LANGUAGE:CXX>:-mcpu=cortex-m33>
    $<$<COMPILE_LANGUAGE:CXX>:-mthumb>
    $<$<COMPILE_LANGUAGE:CXX>:-mfpu=fpv5-sp-d16>
    $<$<COMPILE_LANGUAGE:CXX>:-mfloat-abi=hard>
    $<$<COMPILE_LANGUAGE:CXX>:-fno-rtti>
    $<$<COMPILE_LANGUAGE:CXX>:-fno-exceptions>
    $<$<COMPILE_LANGUAGE:CXX>:-Wall>
    $<$<COMPILE_LANGUAGE:CXX>:-Wextra>
    $<$<COMPILE_LANGUAGE:CXX>:-Os>
    $<$<COMPILE_LANGUAGE:CXX>:-fdata-sections>
    $<$<COMPILE_LANGUAGE:CXX>:-ffunction-sections>
    $<$<COMPILE_LANGUAGE:CXX>:-fomit-frame-pointer>
    "$<$<COMPILE_LANGUAGE:CXX>:SHELL:-imacros sl_gcc_preinclude.h>"
    $<$<COMPILE_LANGUAGE:CXX>:-mcmse>
    $<$<COMPILE_LANGUAGE:CXX>:--specs=nano.specs>
    $<$<COMPILE_LANGUAGE:CXX>:-g>
    $<$<COMPILE_LANGUAGE:ASM>:-mcpu=cortex-m33>
    $<$<COMPILE_LANGUAGE:ASM>:-mthumb>
    $<$<COMPILE_LANGUAGE:ASM>:-mfpu=fpv5-sp-d16>
    $<$<COMPILE_LANGUAGE:ASM>:-mfloat-abi=hard>
    "$<$<COMPILE_LANGUAGE:ASM>:SHELL:-imacros sl_gcc_preinclude.h>"
    "$<$<COMPILE_LANGUAGE:ASM>:SHELL:-x assembler-with-cpp>"
)

set(post_build_command )
set_property(TARGET slc_test PROPERTY C_STANDARD 99)
set_property(TARGET slc_test PROPERTY CXX_STANDARD 11)
set_property(TARGET slc_test PROPERTY CXX_EXTENSIONS OFF)

target_link_options(slc_test INTERFACE
    -mcpu=cortex-m33
    -mthumb
    -mfpu=fpv5-sp-d16
    -mfloat-abi=hard
    -T${CMAKE_CURRENT_LIST_DIR}/../autogen/linkerfile.ld
    --specs=nano.specs
    "SHELL:-Xlinker -Map=$<TARGET_FILE_DIR:test>/test.map"
    -Wl,--gc-sections
    -Wl,--no-warn-rwx-segments
)

# BEGIN_SIMPLICITY_STUDIO_METADATA=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=END_SIMPLICITY_STUDIO_METADATA
