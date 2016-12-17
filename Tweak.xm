%hook SBLockScreenViewController
#define PREFERENCES_PATH @"/var/mobile/Library/Preferences/com.hax0rdoge.samestatuspreferences.plist"
#define ENABLED_PREF @"samestatusEnabled"

- (long long)statusBarStyle {
  NSDictionary *prefs = [[NSDictionary alloc] initWithContentsOfFile:PREFERENCES_PATH];
  return ([[prefs valueForKey: ENABLED_PREF] boolValue]) ? 0.0 : %orig ;
}

%end
