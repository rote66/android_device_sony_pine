DEVICE_PATH := device/sony/pine
VENDOR_PATH := vendor/sony/pine

# inherit from the proprietary version
-include $(VENDOR_PATH)/BoardConfigVendor.mk

# Device board elements
include $(DEVICE_PATH)/board/*.mk

# System Prop
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# Init
TARGET_INIT_VENDOR_LIB := libinit_pine
TARGET_UNIFIED_DEVICE := true

#Linker
LINKER_FORCED_SHIM_LIBS += /system/lib/libcamera_client.so|libmtk_symbols.so:/system/lib64/libcamera_client.so|libmtk_symbols.so:/system/vendor/bin/program_binary_builder|libmtk_symbols.so:/system/lib/libstagefright_omx.so|libmtk_symbols.so:/system/lib64/libstagefright_omx.so|libmtk_symbols.so
#LINKER_FORCED_SHIM_LIBS += /system/vendor/lib/mtk-ril.so|libmtk_symbols.so:/system/vendor/lib64/mtk-ril.so|libmtk_symbols.so
