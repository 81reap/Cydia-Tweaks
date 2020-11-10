include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = SlideToUnlockPreferences
SlideToUnlockPreferences_FILES = STURootListController.m
SlideToUnlockPreferences_INSTALL_PATH = /Library/PreferenceBundles
SlideToUnlockPreferences_FRAMEWORKS = UIKit
SlideToUnlockPreferences_PRIVATE_FRAMEWORKS = Preferences

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/SlideToUnlockPreferences.plist$(ECHO_END)
