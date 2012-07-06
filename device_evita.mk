#
# Copyright (C) 2011 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# common msm8960 configs
$(call inherit-product, device/htc/msm8960-common/msm8960.mk)

DEVICE_PACKAGE_OVERLAYS += device/htc/evita/overlay

# Boot ramdisk setup
PRODUCT_COPY_FILES += \
    device/htc/evita/prebuilt/init:root/init \
    device/htc/evita/ramdisk/init.elite.rc:root/init.elite.rc \
    device/htc/evita/ramdisk/init.elite.usb.rc:root/init.elite.usb.rc \
    device/htc/evita/ramdisk/ueventd.elite.rc:root/ueventd.elite.rc

# GPS config
PRODUCT_COPY_FILES += device/common/gps/gps.conf_US:system/etc/gps.conf

# Media config
PRODUCT_COPY_FILES += \
    device/htc/msm8960-common/configs/media_profiles.xml:system/etc/media_profiles.xml

# NFC
PRODUCT_COPY_FILES += \
    device/htc/evita/configs/nfcee_access.xml:system/etc/nfcee_access.xml

# HTC BT audio config
PRODUCT_COPY_FILES += device/htc/evita/configs/AudioBTID.csv:system/etc/AudioBTID.csv

# QC thermald config
PRODUCT_COPY_FILES += device/htc/msm8960-common/configs/thermald.conf:system/etc/thermald.conf

# vold config
PRODUCT_COPY_FILES += \
    device/htc/evita/configs/vold.fstab:system/etc/vold.fstab

# wifi config
PRODUCT_COPY_FILES += \
    device/htc/evita/configs/wpa_supplicant.conf:/system/etc/wifi/wpa_supplicant.conf

# Sound configs
PRODUCT_COPY_FILES += \
    device/htc/evita/dsp/soundimage/srs_bypass.cfg:system/etc/soundimage/srs_bypass.cfg \
    device/htc/evita/dsp/soundimage/srsfx_trumedia_51.cfg:system/etc/soundimage/srsfx_trumedia_51.cfg \
    device/htc/evita/dsp/soundimage/srsfx_trumedia_movie.cfg:system/etc/soundimage/srsfx_trumedia_movie.cfg \
    device/htc/evita/dsp/soundimage/srsfx_trumedia_music.cfg:system/etc/soundimage/srsfx_trumedia_music.cfg \
    device/htc/evita/dsp/soundimage/srsfx_trumedia_voice.cfg:system/etc/soundimage/srsfx_trumedia_voice.cfg \
    device/htc/evita/dsp/soundimage/srs_geq10.cfg:system/etc/soundimage/srs_geq10.cfg \
    device/htc/evita/dsp/soundimage/srs_global.cfg:system/etc/soundimage/srs_global.cfg

PRODUCT_COPY_FILES += \
    device/htc/evita/dsp/snd_soc_msm/FM_A2DP_REC:/system/etc/snd_soc_msm/FM_A2DP_REC \
    device/htc/evita/dsp/snd_soc_msm/FM_A2DP_REC_2x:/system/etc/snd_soc_msm/FM_A2DP_REC_2x \
    device/htc/evita/dsp/snd_soc_msm/FM_Digital_Radio:/system/etc/snd_soc_msm/FM_Digital_Radio \
    device/htc/evita/dsp/snd_soc_msm/FM_Digital_Radio_2x:/system/etc/snd_soc_msm/FM_Digital_Radio_2x \
    device/htc/evita/dsp/snd_soc_msm/FM_REC:/system/etc/snd_soc_msm/FM_REC \
    device/htc/evita/dsp/snd_soc_msm/FM_REC_2x:/system/etc/snd_soc_msm/FM_REC_2x \
    device/htc/evita/dsp/snd_soc_msm/HiFi:/system/etc/snd_soc_msm/HiFi \
    device/htc/evita/dsp/snd_soc_msm/HiFi_2x:/system/etc/snd_soc_msm/HiFi_2x \
    device/htc/evita/dsp/snd_soc_msm/HiFi_Low_Power:/system/etc/snd_soc_msm/HiFi_Low_Power \
    device/htc/evita/dsp/snd_soc_msm/HiFi_Low_Power_2x:/system/etc/snd_soc_msm/HiFi_Low_Power_2x \
    device/htc/evita/dsp/snd_soc_msm/HiFi_Rec:/system/etc/snd_soc_msm/HiFi_Rec \
    device/htc/evita/dsp/snd_soc_msm/HiFi_Rec_2x:/system/etc/snd_soc_msm/HiFi_Rec_2x \
    device/htc/evita/dsp/snd_soc_msm/snd_soc_msm:/system/etc/snd_soc_msm/snd_soc_msm \
    device/htc/evita/dsp/snd_soc_msm/snd_soc_msm_2x:/system/etc/snd_soc_msm/snd_soc_msm_2x \
    device/htc/evita/dsp/snd_soc_msm/Voice_Call:/system/etc/snd_soc_msm/Voice_Call \
    device/htc/evita/dsp/snd_soc_msm/Voice_Call_2x:/system/etc/snd_soc_msm/Voice_Call_2x \
    device/htc/evita/dsp/snd_soc_msm/Voice_Call_IP:/system/etc/snd_soc_msm/Voice_Call_IP \
    device/htc/evita/dsp/snd_soc_msm/Voice_Call_IP_2x:/system/etc/snd_soc_msm/Voice_Call_IP_2x

# Keylayouts and Keychars
PRODUCT_COPY_FILES += \
    device/htc/evita/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/htc/evita/keylayout/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl \
    device/htc/evita/keylayout/keypad_8960.kl:system/usr/keylayout/keypad_8960.kl \
    device/htc/evita/keylayout/msm8960-snd-card_Button_Jack.kl:system/usr/keylayout/msm8960-snd-card_Button_Jack.kl \
    device/htc/evita/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
    device/htc/evita/keylayout/synaptics-rmi-touchscreen.kl:system/usr/keylayout/synaptics-rmi-touchscreen.kl

# Input device config
PRODUCT_COPY_FILES += \
    device/htc/evita/idc/projector_input.idc:system/usr/idc/projector_input.idc \
    device/htc/evita/idc/qwerty2.idc:system/usr/idc/qwerty2.idc \
    device/htc/evita/idc/qwerty.idc:system/usr/idc/qwerty.idc \
    device/htc/evita/idc/synaptics-rmi-touchscreen.idc:system/usr/idc/synaptics-rmi-touchscreen.idc

# GPS
#PRODUCT_PACKAGES += \
#    gps.evita \

# Lights
PRODUCT_PACKAGES += \
    lights.evita


# NFC
PRODUCT_PACKAGES += \
    libnfc \
    libnfc_ndef \
    libnfc_jni \
    Nfc \
    Tag \
    com.android.nfc_extras

# NFC Hardware Specific
PRODUCT_COPY_FILES += \
	frameworks/base/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
	frameworks/base/nfc-extras/com.android.nfc_extras.xml

# Torch
PRODUCT_PACKAGES += \
    Torch

# Kernel modules
PRODUCT_COPY_FILES += \
    device/htc/evita/modules/ansi_cprng.ko:/system/lib/modules/ansi_cprng.ko \
    device/htc/evita/modules/bluetooth-power.ko:/system/lib/modules/bluetooth-power.ko \
    device/htc/evita/modules/cavm_sqos_mod.ko:/system/lib/modules/cavm_sqos_mod.ko \
    device/htc/evita/modules/dma_test.ko:/system/lib/modules/dma_test.ko \
    device/htc/evita/modules/evbug.ko:/system/lib/modules/evbug.ko \
    device/htc/evita/modules/gspca_main.ko:/system/lib/modules/gspca_main.ko \
    device/htc/evita/modules/htc_sqos_ctrlmsg.ko:/system/lib/modules/htc_sqos_ctrlmsg.ko \
    device/htc/evita/modules/htc_sqos_encoder.ko:/system/lib/modules/htc_sqos_encoder.ko \
    device/htc/evita/modules/htc_sqos_wifi.ko:/system/lib/modules/htc_sqos_wifi.ko \
    device/htc/evita/modules/lcd.ko:/system/lib/modules/lcd.ko \
    device/htc/evita/modules/msm-buspm-dev.ko:/system/lib/modules/msm-buspm-dev.ko \
    device/htc/evita/modules/prima_wlan.ko:/system/lib/modules/prima_wlan.ko \
    device/htc/evita/modules/qce40.ko:/system/lib/modules/qce40.ko \
    device/htc/evita/modules/qcedev.ko:/system/lib/modules/qcedev.ko \
    device/htc/evita/modules/qcrypto.ko:/system/lib/modules/qcrypto.ko \
    device/htc/evita/modules/radio-iris-transport.ko:/system/lib/modules/radio-iris-transport.ko \
    device/htc/evita/modules/reset_modem.ko:/system/lib/modules/reset_modem.ko \
    device/htc/evita/modules/scsi_wait_scan.ko:/system/lib/modules/scsi_wait_scan.ko \
    device/htc/evita/modules/spidev.ko:/system/lib/modules/spidev.ko

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml

# Extra properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.setupwizard.enable_bypass=1 \
    dalvik.vm.lockprof.threshold=500 \
    ro.com.google.locationfeatures=1 \
    dalvik.vm.dexopt-flags=m=y

# We have enough space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# Set build date
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi
PRODUCT_LOCALES += en_US xhdpi

# call the proprietary setup
$(call inherit-product-if-exists, vendor/htc/evita/evita-vendor.mk)

# call dalvik heap config
$(call inherit-product-if-exists, frameworks/base/build/phone-xhdpi-1024-dalvik-heap.mk)
