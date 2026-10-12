```
THEOS_DEVICE_IP = localhost
THEOS_DEVICE_PORT = 2222
ARCHS = arm64
TARGET = iphone:latest:13.0

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = EightBallPoolCheat
EightBallPoolCheat_FILES = Tweak.xm
EightBallPoolCheat_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 8BallPool"