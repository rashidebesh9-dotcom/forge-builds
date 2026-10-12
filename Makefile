export THEOS_DEVICE_IP = localhost -p 2222
export TARGET = iphone:clang:14.5:14.0
export ARCHS = arm64 arm64e
export DEBUG = 0
export FINALPACKAGE = 1

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = EightBallPoolCheatMenu
EightBallPoolCheatMenu_FILES = Tweak.xm
EightBallPoolCheatMenu_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 8 Ball Pool"