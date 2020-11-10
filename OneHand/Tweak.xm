%hook UIKeyboardLayoutStar

#define PREFERENCES_PATH @"/var/mobile/Library/Preferences/com.hax0rdoge.onehandedpreferences.plist"
#define ENABLED_PREF @"onehandedEnabled"

-(bool)edgeSwipeGestureEnabled {
  NSDictionary *prefs = [[NSDictionary alloc] initWithContentsOfFile:PREFERENCES_PATH];
  return ([[prefs valueForKey: ENABLED_PREF] boolValue]) ? true : %orig ;
}

%end
