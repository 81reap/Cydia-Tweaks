include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = SameStatusPreferences
SameStatusPreferences_FILES = SSBRootListController.m
SameStatusPreferences_INSTALL_PATH = /Library/PreferenceBundles
SameStatusPreferences_FRAMEWORKS = UIKit
SameStatusPreferences_PRIVATE_FRAMEWORKS = Preferences

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/SameStatusPreferences.plist$(ECHO_END)
