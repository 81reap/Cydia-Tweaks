ARCHS = arm64 armv7s armv7
TARGET = iphone:clang:latest:9.0

TWEAK_NAME = CleanBeats
CleanBeats_FILES = Tweak.xm
SUBPROJECTS += cleanbeatspreferences

include $(THEOS)/makefiles/common.mk
include $(THEOS_MAKE_PATH)/tweak.mk
include $(THEOS_MAKE_PATH)/aggregate.mk

after-install::
	install.exec "killall -9 SpringBoard"
