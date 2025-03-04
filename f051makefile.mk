
TARGETS_F051 := \
	DAKEFPV_35A_F051 FD6288_F051 MP6531_F051 IFLIGHT_F051 TMOTOR55_F051 TMOTOR45_F051 HGLRC_F051 SISKIN_F051 \
	DIATONE_F051 MAMBA_F40PRO_F051 MAMBA_F50PRO_F051 MAMBA_F60PRO_F051 \
	WRAITH32V1_F051 WRAITH32V2_F051 CRTEENSY_HILARIESC_F051 FLYCOLOR_F051 HVFLYCOLOR_F051 AIKONSINGLE_F051 \
	SKYSTARS_F051 AM32REF_F051 WROBELESC200A_F051 BLPWR_F051 NEUTRONRC_F051 RAZOR32_F051 RHINO80A_F051 REPEAT_DRIVE_F051 FLASHHOBBY_F051\

HAL_FOLDER_F051 := $(HAL_FOLDER)/f051

MCU_F051 := -mcpu=cortex-m0 -mthumb
LDSCRIPT_F051 := $(HAL_FOLDER_F051)/STM32F051K6TX_FLASH.ld

SRC_DIR_F051 += \
	$(HAL_FOLDER_F051)/Startup \
	$(HAL_FOLDER_F051)/Src \
	$(HAL_FOLDER_F051)/Drivers/STM32F0xx_HAL_Driver/Src

CFLAGS_F051 := \
	-I$(HAL_FOLDER_F051)/Inc \
	-I$(HAL_FOLDER_F051)/Drivers/STM32F0xx_HAL_Driver/Inc \
	-I$(HAL_FOLDER_F051)/Drivers/CMSIS/Include \
	-I$(HAL_FOLDER_F051)/Drivers/CMSIS/Device/ST/STM32F0xx/Include

CFLAGS_F051 += \
	-DHSE_VALUE=8000000 \
	-DSTM32F051x8 \
	-DHSE_STARTUP_TIMEOUT=100 \
	-DLSE_STARTUP_TIMEOUT=5000 \
	-DLSE_VALUE=32768 \
	-DDATA_CACHE_ENABLE=0 \
	-DINSTRUCTION_CACHE_ENABLE=0 \
	-DVDD_VALUE=3300 \
	-DLSI_VALUE=40000 \
	-DHSI_VALUE=8000000 \
	-DUSE_FULL_LL_DRIVER \
	-DPREFETCH_ENABLE=1

SRC_F051 := $(foreach dir,$(SRC_DIR_F051),$(wildcard $(dir)/*.[cs]))
