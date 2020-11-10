include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = WebScrollinPreferences
WebScrollinPreferences_FILES = WBSRootListController.m
WebScrollinPreferences_INSTALL_PATH = /Library/PreferenceBundles
WebScrollinPreferences_FRAMEWORKS = UIKit
WebScrollinPreferences_PRIVATE_FRAMEWORKS = Preferences

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/WebScrollinPreferences.plist$(ECHO_END)
