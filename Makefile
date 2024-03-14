
# export THEOS_DEVICE_IP = 192.168.31.20
export THEOS_DEVICE_IP = 192.168.31.11
# export THEOS_DEVICE_IP = 192.168.31.120
export THEOS_DEVICE_PORT = 2222

THEOS_PACKAGE_SCHEME=rootless

ifeq ($(THEOS_PACKAGE_SCHEME),rootless)
	ARCHS = arm64 arm64e
	TARGET = iphone:clang:latest:15.0
else
	ARCHS = armv7 armv7s arm64 arm64e
	TARGET = iphone:clang:latest:7.0
endif

INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = GameSkyNoAds

GameSkyNoAds_FILES = Tweak.x
GameSkyNoAds_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
