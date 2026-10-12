export THEOS_DEVICE_IP = localhost -p 2222
export TARGET = iphone:clang:latest:8.0
export ARCHS = arm64 arm64e

TWEAK_NAME = EightBallPoolCheat
EightBallPoolCheat_FILES = Tweak.xm
EightBallPoolCheat_FRAMEWORKS = UIKit

include $(THEOS)/makefiles/common.mk
include $(THEOS_MAKE_PATH)/tweak.mk
