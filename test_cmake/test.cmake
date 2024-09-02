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

# BEGIN_SIMPLICITY_STUDIO_METADATA=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END_SIMPLICITY_STUDIO_METADATA
