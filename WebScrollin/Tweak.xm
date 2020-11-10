%hook UIWebBrowserView
#import <objc/runtime.h>
#define PREFERENCES_PATH @"/var/mobile/Library/Preferences/com.hax0rdoge.webscrollinpreferences.plist"
#define ENABLED_PREF @"webscrollinEnabled"

+ (double)preferredScrollDecelerationFactor {
  NSDictionary *prefs = [[NSDictionary alloc] initWithContentsOfFile:PREFERENCES_PATH];
  return ([[prefs valueForKey: ENABLED_PREF] boolValue]) ? 0.998 : %orig ;
}

%end
