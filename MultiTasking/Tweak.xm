@class NSDictionary, NSLock, NSOrderedSet, NSSet, NSString;

@interface SBPlatformController : NSObject
{
	long long _defaultIconInfoOnce;
	NSDictionary *_defaultStarkIconState;
	NSDictionary *_defaultIconState;
	NSOrderedSet *_defaultIconStateDisplayIdentifiers;
	NSLock *_iconStateDisplayIdentifiersLock;
	NSSet *_iconStateDisplayIdentifiers;
	NSString *_localizedDeviceName;
	_Bool _hasGasGauge;
	_Bool _supportsOpenGLES2;
	_Bool _internalInstall;
	_Bool _carrierInstall;
	_Bool _singleCoreDevice;
	_Bool _isH4Device;
	_Bool _starkDevice;
	_Bool _medusaDevice;
	_Bool _supportsAllMedusaFeatures;
}

+ (id)uniqueDeviceIdentifier;
+ (id)deviceClass;
+ (id)productType;
+ (id)hardwareModel;
+ (id)systemBuildVersion;
+ (id)sharedInstance;
- (void)_visibleIdentifiersChanged:(id)arg1;
- (void)_loadDefaultIconInfoIfNecessary;
- (_Bool)supportsAllMedusaFeatures;
- (_Bool)isMedusaDevice;
- (_Bool)isStarkDevice;
- (_Bool)isH4Device;
- (_Bool)isSingleCoreDevice;
- (_Bool)isDeveloperInstall;
- (_Bool)isCarrierInstall;
- (_Bool)isInternalInstall;
- (_Bool)supportsOpenGLES2;
- (_Bool)hasGasGauge;
- (id)localizedPlatformName;
- (id)iconStateDisplayIdentifiers;
- (void)registerForIconVisibilityChanges;
- (id)defaultIconStateDisplayIdentifiers;
- (id)defaultStarkIconState;
- (id)defaultIconState;
- (void)dealloc;
- (id)init;

@end

%hook SBPlatformController
- (id)init
{
	SBPlatformController *r = %orig();

	[r setValue:[NSNumber numberWithBool:YES] forKey:@"_supportsAllMedusaFeatures"];

	return r;
}

%end
