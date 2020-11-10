include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = OneHandedPreferences
OneHandedPreferences_FILES = HNDRootListController.m
OneHandedPreferences_INSTALL_PATH = /Library/PreferenceBundles
OneHandedPreferences_FRAMEWORKS = UIKit
OneHandedPreferences_PRIVATE_FRAMEWORKS = Preferences

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/OneHandedPreferences.plist$(ECHO_END)
