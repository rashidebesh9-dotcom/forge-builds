```
SDKVERSION=16.0
TARGET=iphone:clang:14.4:14.0
ARCHS = arm64 arm64e

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = 8BallPoolCheatMenu
8BallPoolCheatMenu_FILES = Tweak.xm
8BallPoolCheatMenu_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk