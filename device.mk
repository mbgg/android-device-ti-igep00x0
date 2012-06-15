#
# Copyright (C) 2011 The Android Open-Source Project
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


PRODUCT_COPY_FILES := \
	device/ti/igep00x0/init.rc:root/init.rc \
	device/ti/igep00x0/vold.fstab:system/etc/vold.fstab \
	device/ti/igep00x0/boot.wav:system/media/audio/ui/boot.wav

# Wifi
PRODUCT_COPY_FILES += \
	frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	frameworks/base/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml


PRODUCT_COPY_FILES += \
	device/ti/igep00x0/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
	device/ti/igep00x0/rc.wifi:system/bin/rc.wifi \
	device/ti/igep00x0/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.config \
	device/ti/igep00x0/libertas/LICENCE.libertas:system/etc/firmware/LICENCE.libertas \
	device/ti/igep00x0/libertas/sd8686.bin:system/etc/firmware/sd8686.bin \
	device/ti/igep00x0/libertas/sd8686_helper.bin:system/etc/firmware/sd8686_helper.bin

# Bluetooth
#PRODUCT_COPY_FILES += \
#	device/ti/igep00x0/rc.bt:system/bin/rc.bt \
#	device/ti/igep00x0/bt.psr:system/etc/bt.psr

#PRODUCT_COPY_FILES += \
#	device/ti/flashboard/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
#	system/bluetooth/data/main.nonsmartphone.conf:system/etc/bluetooth/main.conf


PRODUCT_COPY_FILES += \
	device/ti/igep00x0/asound.conf:system/etc/asound.conf

PRODUCT_PROPERTY_OVERRIDES := \
	wifi.interface=wlan0 \
	hwui.render_dirty_regions=false

PRODUCT_CHARACTERISTICS := tablet

DEVICE_PACKAGE_OVERLAYS := \
    device/ti/igep00x0/overlay

PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_PACKAGES += \
	librs_jni \
	com.android.future.usb.accessory

PRODUCT_PACKAGES += \
	libaudioutils

#TODO
PRODUCT_PACKAGES += \
        audio.primary.beagleboard \
        tinycap \
        tinymix \
        tinyplay

PRODUCT_PACKAGES += \
	dhcpcd.conf \
	TQS_D_1.7.ini \
	calibrator
#	hostapd.conf \

# Filesystem management tools
PRODUCT_PACKAGES += \
	make_ext4fs

$(call inherit-product, frameworks/base/build/tablet-dalvik-heap.mk)
$(call inherit-product-if-exists, hardware/ti/wlan/mac80211/firmware/wl12xx_wlan_fw_products.mk)
#$(call inherit-product-if-exists, hardware/ti/wpan/wl12xx-bluetooth/wl12xx_bt_products.mk)
