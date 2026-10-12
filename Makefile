```
SDKVERSION=13.0
TARGET=iphone:clang:latest:13.0
ARCHS = arm64

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = 8ballPoolCheatMenu
8ballPoolCheatMenu_FILES = Tweak.xm
8ballPoolCheatMenu_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk
after-install::
	install.exec "killall -9 8ballPool"