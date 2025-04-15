TARGET := iphone:clang:latest:14.0
INSTALL_TARGET_PROCESSES = SpringBoard


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = tweaktencentvideo

tweaktencentvideo_FILES = src/Tweak.x src/HomeAd.x src/LaunchAd.x src/VideoDetailAd.x
# tweaktencentvideo_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
