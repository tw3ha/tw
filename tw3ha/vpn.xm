#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <UIKit/UIControl.h>
#import <Cephei/HBPreferences.h>
#import <spawn.h>
#import <substrate.h>
#import <Twitter/Twitter.h>

%config(generator=internal)


%group POR
// Proxy Master
%hook APMInAppPurchaseItem
- (bool)isFreeTrial {
    return 1;
}
- (void)setFreeTrial:(bool)arg1 {
    arg1 = 1;
    %orig;
}
%end

%hook AbstractPurchaseVC
- (id)freeTrialPeriodForProduct:(id)arg1 {
    return %orig;
}
- (void)purchaseDone:(id)arg1 {
}
%end

%hook VPN_V1VPNConnectViewController
- (id)itemUpgrade {
    return %orig;
}
%end

%hook FIRInstanceID
- (bool)isProductionApp {
    return 1;
}
%end

%hook SubscriptionManager
- (bool)isWatermarkRemoveAdsPurchased {
    return 1;
}
- (bool)isProductPurchased:(id)arg1 {
    return 1;
}
- (bool)isAllMusicTracksUnlocked {
    return 1;
}
- (id)getSubscription:(id)arg1 {
    return %orig;
}
- (bool)isSubscribedOrUnlockedAll {
    return 1;
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"por"] ?: @(NO)) boolValue];

if (Enable) {
%init(POR,VPN_V1VPNConnectViewController = objc_getClass("VPN_V1.VPNConnectViewController"));

}
}

// Hexatech   pro

%group HEX
%hook HSSUser
-(bool) isPremium
{
return true;
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"hex"] ?: @(NO)) boolValue];

if (Enable) {
%init(HEX);

}
}

// soloVPN Vip

%group SOL
%hook SFUserCenter
-(bool) isVip
{
return true;
}
%end

%hook SFVipHelper
-(bool) isVip
{
return true;
}
%end

%hook SFNetworkSpeedBar
-(bool) isVip
{
return true;
}
%end

%hook SFVPNServerArea
-(bool) isVip
{
return true;
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"sol"] ?: @(NO)) boolValue];

if (Enable) {
%init(SOL);

}
}

// Master   pro

%group MAS
%hook ACUserVIPInfo
-(bool) isVIP
{
return true;
}
%end

%hook ACUser
-(bool) isVIP
{
return true;
}

%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"mas"] ?: @(NO)) boolValue];

if (Enable) {
%init(MAS);

}
}

// GetVPN Premium

%group GET
%hook LocationViewController
-(bool) isPremium
{
return true;
}
%end

%hook ViewController
-(bool) isPremium
{
return true;
}

%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"get"] ?: @(NO)) boolValue];

if (Enable) {
%init(GET);

}
}

// FirstVPN Premium

%group FIR

%hook LocationViewController
-(bool) isPremium
{
return true;
}
%end

%hook LeftMenuViewController
-(bool) isPremium
{
return true;
}
%end

%hook ViewController
-(bool) isPremium
{
return true;
}

%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"fir"] ?: @(NO)) boolValue];

if (Enable) {
%init(FIR);

}
}

// Star Premium

%group STA

%hook PCLocationsViewController
-(bool) isPremium
{
return true;
}
%end

%hook PCClient
-(bool) isPremium
{
return true;
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"sta"] ?: @(NO)) boolValue];

if (Enable) {
%init(STA);

}
}

// Proxy Premium

%group OXY

%hook PCLocationsViewController
-(bool) isPremium
{
return true;
}
%end

%hook PCClient
-(bool) isPremium
{
return true;
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"oxy"] ?: @(NO)) boolValue];

if (Enable) {
%init(OXY);

}
}

// Imaginary software hack

// StarMaker

%group STM
%hook SMFeedUser
-(bool) isVip
{
return true;
}

-(long long) vipLevel
{
    return 10;
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"stm"] ?: @(NO)) boolValue];

if (Enable) {
%init(STM);

}
}