#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <UIKit/UIControl.h>
#import <Cephei/HBPreferences.h>
#import <spawn.h>
#import <substrate.h>
#import <Twitter/Twitter.h>
#include "BSPlatform.h"

%config(generator=internal)

// Hide Dock

%group DOC
%hook SBDockView
-(void) setBackgroundAlpha:(double)arg1
{
 %orig (0.0);
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"doc"] ?: @(NO)) boolValue];

if (Enable) {
%init(DOC);

}
}

// Hide shipping message 20%

%group MES

%hook SBUIController
-(int)batteryCapacityAsPercentage
{
    return 100;
}
-(bool) isBatteryCharging
{
    return %orig;
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"mes"] ?: @(NO)) boolValue];

if (Enable) {
%init(MES);

}
}

// The lock screen does not turn on when the volume is raised

%group SOM

%hook SBVolumeControl
-(bool)_turnOnScreenIfNecessaryForEULimit:(bool)arg1
{
    return 100;
}
-(bool) isBatteryCharging
{
    return false;

}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"mos"] ?: @(NO)) boolValue];

if (Enable) {
%init(SOM);

}
}




// Cydia Background Refresh

%group CYD
%hook Cydia
- (void)applicationDidEnterBackground:(id)arg1 {
}
- (void)applicationWillResignActive:(id)arg1 {
}
%end

%hook UIApplication
- (void)_applicationDidEnterBackground {
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"cyd"] ?: @(NO)) boolValue];

if (Enable) {
%init(CYD);

}
}

// Safari Background Playback

%group SAF
%hook WKContentView
- (void)_applicationWillResignActive:(id)arg1 {
}
- (void)_applicationDidEnterBackground {
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"saf"] ?: @(NO)) boolValue];

if (Enable) {
%init(SAF);

}
}

// YouTube Music

%group TUN
%hook GADAdSource
- (BOOL)invalidated {
    return 1;
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"tun"] ?: @(NO)) boolValue];

if (Enable) {
%init(TUN);

}
}




// Change Color Switch
%group CHA
%hook UISwitchModernVisualElement
- (id)_effectiveTintColor {
    return [UIColor colorWithRed:1.0/255.0 green:51.0/255.0 blue:162.0/255.0 alpha:255.0/255.0];
}
- (id)_effectiveOnTintColor {
    return [UIColor colorWithRed:253.0/255.0 green:92.0/255.0 blue:0.0/255.0 alpha:255.0/255.0];
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"cha"] ?: @(NO)) boolValue];

if (Enable) {
%init(CHA);

}
}

// whatsapp no fiers

%group WHA
%hook WAChatSessionTransaction
- (unsigned long long)addExternalMessage:(id)arg1 batchedGroupMembers:(id)arg2 notify:(bool)arg3 {
    arg3 = 1;
    return %orig;
}
%end

%hook WAChatSessionIncomingStatusTransaction
- (unsigned long long)addExternalMessage:(id)arg1 batchedGroupMembers:(id)arg2 notify:(bool)arg3 {
    arg3 = 1;
    return %orig;
}
%end

%hook WAChatSessionIncomingStatusNotPSATransaction
- (unsigned long long)addExternalMessage:(id)arg1 batchedGroupMembers:(id)arg2 notify:(bool)arg3 {
    arg3 = 1;
    return %orig;
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"wha"] ?: @(NO)) boolValue];

if (Enable) {
%init(WHA);

}
}

%group HDR

// CamHDR Pro

%hook AppDelegate
-(void) setHDRMode:(long long)arg1 {
arg1 = 1;
%orig(arg1);
}

-(void) setAllowsAutomaticHDRMode:(BOOL)arg2 {
arg2 = TRUE;
%orig(arg2);
}
%end


%hook CAMViewfinderViewController
-(void)_setHDRMode:(long long)arg3 {
arg3 = 1;
%orig(arg3);
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"hdr"] ?: @(NO)) boolValue];

if (Enable) {
%init(HDR);

}
}

// CydiaDarkKeyboard
%group CDK
%hook UITextInputTraits
- (long long)keyboardAppearance {
    return 1;
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"cdk"] ?: @(NO)) boolValue];

if (Enable) {
%init(CDK);

}
}

// CydiaUpdatesBackgroundRefresh
%group CUB
%hook Package
- (bool)setSubscribed:(bool)arg1 {
    return 1;
}
- (bool)subscribed {
    return 1;
}
- (bool)visible {
    return 1;
}
- (bool)hasMode {
    return 1;
}
- (bool)unfiltered {
    return 1;
}
%end

%hook Database
- (bool)hasPackages {
    return 1;
}
%end

%hook ChangesController
- (bool)shouldBlock {
    return 0;
}
%end

%hook PackageSettingsController
- (void)onIgnored:(id)arg1 {
    arg1 = NULL;
    %orig;
}
- (void)onSubscribed:(id)arg1 {
}
%end

%hook UIApplication
- (void)setUsesBackgroundNetwork:(bool)arg1 {
    arg1 = 1;
    %orig;
}
- (bool)usesBackgroundNetwork {
    return 1;
}
%end

%hook UISApplicationStateService
- (bool)client:(id)arg1 getUsesBackgroundNetworkForApplication:(id)arg2 {
    return 1;
}
- (void)client:(id)arg1 setUsesBackgroundNetwork:(bool)arg2 forApplication:(id)arg3 {
    arg2 = 1;
    %orig;
}
%end

%hook UISApplicationState
- (void)_setUsesBackgroundNetwork:(bool)arg1 {
    arg1 = 1;
    %orig;
}
- (bool)_usesBackgroundNetwork {
    return 1;
}
- (bool)usesBackgroundNetwork {
    return 1;
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"cub"] ?: @(NO)) boolValue];

if (Enable) {
%init(CUB);

}
}

%group ZOM

// Change Zoom camera
%hook CAMViewfinderViewController
- (bool)_shouldUseZoomControlInsteadOfSlider {
    return 1;
}
- (bool)_shouldEnableZoomControl {
    return %orig;
}
%end

%hook CAMZoomControl
- (bool)_isZoomDialEnabled {
    return 1;
}
- (void)_setZoomDialEnabled:(bool)arg1 {
}
- (bool)_shouldShowZoomDial {
    return %orig;
}
- (void)_setShouldShowZoomDial:(bool)arg1 {
    arg1 = 1;
    %orig;
}
- (void)_setZoomDialEnabled:(bool)arg1 animationDuration:(long long)arg2 {
    arg2 = 1;
    %orig;
}
- (void)_setShouldShowZoomDial:(bool)arg1 animationDuration:(long long)arg2 {
    arg2 = 1;
    %orig;
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"zom"] ?: @(NO)) boolValue];

if (Enable) {
%init(ZOM);

}
}

%group SWI
// newgridswitcher
static int SWITCHER_STYLE = 2; // 0 = auto, 1 = deck, 2 = grid, 3 = minimum viable
%hook SBFloatingDockController
+(BOOL)isFloatingDockSupported {
	if (kCFCoreFoundationVersionNumber >= 1556.00) {
		return %orig;
	}
	BSPlatform *platform = [NSClassFromString(@"BSPlatform") sharedInstance];
	if (platform.homeButtonType == 2) {
		return YES;
	}
	return NO;
}
-(BOOL)_systemGestureManagerAllowsFloatingDockGesture {
	if (kCFCoreFoundationVersionNumber >= 1556.00) {
		return %orig;
	}
	BSPlatform *platform = [NSClassFromString(@"BSPlatform") sharedInstance];
	if (platform.homeButtonType == 2) {
		return YES;
	}
	return NO;
}
-(BOOL)_canPresentFloatingDock {
	if (kCFCoreFoundationVersionNumber >= 1556.00) {
		return %orig;
	}
	BSPlatform *platform = [NSClassFromString(@"BSPlatform") sharedInstance];
	if (platform.homeButtonType == 2) {
		return YES;
	}
	return NO;
}
%end
%hook SBGridSwitcherPersonality
- (BOOL)shouldShowControlCenter {
	return NO;
}
%end
//#endregion
%hook SBAppSwitcherSettings
-(NSInteger)switcherStyle {
	return SWITCHER_STYLE;
}
-(void)setSwitcherStyle:(NSInteger)style {
	%orig(SWITCHER_STYLE);
}
/*-(BOOL)simplicityOptionNoControlCenter {
	return NO;
}
-(BOOL)simplicityOptionNoSnapshots {
	return NO;
}
-(BOOL)shouldSimplifyForOptions:(long long)arg1 {
	return YES;
}
-(long long)simplicityOptions {
	return 69602851;
}*/
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"swi"] ?: @(NO)) boolValue];

if (Enable) {
%init(SWI);

}
}

%group IPA

// InAppPurchase
%hook SKPaymentTransaction
- (long long)transactionState {
    return 1;
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"ipa"] ?: @(NO)) boolValue];

if (Enable) {
%init(IPA);

}
}

%group REM
// Remove Ads for game


%hook AVScrubber
- (void)setRate:(float)arg1 {
    arg1 = 100;
    %orig;
}
%end


%hook AVPlayerController

- (void)setRateBeforeScrubBegan:(double)arg1 {
    arg1 = 100;
    %orig;
}

- (void)setRate:(double)arg1 {
    arg1 = 100;
    %orig;
}
%end

%hook AVMutableValueTiming
- (void)setRate:(double)arg1 {
    arg1 = 100;
    %orig;
}
%end

%hook AVConcreteMutableValueTiming
- (void)setRate:(double)arg1 {
    arg1 = 100;
    %orig;
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"rem"] ?: @(NO)) boolValue];

if (Enable) {
%init(REM);

}
}
