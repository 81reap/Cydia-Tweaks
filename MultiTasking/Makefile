include $(THEOS)/makefiles/common.mk
include $(THEOS_MAKE_PATH)/tweak.mk

TWEAK_NAME = MultiTasking
MultiTasking_FILES = Tweak.xm

after-install::
	install.exec "killall -9 SpringBoard"
