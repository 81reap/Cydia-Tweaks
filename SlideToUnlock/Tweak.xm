%hook SBLockScreenView

#include <ifaddrs.h>
#include <arpa/inet.h>

#define PREFERENCES_PATH @"/var/mobile/Library/Preferences/com.hax0rdoge.slidetounlockpreferences.plist"
#define ENABLED_PREF @"slideToUnlockEnabled"
#define IP_PREF @"slideToUnlockIP"
#define TEXT_PREF @"slideToUnlockText"

- (void)setCustomSlideToUnlockText:(id)unlockText {
  NSDictionary *prefs = [[NSDictionary alloc] initWithContentsOfFile:PREFERENCES_PATH];
  NSString *text = [prefs objectForKey: TEXT_PREF];

  if (![[prefs valueForKey: ENABLED_PREF] boolValue]){
    %orig(unlockText);
  }else if ([[prefs valueForKey: IP_PREF] boolValue]){
    NSString *address = @"error";
    struct ifaddrs *interfaces = NULL;
    struct ifaddrs *temp_addr = NULL;
    int success = getifaddrs(&interfaces);

    if (success == 0) {
        temp_addr = interfaces;
        while(temp_addr != NULL) {
            if(temp_addr->ifa_addr->sa_family == AF_INET) {
                if([[NSString stringWithUTF8String:temp_addr->ifa_name] isEqualToString:@"en0"]) {
                    address = [NSString stringWithUTF8String:inet_ntoa(((struct sockaddr_in *)temp_addr->ifa_addr)->sin_addr)];
                }
            }
            temp_addr = temp_addr->ifa_next;
        }
    }

    freeifaddrs(interfaces);
    freeifaddrs(temp_addr);
    %orig(address);
  }else if([text isEqualToString:@""] || text == nil) {
    %orig(unlockText);
  }else if ([[prefs valueForKey: ENABLED_PREF] boolValue]) {
    %orig(text);
  }
}

%end
