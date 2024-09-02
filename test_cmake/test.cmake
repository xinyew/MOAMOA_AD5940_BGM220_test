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

# BEGIN_SIMPLICITY_STUDIO_METADATA=eJztXQtz3Dhy/iuuqavUXU5Dzowk26vYu6WV5I0u9kqlkW5zdXPFokhoxDNf4UOP2/J/D/gASZAACZBNzjiVXGp3xUF//aHxJIju/n12fXP1l4uzW+3m6up2djL7fTO7ufh8env51wut+tNmdrKZKcpm9m12UMisr+5uzi7WWOzDTy+O/eYJBaHluR83s6Wy2MzeINfwTMvd4gd3t5/m7zezn37cuB/8wPsnMqI3+N8+CqLXtYH/jcvkzzczXOjNmw8Pnm2i4I2rO8mPhuc+WNv8t+RXy0bkt9DWHOR4wauWlVIesfI4sPBPSbET9S7EzNQXy31F6tpyfNsyLKw3ik3LU5+OtWcv+Br6uoHUCIWRmqGoLFiVoz+0EfIjy0EBOAcmNJeHb5nBk4ZefHgeLGgeDxM9WQbSLNeKNPvhxQNn06KAx8nywihAuqOhONSDSHsyPAecV4cSHrd7Tw/MpFwUeDY4KR66SOs9jt16jwKtZzp60vdAaTQwRayBnHhUY9D4IoxMwzRGpVRTwOd0H2+18HmMztJEZrJAjm3d40IBymVAmbSgs22SzZew1qhj8lrDeVkdaw+2Hj5q4WMcmd6zq2UTEvgSKaCJxzIz6da3vKyrnZ4f/3C00C5/vQWnKaRKkudNCG9OIVVMnrrva3qI9QKTYuJmDD6o2SaNtWHT48jbIpe7Y8vWJBM96LEdpXVVjGF8c40qF5xptpvbC+3Mc3zPRW4UDrUZ4dBE5fUtg5TSDD3SbW9ws1XMwMQWWVQM2zO+hoANwgYXGG9hogZB9w++Ai6lp8SMj7pr2igAbKIGrhgBQFPUcTu3z1lZsKHCgRamAWcKFnQnjbRLW24Y6a4xjlGaGsRI5W8gpeQIluIq6klxLPOxFHW8QwNPOTXUTuXwFmFBM2nYlvsVBckTxTZh1NcgmWoVIyheNPB/wihugHbvXLbI+IrXBfOrdqTg/1V2MFQx39ajBy9wit8bJc7TRa/ye6PE2sLV8NzP+n1IFWsU/PmXL6tVrUgTzYuDmj5SrtrJXsMIOdr91lmt5Pr3+vy/QrW0zkolJlCzmqqV6qgpYzWjpNZ1qh0UIzxYY39ijnWldZJUn+E2wqVr2LHZ2QqplkVoLFfPW11ukPeoYk5KbWjtaIi0vKbLTkNDGRKNQuzu40B3JuZX6BRlGBnTM8x0CjE0nHhifrlGMXbBqx95ujG1DSm9QkyTs7KJSRKVYvwwpvvgTU2x1CrG0tGxTGgEFja/5MvWcLIN5WKcfduemmmuUogfmnyEI4kRnm3PpyZYKBXi+BAGxtQjp9ApxHDr4x3uxAwLnYIMralNSFQK89N8b/KuSOkVYvr4MH1vLHQKMnyZnuCLOD9rNfVYyTWKsdMn30kQlWL8DN14RFMzLJQKcbTxWj4xQ6JSmN/LvT71DqeqVopn8kHFcid/GWSpF+ON0mszU9MttYqx3MFMbkvN5Pb0M7ktM5M74dRTZa5RiJ1vTn06kWsUYxdMPZxzjaLstNDaurq9A5ZVzUJsg2jyIwqiUohfOPk7YCjxDhi+hsaD5Nfv4QQLpUIcd7GeyK0m8S6Wk1huPdnFy77cu/6zKXsPYzBBorKDH3LyuxST0aM0dn24qX7nmYpgXanQdxvGw8aj5oP6nXTH8dy273uWazS+69Hfe/XIcyywVSNjpGK1KoWttnJAbgy2RaEZEOR2/dntspFsUGC3c8ikxuFQYrdzCKPAcsHmHZpDid3BwbbCkZqigO6ygh7FYNu9uhUItto28BvjOAw6x3HWz4C+VeessVqVwhbqP6NwKLE7OOANlW7bkpeNhFlU0EX68TgkCLRcH4o8zzYedcttv+nR7Go8byfg2hX8SD1LLWrX0imw8HF9tgK0tcBn3rIy+chvKGvsEtg2noSWCJ+tYeCXUmRlm56xeTW1dfYB6e3T2Zf15bpt93TmBfV7NIKXbSjjGU5oheldaEv67i7fcil7NaFYbESbilobNSueO02OTquip5VV9K/UUQy9gO0CGJRoJQJW2sKdrHAttGUfpdBsEvcfwzk8HJNNVUcrG8ePNT1wnt6PyIbSAT8JmIGFe2bbLJA6Ww1fMwsvMqhlM2OuprhkyaSUjLNqliqA2pyqRz79U0rgGx0T7boZW3EYaW97MZs1vE+AjJfXRK1oKG3IUtq1zNc9LycmyrtN1uETOzFLztWiLjfmiVnybiN0+cpPTJP3qa2NpvsEd2YlSJOolJ9VxVaHmsNzCHbvnFW/YrlgapUcfNNzLZXKDsHpuVa0yg7E6cna/cimY2NapkSl/OaguYLnnlrD93gECdoWBJcYoqqnq51qAUGmolZRJ8wwQJEebFGkhRFWPhnTplphxlgiC8qQ+XdNRLihVZhvPGUPiJntD/UeUowB4G1AUZ18D1DVIzvWJqLWcpNcsOdORbShVa7nTkUzFrOmNSk9hjaAxS/7eD186cs/gss7LXfbIYOufIKpKurqQHlxP/AMFIaabkTJIeQUDJsqx5kIqwYB7oF5vcjHS1pRP8tPwbCpEmKgFGHwAAZLgQXeEwvk8mthVVdno5XB/h51O7veNyFFSqkkV9zqicvp1GxLtZJ8Mw/ZqekWWiXZTt5baa2dKzEtCD7N1ImyFI40vZfjd7xKFTdkqrokbD46tboygAk9NpGtvw6fzDMc6KGRoZJhUeroGrZZyfSL2Vsn/aS4Hp9YTd04AyG3AXBPy6uTD4BSB/xHJ+SYwVPrJ6c0IOjADpmBQPXGlHMeqTRt8hJ+hEbOwYFamOKetG8JDzB7MO7eylcYGR7cVZqsvpX7hgU6QHUTB2HLjVAQxH7HB9HOLkphwfZUCjrtsA1lI/RbWgdoc9IVSlq1oQzi3SaNzDV0KUxBYNszw8wWmwJ+jOUlAwdtupx7urIU8GMsK7Z137asdNwdTjwXIN9EUj5pi1WRWy7L4mJJMJ4x1Oe4Hcq9AI2jPQduV49GqjsSqTvsNyFaP+f7T51CGh9jDAIEuF196jA/hnoC3K4+ceQdQ3uO264c8nSH0s4+wamrz07rRiFQQrdTAD3VoBhwTi7qBMYbf8zhJ/AxvN1jrJjTwZbKhHK6W3V4MeMaE/aj5Y+inwB3L1ajaGddKmMoTy9464D7TJpDBb7Vw8XSxrIFjd1uD1jXPcoWQp57aa8Fu81ZGw2MC5vNzQuk2yDdF0S8BpPJXnceYnecGaGC3U4C2IuBIsH1XGDuJMdpioD1Is9Qr22RiwK4y5ENGlUF3RvbMVgwL99yNraj6OdctmBTGHO2bmgQ2GmPwYMd4o650x5DPTvmFWunPYZ2ZigehvIxOwINL7DpH2WuZoaCYWz6AaOsUAR4sVQ47x0jUcihRSiMOlk3VYi8Co3BhPfRjvkqNAYB5oQt8irU5ftTSeDS+fmKk/IFuL5WpFZUtKSagTiLrP9ZS8Dk+/zUBN2hS+LIstutXyaGajd+WW6gtTEQ+b6SsKtkplJpHV0faadg1FAzcnM/6oH5rFMO07USaVKsASfVIcmrBXDJkLBVU0TyNZuGbw/wQOe0BDjFbKNUVwN6plPXMrBP1uqRf1lvaBCxLsAM2caGNRGO4ECc3XaOAz25jah5uHTi2Tr84onhDY1yUhgn98FlMyVdMdc3zu2OBByopdsrU8REYp2u9Pl4ykhA2adta5dN+XktO/PrMGWBewpDQxG2hUec86Nwqpv+XW1s28J2XJZtSbgWWduyNiNA4ejoFFZ0Pit69zU4i1kGoTbBHd2S7NlNdILBgM8zljk6fpUKtHvcRg6KdHuoxhZYBomk9lIdjG3AR6kaDlTYAssgESDddJDiDMz1VoHJlVBLANF2nmVlxbps/R7Z1JN0X3CWnqRY95aNtSX71sA8WixW+slCSf53unj7Jnl0uFzkj7Cgj8dgXc4xYkUPHAU9BIcr5X67Sv5RyX+FxYq4R3VZvKlXQgsTDJUwVJJiimWiFK6QUbZurBhmdLJcKStlqawWq9VytTjGuHhiaUM0vyphpBv4n7GPgpM0zZyivT88fP/Du+ViUWacI4losPl+/KBW/8oGPWVg/OyD6gfeP5ER4f+eHczWl1+uP1+eXd7+TVvf3p1fXmlfrs7vPl+sZyezv/+OLRtbdmS5Fy9pqJdwMzv5+z8Okv7g4OUaN+PJg26H6KAomGVKK8o5nhknb94nm9mHXO/Jly/pwzcvju2GJ/nTj5sNfkGJIv9EVZ+fn4kdsEnUMFSvs0IKSs63k5JvcnWpWBTE2UPLTP+ODSXTq4Qoin3lLH39yjGuvTD6GQubStIjla1hpKK+6VBYP25S86XRrZJPCyHuPxEeKZlG5d+Tf6pJocKepF4/bmalOXDNE8RvB/9HTPk9G5Fs89npqg+Kn7NLqMyfWhK8l4Uar4ScQqyk9bUCtdgPAuVQ+nm4s1ga8kCgnN1STihfuogEnbmckqj5z2pPuBfzyubx+3i/CiShpwQq3iO8EtkSil58dons5/KnvRnFsXGWkfquRi8/cfpB+WMti2zll5CX850uw0yIThdhZyqny/DTh9fK1XNrt/3cYMJKR91Rgo/BTdQsVb4Dv6VgLf0x58eK+B6Np1vkJAf96DsbUdlb20HxBnPQSG0sfqIuJ9s4+2aICx5TSkqSI8VusdbzXUnxSq/mismcivXHoY8KBXCADzt6ahxwdMXQKBejtRdAHiu0l2zlPpOsfDUyqKQsFcdTUpYO19omLJ+BejgayRYNgFTkdYbBijo7iVy2ZAikak5jADwSMBICqkwTDIHWyOMLAZqn3AWAQmBNWl6IAwArMs4CYBW5YUGwLDhalWSrAHhFWlQQrBcoqDzbKASSDjbGywyeAGDk4iEQFMmJCQhXTVkJAVumloRAA+y3Nly/zS90AiDleRAhkAKoJqzlFQRAJPc+AaBCsDWpvAsKAAbZ6WPIXg+58JL8b4OgqFxtg5DqSdV6gWXnEWoYYTPFfg7W8c7WCVYl1oHFSwUmIVOkUBOXKR13xGVIojRxiSKbloRIkf1KRobkDROQaeSrEpcpkipJiBQpqSRkKgmkBKQE8uL0QSmz/vSXrqQykgJpJHdqk+7MDSEszEqQ0SbMj6bSLcWMOSMsRofZ6RYTCBEiC8IMnNINwox4ISxGB/loF2O6aQqLCJ2MsHwxhcsTT2Jxge6dT4ujrriY0NLA9D2UEqi6nQgLCpxIcBzxJEX6WE7k/Z/plSYsIPDe0eL0JSxWcakVlxHY4nNcsWREctcpSZFefU1oS892IhKWEDxn5zm+i8jIuPt049WD9ghL5HF2xMvnkXGEBZCkgjL4jLBIy6c3tgAJ8CIskMdkES5PoqgIC5RRT4RFijAlwhJClg3FcuqUaakAwES+BAhCCaxEgkgi56mCUCJHXIJQJJeRLFR72iAAtDKxDwBYJfMOAJoNikbS14hAtWWkGCIvuIGST+owCC3uT4mRIUEKhZFdZ4i84CrUCdPMTzMIrpE9ZhBaLFHDroDTvTDqkaElQZhR8odi0JHWQdDKMPMgcCJ7C/ko7b3QWKHUhYDaklP0BmjmjpCAYqco6Q3QzCAiAsWLaC0h24g63le2Fhj8oPTYOqDcfg5afa1aft2ni5rF5d51+ud3dFlzb0yY357GBsQS2/B7smF5oVgxgsKbwkh8fffGvLFB5Kc07D+YnmDX518SN7APP+HabzZv8sOSj5vZMnGow0+Qa3gm7gX40d3tp/n7zewnrBMrzXXiIiRUiKRLVoKOQXwURK9rA/8bYxDQWaoDF8D//8HHskllzHWE/B9xbam/NxvK4S0x2hi16VkPdTxGTQ8PYYtmXsIldDZMqDKkpIWHy6bqeF33wMG/pkd/eoRwd896b/Iw9dJInqSDlViiHZzpjwOqgOXOA6mgxbEKUk2HzxSkKp6f21hWexzJag2Xv7EqQLvnjaWl5iwIq6bptAiG3+JeCVeHulcepHVEnAwh9Qm5YE6gkPbgBFPIdNTtg17Gvigf5Rc0rvXoEf+ZBTUI08AFJ2THoJK1T51qJ8HyJOu9cue7XaGlm+0aiYsUm9fS0k3zd7Zk02cTDJrnswmpgO3xCamB7y8KqqXuTjoeODBzlh/rqPhj8W96wY6nhuXMO6E24LrV/INHgR6Des0lvQ9u3/WrWAEmW8B4J2y9F7HaoSZzMauJkHNPRlmORHajmFueI1W5gNwhygFIby0LifIYpIdbEgjsAVC7L93oTtj6/W9fN8eHHLn6zfCB7Opw4vQYg1CyufKb80Pbq+Eg29MkXIfbgU1GudxCcCNYILwKB14QZgUaFLfs2isUtyJZz3Bu+Z03EGZl4hgAXlV3ZRh2VUQQjuTiEwg9AgbDrPSohiFX4sHwa/how9BswMKwzZ2/YTjmYCDMEODoRYCjt7zgBEOtmkhgOLvC1R2EXIEGwq1wnQfhVqABcbPgzFbJXQPDrPDsB6NXIIJwLKIFgPAr0IC4vUBSe4FjlgczACGWY8Hw0gHXfgIGw6yItADDrYADYUe8c0C4VRJQwTAjkSDA2BFAUIbV4BKgTKvAMIzLuBUwRFE1pxEAP9A52Qadk23IOdmGnJNzhzkQYmUWt+G88rAfILxyLBheAdxQzbGgeFVDkkDxq2KC8CRekCAEK9nyhjMLAd+/QsD3r9INFIZaNcHfcHawawLsihDDLgkx7JoA+1oN+1ZN4tiAUCNgA5lRYXEGEqOwhn7+qAXZGUitDjfK1w+hoh2Fun5u3lIl2QplvuBZWS4igS939S/GZdSf9hbhxQoSMTzjikUeA0hGJ5Hpp7GM3SFVz2pKwx5ayyAYMlqpdOg9tJaBjGS0llI9tZIoTVJKiVDfmpIwT3I1JVLtWsXGf30s5jnX+vfRzm/DvBBUg3qLpNZSqqfWSnQqKb0VuSH9VFYtERqjxxQRq/rdvhDtcDyDlPGxhCzSEl9LqEEk1t++y1x7TSvhxCQrzItKJrH74Fl/IJmhLJrB3vqxaeKA9QngjVYa+112n5WEiu83SOWvzNQaqRnNv72FhBIC9O4yjfD+PclUEHpzoUP2SxOhxQdaZCtybtOVaqE/h2rSBHkOVeneHKjkC9IcKOl9nTrKPMwyc0fqCbSbFZ4KRdneJp2RLPd9jadidkrUlRXyc187YB4HQb4HFt4f/frh8LZhBeRqbyTp+F5DtkGsIF8g9OTvunX6X4Jxk74G1e3bCsZN/mZFt7syGDn5T4zt5EisNBByBGzs+Xr42sSM8CZvg/aIcYADD5JhCQc5/CAZVvAgByEkRRueIgmaB8KPgE21neCMVOLltps9aDXUnZhV24LlDWlnRtC8YYQqQCC8mlH4BvJrAoLwbIT3G0izgQfCMoZp41iihXf5/lMN2SlZZUbQT8hxNphQr1vxwv13OL0GHlz/HU4uHm45RtDTXqQYODteGrPrBLtZGGshHMUs2hoFcki348aDHMCrCbbvk2gtxKdU3dlRQuHbZBivJtiuh2ARFm1Hw5AKyyto2Y7gvoManR1FdzgxCg6QYRk2GIhjCQjIsgiVDESywAPkCNgLabxBa38zdHJPeiyovV8QqMDf0hVnxiAHao0BhOowO14CskDOu5n+ywDUYrbkha8eMg0wA1n3p1MD2vchVoYPl6pyI/j4vn60SzPQSX+ySwN67mBIlGkB21ujJZ/gXne4MluiRP0sKs3ijmdLoZviY5iuSE8pYjlWWssdG45KN7mDodVIdyliR4GsmXs93hqJQuUrbbHyje76rTUNuLeLLUuRvlTEkMy8p3vdX8qsrhL1s6h0sPu7EbCte9mNQE+vgmqOxS5DsvIy9rhiXyZplFCYS/RUl+d4lNGXi/RTiKTrh4bUT/Q7JScvZT+lJEmlhEoi0k8hSXIpoZCI9FOYJ8mU0JdL9FMndoLHTMvZT2GZo1NCZSnUT6ng2RU7M2g/lX1Gh+Dg6HnRop83ZjVduEhVrFqK8Z6TZ54/XEIjEem/OEjqE7+gyFRXyV0tp7Ui2MvXrJpjWVQzLdWvzqLOrpzs9v2U3os4YrJS3fdd9MVcazlJ6XvO4WVGcwmtFal+aoX9bHhJwQfsq2QNHIi/4jMVVnOsSyquivbf2Mnplbg8zd3YSWqUugTDU9pvTmzIDthbymmWCZ7I2VvKKZSJtMbeW8rpkwgLxVTXr0FpwQEbW8kZUSIkEXNjKxTrh1IpF9GHu5uWVpoLDVHac0psCg/Z0svplvukyNnSy6kUnBb7bun7+kxVUuEM+jzGSawjbCMrUivCaivizk/O+D80ckP5vnh6jH7BdeLIsvu1fZn3q3/TlxjctsZFyHeWhKtaiqi09JCP08N4NAC+oy72qAfms97i+N+QSJOQTXTCW+Q8a71ASuqgpmXJPQFasF84FTp1ZuupYRuJOsAencvUOXL7f61++c2EhuwQO7fO+W36xab2vXCUz+7Px4Ge3EzVPIyQ+GPv5lqQ4fEjFBXmzv3I2bxJN8+R9vujW0azs3+1V7iIYiZ+ujPeB1pGJtNpelLjejM/qergvFdMbOF+y5AtQjvxKHN+HC0R1ZRDYvctJzoAWS1HwkLJtpzc9nBPgmiy8gkyHjV21PnYqKfaLYyeCJyod3izGqovlvuahCLFb0iWYUWv67RB1Kdj7dkLvoa+biA1SQ+o5rgqX7OjW+4oqglwi+48NaSjhxGep+9xL3JQpNuj0GnR1cIwsd/jSO3y2Ms2Y7Bp0dXCMEC66SDFMUdgVMGmGLASc/ZSIIDbKwqwJC7/9bQvwfJyoyRCc6fel0IzhlZfKp2bur4U62GW+uJwAp/0havf7B2G07srNA8zhwLQJ33DqtW4gTm08aquwAN7ap/dz8CRTsW7HGqK0i9zMBLl2DOsxcurlENZlQ4aNSRHNwLvPEm8YyWTTLnKnV/8fPeLdvHpi6hAuhws1mfL1W+/nIoKrT9rP1+d3pxrv55+uUgXzyfdjpNf/u1/Yi/6j59vzo8Wi9Vp9pc06s3FXxmgp4u3cnj/ibF+O725yFHPLz6d3n2+1W4+aT+f/nqurTDFnlDru+vrq5vbtbYkaEOB+pASaYXD5QK6FY6l8c6uvlxf/Xrx6612dnp7+vnqF+365mKN/65h4Mk30IPXT/S1d6Pe+ZnFhAo5IoVcD08rtYLJrHXl5xVL/rhMs7MXT5XYUCoxqHEhL33eVkwx/JgysOEFEXqZO4eHU2h/qGl/8J+O56E/iWrb0yNNv7coAo/pib+0dhKMt115EbK3DK3Myh+fCH22wqhQSsh1Bmb+oJYKZauQbKGd+846FMX2shLpG1VHDbIy+b/Wacpdqgv8wQ+8fyIDv3DGkbdFrpqVTF6ZFHuCzpHcMUs37SFK/x1S7KIgru8FR+Bg6pEOql+iYVzd9TRDw9PiLmruOVakPQR4Ftb8bMu8AxLYAOjFQP6umh/rD6LImrjh0xsueoS+6H66GE5fbyPJKeKa6RpQXRN/+GEC3S8vHO1//vNyOb5+/ErmWu42VHTb3oHpC/XoJQr0XRLwkam7kWXQG5PshG66RgiQht/WvSDcBY2khGP9Kz07ovSH1r/E1Dv6V5SumHrgKEnkgixyYV0/p1hjVzp38JOPknvTgRyix9i5r7HIn42vvL4xnjv4ycd8ezw3l28nIcHcImMqyfM5fv5ReLvcUFHOe51syqK8CXoeRuZH0Vm6BT+5hCZMJvlMxJuzM0LCEzcwJdbyPX9wvXn2dCeEOPuZlFb1t+n6EplrtfqCN/8tfTKtmcZl08suzZV4/lv+bEe2GY2RjH24i+P8anD/lbXMmFxkbMJ/X5w/JL/Ny9+mNdBkxGSs1f6GP38gv+/MapMTlBp/7W/o84ekwDwtMC8KTDwsp6coY8H9OLkDtPeeVoh7pMovua9VYR/jcIrxz1b7H6kOZJQeKjaOFOf4ZQoZ4cfkVyX9zym4kHMuLftbc3SfZvXfOd7mzfyL7n/8wx+v7m6v726188ubP6l/+OP1zdVfLs5ukw9uf1JSYQHO2SdexcI9Iz/frtPN72N4Pr2TSHNzL0JjuXreDtxnNQxkhawrnfxePncMp37+0SnT0cad8tshAwlXXQktW78PU9OH1uEqM4kZ4aZz9S0y72PLNtMPU8rWjZXK1Hav57fCKjarANZKZ4WUxKiKFz2iIMl1u//mZV41bin/4KAwxHab28jdRo8f61+qx26e5JVWpoGq5f+/ieSbyNIDBT376WTCm0guL5KXwCtyhiBlm6Y95fkl3JIH+Sd10txPx8qRsqyTbRHI+4dumun9Bd1Obmjuplqia5z0FP6bfTCfbw3Oq4OYuOvNkzOBefD8gnG2DnKj+srdr7KPXhgBL1ldW4yxtpjSRF/wHwXc/NmKHufpRnzaxS/fI3XMrLJwhhUYsa0HJvKRayLXeO33hWl/auR6WZqavt+H+q187ElgCNZ30DRlWTJB2+aDrW8lp+RRZq5BphfcvlRrPmG9P6j5i0r615sPP704doKbhUPCyEtlkbLHfcYzLXeLH93dfpq/38x+ygDIi04ZAsBQHM+M8fwZoij2FRM96LEdrVEUpV9dEzcHJb3rh2WwtI+C6HVt4H9j4eK1SR2PUGxcZ0UEqVTt14hakL1rsxqLdkpRjMAosrUFmcak02CbFAMQPyKvrSZ7VFb9teimmx3M1pdfrj9fnl3e/k1b396dX15p+CX2+uLm9vJiPTuZ/Y4RUbITPtng/97gt1X9CZnryDO+/lUPLB2vSGHy+CT5R1Ig+T/cVX0LlzK/fvaM7AQ8/+GE/McWGV89LTS/akd4J3ZEHh+Q//D1AHfYphz9zps//Jb9A0vPzrN+833w/Ybtn6lObtWE2Nx//z1Rlbcmhkla86DoVenN8KRmWZeohRhJM2Genh//cLTQbsKokiUNI3iBtbXwtrWASJ/mAwQ/WB6kqBEe/fiv+Wq5WKxWR29/OPp2AETp8tfbIZQO371dHC2PF6J8yHlWQugJQ2iPumvm57Hy9liu3h7j/1u8lTRH6QE1pO7LBa798bt3x8KtUal9sl/23MQCuGvrttezRyyP3q6O3x/h/+/TAuxAOH2aYvl++fbd26PlO2kejclU3ghH7969O1y8Wx5++8fs2/8CJHeZeA===END_SIMPLICITY_STUDIO_METADATA
