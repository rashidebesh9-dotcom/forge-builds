export THEOS_DEVICE_IP = localhost -p 2222
export ARCHS = arm64
export TARGET = iphone:clang:14.4:14.4

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = EightBallPoolCheatMenu
EightBallPoolCheatMenu_FILES = Tweak.xm
EightBallPoolCheatMenu_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk
include $(THEOS_MAKE_PATH)/aggregate.mk
