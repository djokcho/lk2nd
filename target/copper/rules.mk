LOCAL_DIR := $(GET_LOCAL_DIR)

INCLUDES += -I$(LOCAL_DIR)/include -I$(LK_TOP_DIR)/platform/msm_shared

PLATFORM := copper

MEMBASE := 0x11000000 # SDRAM
MEMSIZE := 0x00100000 # 1MB

BASE_ADDR        := 0x10200000

TAGS_ADDR        := BASE_ADDR+0x00000100
KERNEL_ADDR      := BASE_ADDR+0x00008000
RAMDISK_ADDR     := BASE_ADDR+0x01000000
SCRATCH_ADDR     := 0x00000000


MODULES += \
	dev/keys \
    lib/ptable

DEFINES += \
	MEMSIZE=$(MEMSIZE) \
	MEMBASE=$(MEMBASE) \
	BASE_ADDR=$(BASE_ADDR) \
	TAGS_ADDR=$(TAGS_ADDR) \
	KERNEL_ADDR=$(KERNEL_ADDR) \
	RAMDISK_ADDR=$(RAMDISK_ADDR) \
	SCRATCH_ADDR=$(SCRATCH_ADDR)


OBJS += \
    $(LOCAL_DIR)/init.o \
	$(LOCAL_DIR)/atags.o
