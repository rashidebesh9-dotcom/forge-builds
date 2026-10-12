```
SDKVERSION=13.0
TARGET=iphone:clang:$(SDKVERSION)

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = 8ballPoolCheat
8ballPoolCheat_FILES = Tweak.xm
8ballPoolCheat_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk