ARCHS = arm64 armv7s armv7
TARGET = iphone:clang:latest:9.0

TWEAK_NAME = SlideToUnlock
SlideToUnlock_FILES = Tweak.xm
SUBPROJECTS += slidetounlockpreferences

include $(THEOS)/makefiles/common.mk
include $(THEOS_MAKE_PATH)/tweak.mk
include $(THEOS_MAKE_PATH)/aggregate.mk

after-install::
	install.exec "killall -9 SpringBoard"
