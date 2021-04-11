#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <UIKit/UIControl.h>
#import <Cephei/HBPreferences.h>
#import <spawn.h>
#import <substrate.h>
#import <Twitter/Twitter.h>
#include "BSPlatform.h"


%config(generator=internal)

// Enable Software service PRO - VIP

%group ENT
// Enlight QuickShot Pro

%hook BZRStore
- (bool)isUserSubscribed {
    return 1;
}
%end

%hook OWLExportModel
- (bool)isSubscribed {
    return 1;
}
- (void)setupIsSubscribed {
}
%end

%hook BZRReceiptInfo
- (bool)wasProductPurchased:(id)arg1 {
    return 1;
}
%end

%hook SPXGroupBasedProductAxisFreeTrialDuration
- (id)oneYearTrial {
    return %orig;
}
%end


%hook OWLUserSubscriptionStateProvider
- (bool)isSubscriber {
    return 1;
}
%end

%hook SPXRestorePurchasesEvent
- (bool)isSubscriber {
    return 1;
}
%end

%hook FTSubscriptionSessionState
- (bool)isSubscriber {
    return 1;
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"ipa"] ?: @(NO)) boolValue];

if (Enable) {
%init(ENT);

}
}



%group CCS

// CCSoft Pro


%hook are
- (bool)isAllInOneSubscribed {
    return 1;
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"ccs"] ?: @(NO)) boolValue];

if (Enable) {
%init(CCS, are = objc_getClass("FollowersToolForInstagram.ReceiptManager"));
}
}


%group CCO

// Iconic Pro


%hook IAPManager
- (bool)hasPurchased:(id)arg1 {
    return 1;
}
%end

%hook Singleton
- (void)setIsPurchased:(bool)arg1 {
    arg1 = 1;
    %orig;
}
- (bool)isPurchased {
   return 1;
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"cco"] ?: @(NO)) boolValue];

if (Enable) {
%init(CCO);
}
}

%group TTV

// Instasize Photo Editor + Video Pro
%hook Package
- (bool)isPurchased {
    return 1;
}
%end

%hook Package
- (void)setIsPurchased:(bool)arg1 {
    arg1 = 1;
    %orig;
}
%end

%hook FilterPackage
- (bool)isPurchased {
    return 1;
}
%end

%hook TextStylePackage
- (bool)isPurchased {
    return 1;
}
%end

%hook PackageCache
- (bool)featuredFilterPackageIsPurchased {
    return 1;
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"ttv"] ?: @(NO)) boolValue];

if (Enable) {
%init(TTV);
}
}

%group TIK

// TikSave Pro


%hook SalesManager
- (bool)isProductPurchased:(id)arg1 {
    return 1;
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"tik"] ?: @(NO)) boolValue];

if (Enable) {
%init(TIK);
}
}

%group CPU

// Mobile Master-CPU Master Pro



%hook RMStoreKeychainPersistence
- (bool)isPurchasedProductOfIdentifier:(id)arg1 {
    return 1;
}
%end

%hook RMStoreUserDefaultsPersistence
- (bool)isPurchasedProductOfIdentifier:(id)arg1 {
    return 1;
}
%end

%hook RMAppReceiptIAP
- (bool)isActiveAutoRenewableSubscriptionForDate:(id)arg1 {
    return 1;
}
- (bool)containsInAppPurchaseOfProductIdentifier:(id)arg1 {
    return 1;
}
- (bool)containsActiveAutoRenewableSubscriptionOfProductIdentifier:(id)arg1 forDate:(id)arg2 {
    return 1;
}
%end

%hook MarsSettings
- (bool)isVIP {
    return 1;
}
%end

%hook APMInAppPurchaseItem
- (bool)isFreeTrial {
    return 1;
}
%end

%hook APMRemoteConfig
- (bool)isIAPSubscriptionEventsEnabled {
    return 1;
}
- (bool)parsePurchaseDataEnabled {
    return 1;
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"cpu"] ?: @(NO)) boolValue];

if (Enable) {
%init(CPU);
}
}

%group BRR
// Airbrush
%hook UMONPromoMetaData
- (bool)isPremium {
    return 1;
}
- (bool)isExpired {
    return 1;
}
- (void)setPremiumProduct:(id)arg1 {
}
- (id)premiumProduct {
    return %orig;
}
%end

%hook AirBrushFilterDownloadCollectionViewCell
- (void)setPremiumFilterIndicator:(id)arg1 {
}
- (id)premiumFilterIndicator {
    return %orig;
}
%end

%hook BeautyModuleCell
- (void)setIsProFeature:(bool)arg1 purchased:(bool)arg2 {
    arg1 = 1;
    arg2 = 1;
    %orig;
}
%end

%hook FNFThreadSafePlayerFramesBuffer
- (bool)isFull {
    return 1;
}
%end

%hook FNFPlayerFramesBuffer
- (bool)isFull {
    return 1;
}
%end

%hook RLMResults
- (id)subscribe {
    return %orig;
}
%end

%hook AWSCognito
- (id)subscribeAll {
    return %orig;
}
- (id)subscribe:(id)arg1 {
    return %orig;
}
%end

%hook AWSCognitoDataset
- (id)subscribe {
    return %orig;
}
%end

%hook AirBrushABIAPManager
- (bool)userSubscribed {
    return 1;
}
- (void)setUserSubscribed:(bool)arg1 {
    arg1 = 1;
    %orig;
}
- (bool)isItemUnlocked:(unsigned long long)arg1 {
    return 1;
}
%end

%hook BeautyCenterFeatureModel
- (void)setNeedSubscribed:(bool)arg1 {
}
- (bool)needSubscribed {
    return %orig;
}
%end


%hook MTGLController
- (void)setSubscribers:(id)arg1 {
}
- (id)subscribers {
    return %orig;
}
%end

%hook UMONPromoMetaDataBuilder
- (id)premiumProduct {
    return %orig;
}
- (void)setPremiumProduct:(id)arg1 {
}
%end

%hook AirBrushABPremiumFeature
- (id)initWithFeatureName:(id)arg1 secondaryFeatureName:(id)arg2 featureType:(long long)arg3 featureTypeString:(id)arg4 categoryTypeString:(id)arg5 videoName:(id)arg6 videoThumbnail:(id)arg7 previewImages:(id)arg8 introduction:(id)arg9 {
    return %orig;
}
%end

%hook MyKitFeatureManager
- (void)removeUnlockedPremiumFeatures {
}
%end

%hook ABPremiumHintView
- (id)timer {
    return %orig;
}
- (id)containerView {
    return %orig;
}
- (void)setContainerView:(id)arg1 {
}
- (void)setTimer:(id)arg1 {
}
%end

%hook ABCameraControlView
- (id)premiumHintView {
    return %orig;
}
- (void)setPremiumHintView:(id)arg1 {
}
%end

%hook BeautyBaseViewController
- (void)setUsingPremiumFeature:(bool)arg1 {
    arg1 = 1;
    %orig;
}
- (bool)usingPremiumFeature {
    return 1;
}
%end

%hook FIRInstanceID
- (bool)isProductionApp {
    return 1;
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"brr"] ?: @(NO)) boolValue];

if (Enable) {
%init(BRR, AirBrushFilterDownloadCollectionViewCell = objc_getClass("AirBrush.FilterDownloadCollectionViewCell"),
        AirBrushABIAPManager = objc_getClass("AirBrush.ABIAPManager"),
        AirBrushABPremiumFeature = objc_getClass("AirBrush.ABPremiumFeature"));
}
}

%group UIS

// CuteCut Pro

%hook AppDelegate
-(bool) proPurchased
{
    return true;
}
-(bool) isProUpgradePurchased
{
    return true;
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"smx"] ?: @(NO)) boolValue];

if (Enable) {
%init(UIS);

}
}
%group VIP
%hook ACUserVIPInfo
-(bool) isVIP
{
    return true;
}
%end

%hook VipHelper
+(bool) isVIP
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
bool Enable = [([Key objectForKey:@"twh"] ?: @(NO)) boolValue];

if (Enable) {
%init(VIP);

}
}

// VivaVideo Pro

%group UIS2
%hook XYVivaCommunityWebHander
-(bool) userIsVip {
    return true;
}

%end

%hook XYVivaIAPModuleServicelmpl
-(bool) xy_isVIP {
    return true;
}

%end

%hook XYVipPagrTools
-(bool) isVipPurchasePageNew:(unsigned long long)arg1 {
    return true;
}

%end

%hook XYIAPSubscribeClient
-(bool) xy_isVipCanBind {
    return true;
}

%end

%hook XYIAPReceipResult
-(bool) isVip {
    return true;
}
-(bool) isVipGold {
    return true;
}
-(void) setIsVip:(bool)arg1 {
    arg1 = TRUE;
}
-(bool) xy_isVipMember {
    return true;
}
-(void) setIsVipGold:(bool)arg1 {
    arg1 = TRUE;
}
%end

%hook XYIAPMgr
-(bool) xy_isVipCanBind {
    return true;
}
-(bool) xy_isVipNeedUpgrade {
    return true;
}
-(bool) xy_isVipGolg {
    return true;
}
-(bool) isVip {
    return true;
}
-(bool) isVIPProduct:(id)arg1 {
    return true;
}
-(bool) xy_isVipPlatinum {
    return true;
}
-(bool) xy_isVipStatusAvailable:(unsigned long long)arg1 {
    return true;
}
-(bool) xy_isVipNoARSAvailable:(unsigned long long)arg1 {
    return true;
}
%end
%hook XYCreatorTemplateModel
-(bool) isVip {
    return true;
}
%end

%hook XYItemBarListView
-(void) setIsVip:(bool)arg1 {
    arg1 = true;
}
-(bool) isVipAutoFlag {
    return true;
}
-(void) openCell:(unsigned long long)arg1 isVipAutoFlag:(bool)arg2 {
    return %orig (arg1, TRUE);
}
-(void) setIsVipAutoFlag:(bool)arg1 {
    arg1 = true;
}
%end

%hook XYVivaHomePageHeaderView
-(void) setIsVip:(bool)arg1 {
    arg1 = true;
}
-(bool) isVip {
    return true;
}
%end

%hook XYVivaHomePageVIPView
-(void) updateInterfaceWithIsVip:(bool)arg1 {
    arg1 = true;
}
%end

%hook XYVIPRenewPrivilegeCollection
-(void) updatIsVIP:(bool)arg1 {
    arg1 = true;
}
%end

%hook XYUserLevelVIPView
-(bool) isVIP {
    return true;
}
-(void) setIsVip:(bool)arg1 {
    arg1 = TRUE;
}
%end

%hook XYExportTools
-(id) exportActionSheetItemArray:(bool)arg1 enable1080p:(bool)arg2 enableGIF:(bool)arg3 isVip:(bool)arg4 {
    return %orig (TRUE, TRUE, TRUE, TRUE);
}
%end

%hook XYCreatorDetailContentView
-(void) updateCoinNum:(id)arg1 isVip:(bool)arg2 isCommodity:(bool)arg3 {
     return %orig (arg1, TRUE, TRUE);
}
%end

%hook XYProfileVipView
-(void) updateInterfaceWithIsVip:(bool)arg1 {
     arg1 = TRUE;
}
%end

%hook XYCreatorDetailCell
-(void) updateCoinNum:(id)arg1 isVip:(bool)arg2 isCommodity:(bool)arg3 {
     return %orig (arg1, TRUE, TRUE);
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"ios"] ?: @(NO)) boolValue];

if (Enable) {
%init(UIS2);

}
}

// VivaStar Pro
%group SAW
%hook StoreModel
-(bool) ownsSubscription:(id)arg1
{
    return true;
}
- (void)application:(id)application didFinishLaunchingWithOptions:(id)arg1 {
    %orig();
    if ([[NSUserDefaults standardUserDefaults] boolForKey:@"alertShownOnce"] == NO) {
        /* Alert view start */
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Unlock Pro version" message:@"Tweaked by 1_lj6 - game_hacker080 -UAE_TECH" delegate:nil cancelButtonTitle: @"Thank You" otherButtonTitles: nil];
        [alert show];
        /* Alert View End */
        [[NSUserDefaults standardUserDefaults] setBool:YES forKey:@"alertShownOnce"];
        [[NSUserDefaults standardUserDefaults] synchronize];
    }
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"saw"] ?: @(NO)) boolValue];

if (Enable) {
%init(SAW);
}
}

// InShot Pro

%group SHO
%hook UserSetting
-(bool) adWatermarkRemoved
{
    return true;
}
-(void) setAdWatermarkRemoved:(bool)arg1
{
    arg1 = true;
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"sho"] ?: @(NO)) boolValue];

if (Enable) {
%init(SHO);

}
}

// KineMaster Pro

%group KIN
%hook AssetStoreAssetPackageItem
-(bool) canUsePremiumAssets
{
    return true;
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"kin"] ?: @(NO)) boolValue];

if (Enable) {
%init(KIN);

}
}

// perfectVideo Pro

%group PER
%hook TConfig
-(bool) isPro
{
    return true;
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"per"] ?: @(NO)) boolValue];

if (Enable) {
%init(PER);

}
}

// FancyKey pro

%group FAN
%hook StoreHelper
-(bool) isSuperVIP
{
    return true;
}
-(bool) isVIP
{
    return true;
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"fan"] ?: @(NO)) boolValue];

if (Enable) {
%init(FAN);

}
}

// Background Eraser pro

%group BAN
%hook ShareViewController
- (void)setBackgroundFalg:(bool)arg1
{
    arg1 = 0;
    %orig;
}
%end
%hook GADAd
- (bool)shouldLoadAdHTML {
    return 0;
}
%end

%hook GADDevice
- (bool)isJailbroken {
    return 0;
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"ban"] ?: @(NO)) boolValue];

if (Enable) {
%init(BAN);

}
}

// Photo Stitch Max pro

%group PHO

%hook DDPurchase
- (bool) isProductPurchased:(id)arg1
{
    return true;
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"pho"] ?: @(NO)) boolValue];

if (Enable) {
%init(PHO);

}
}

// OrNET Browser pro

%group ORN
%hook UserDefault
-(bool) isPremium
{
return true;
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"orn"] ?: @(NO)) boolValue];

if (Enable) {
%init(ORN);

}
}


//المصمم  pro

%group MSM
%hook MKStoreKit
-(bool) isProductPurchased
{
return true;
}
%end
%hook APMRemoteConfig
-(bool)isPropertyFilterResultBundleTimestampEnabled {
    return %orig;
}
%end

%hook MKStoreKit
-(bool)isProductPurchased:(id)arg1 {
    return %orig;
}
%end

%hook APMInAppPurchaseItem
-(bool)isFreeTrial {
    return %orig;
}
%end

%hook APMIdentity
-(bool)isFromAppStore {
    return %orig;
}
%end

%hook APMInAppPurchaseItem
-(void)setFreeTrial:(bool)arg1 {
    return %orig;
}
%end

%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"msm"] ?: @(NO)) boolValue];

if (Enable) {
%init(MSM);

}
}



// DraftCode PHP   pro

%group PHP
%hook LDSettingsViewController
-(void) setPhp7Switch:(id)arg1
{
return %orig;
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"php"] ?: @(NO)) boolValue];

if (Enable) {
%init(PHP);

}
}

// Mixoo pro

%group MIX

%hook PCIAPManager
-(bool) hasPurchased:(id)arg
{
return true;
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"mix"] ?: @(NO)) boolValue];

if (Enable) {
%init(MIX);

}
}


// move video pro

// MediaBox vip
%group MOV
%hook DiscoverViewController
-(void) vip
{
    return;
}
%end
%hook MoresViewController
-(void) vip
{
    return;
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"mov"] ?: @(NO)) boolValue];

if (Enable) {
%init(MOV);

}
}

%group S90

// 90S Pro
%hook HGYProManager
-(bool) isProMember {
    return true;
}
%end
%hook TGYProManger
-(bool) isProMember
{
return true;
}
%end

%hook GADDevice
-(bool) jailbroken
{
return false;
}
%end

%hook YWLightUMUtil
-(bool) isJailBreak
{
return false;
}
%end

%hook ANSMetata
-(bool) isJailbroken
{
return false;
}

-(bool) computeIsJailbroken
{
return false;
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"s90"] ?: @(NO)) boolValue];

if (Enable) {
%init(S90);

}
}
%group MMO

// Move Pro
%hook VIPManager
-(bool) isVIP
{
return true;
}
%end

%hook GADDevice
-(bool) jailbroken
{
return false;
}
%end

%hook ANSMetata
-(bool) isJailbroken
{
return false;
}

-(bool) computeIsJailbroken
{
return false;
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"mmo"] ?: @(NO)) boolValue];

if (Enable) {
%init(MMO);

}
}

// mixgram   pro

%group MXX
%hook MGStoreModelController
-(bool) isSubscriptionActive
{
return true;
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"mxx"] ?: @(NO)) boolValue];

if (Enable) {
%init(MXX);

}
}

// Slidebox   pro

%group SLI
%hook SBXAppStoreModel
-(bool) hasFullVersionPurchase
{
return true;
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"sli"] ?: @(NO)) boolValue];

if (Enable) {
%init(SLI);

}
}

// planes live

%group PLA
%hook AFRSubscriptionManager
-(bool) isSubscribed
{
return true;
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"pla"] ?: @(NO)) boolValue];

if (Enable) {
%init(PLA);

}
}

// Cleaner

%group CLE
%hook IAP
-(bool)isPro {
    return 1;
}
%end

%hook IAP
-(bool)isAnyProductPurchased {
    return 1;
}
%end

%hook IAP
-(bool)canMakePurchases {
    return 1;
}
%end

%hook IAP
-(bool)hasPurchasedProducts {
    return 1;
}
%end

%hook IAP
-(bool)hasRestoredProducts {
    return %orig;
}
%end

%hook IAP
-(bool)isProductPurchasedWithType:(unsigned long long)arg1 {
    return 1;
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"cle"] ?: @(NO)) boolValue];

if (Enable) {
%init(CLE);

}
}

// Face Swap App
%group FAC
%hook RemoveAdsVC
-(bool) isPurchasedUnlockAll
{
return true;
}
%end
%hook SuperViewController
-(bool) isPurchasedUnlockPro
{
return true;
}
-(bool) isPurchasedUnlockAll
{
return true;
}
%end
%hook InAppPurchaseView
-(bool) isPurchasedUnlockAll
{
return true;
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"fac"] ?: @(NO)) boolValue];

if (Enable) {
%init(FAC);

}
}

// Youtube Play Background

%group YPB
%hook YTIPlayabilityStatus
-(bool) isPlayblelnBackground
{
return true;
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"ypb"] ?: @(NO)) boolValue];

if (Enable) {
%init(YPB);

}
}

// AnimeGT Pro

%group ANI
%hook GADAdSource
- (BOOL)invalidated {
    return 1;
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"ani"] ?: @(NO)) boolValue];

if (Enable) {
%init(ANI);

}
}

// SoundCloud Pro
%group UNU
%hook TrackMetaDataEntity
- (BOOL)isOfflineSyncFeatureEnabled {
    return 1;
}
%end

%hook UserFeaturesService
- (BOOL)isOfflineSyncFeatureEnabled {
    return 1;
}
- (BOOL)isOfflineSyncEnabled {
    return 1;
}
- (void)disableOfflineSync {
}
- (BOOL)isKruxEnabled {
    return 1;
}
- (BOOL)isDevelopmentMenuEnabled {
    return 1;
}
- (BOOL)shouldRequestAds {
    return 0;
}
- (BOOL)isHQAudioFeatureEnabled {
    return 1;
}
%end

%hook OfflineSyncConfigurationDataSource
- (BOOL)isOfflineSyncFeatureEnabled {
    return 1;
}
- (BOOL)isOfflineSyncEnabled {
    return 1;
}
%end

%hook OfflineBaseService
- (BOOL)isOfflineSyncFeatureEnabled {
    return 1;
}
%end

%hook AdDownloader
- (BOOL)shouldRequestAds {
    return 0;
}
%end

%hook MobileApiUser
- (BOOL)isPro {
    return 1;
}
- (void)setIsPro:(BOOL)arg1 {
    arg1 = 1;
    %orig;
}
%end

%hook UserSocialRelationshipModel
- (BOOL)isPro {
    return 1;
}
- (void)setIsPro:(BOOL)arg1 {
    arg1 = 1;
    %orig;
}
%end

%hook SearchUser
- (BOOL)isPro {
    return 1;
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"unu"] ?: @(NO)) boolValue];

if (Enable) {
%init(UNU);

}
}

// Plex Pro

%group PLE
%hook PMPlexIAPManager
- (BOOL)hasBeenPurchasedUnlockLimitedPlayback {
    return 1;
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"ple"] ?: @(NO)) boolValue];

if (Enable) {
%init(PLE);

}
}

// Memorado Pro

%group MEM
%hook XBMCController
- (void)enterBackground {
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"kod"] ?: @(NO)) boolValue];

if (Enable) {
%init(MEM);

}
}

// Kodi Pro

%group KOD


%hook DebugPremiumValidatorPreferences
- (BOOL)isPremium {
    return 1;
}
- (void)setIsPremium:(BOOL)arg1 {
    arg1 = 1;
    %orig;
}
%end

%hook WorkoutCalendarCell
- (void)configureForHomeWithWorkoutResults:(id)arg1 andDate:(id)arg2 userIsPremium:(BOOL)arg3 {
    arg3 = 1;
    %orig;
}
- (void)configureWithWorkoutResults:(id)arg1 andDate:(id)arg2 userIsPremium:(BOOL)arg3 {
    arg3 = 1;
    %orig;
}
- (void)setIconWithWorkoutResults:(id)arg1 assetPrefix:(id)arg2 andDate:(id)arg3 userIsPremium:(BOOL)arg4 {
    arg4 = 1;
    %orig;
}
%end

%hook PremiumTypeChecker
+ (BOOL)isPremiumForPremiumType:(int)arg1 {
    return 1;
}
%end

%hook PremiumStatusService
- (BOOL)isPremiumForType:(int)arg1 {
    return 1;
}
- (BOOL)premium {
    return 1;
}
- (void)setPremium:(BOOL)arg1 {
    arg1 = 1;
    %orig;
}
%end

%hook GamesService
- (id)gameSessionForSceneName:(id)arg1 andIsPremium:(BOOL)arg2 {
    arg2 = 1;
    return %orig;
}
%end

%hook RelaxTipData
- (BOOL)isPremium {
    return 1;
}
- (void)setIsPremium:(BOOL)arg1 {
    arg1 = 1;
    %orig;
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"mem"] ?: @(NO)) boolValue];

if (Enable) {
%init(KOD);

}
}

// JioSaavn Pro

%group JIO
%hook UserData
- (void)setProStatus:(BOOL)arg1 {
    arg1 = 1;
    %orig;
}
- (void)setFreemiumStatus:(BOOL)arg1 {
    arg1 = 0;
    %orig;
}
- (BOOL)skipLimitReached {
    return 0;
}
- (BOOL)isPro {
    return 1;
}
- (void)setIsPro:(BOOL)arg1 {
    arg1 = 1;
    %orig;
}
- (BOOL)isFreemium {
    return 0;
}
- (void)setIsFreemium:(BOOL)arg1 {
    arg1 = 0;
    %orig;
}
%end

%hook PaywallManager
+ (BOOL)isProRowUser {
    return 1;
}
%end

%hook DownloadingSongsVC
- (BOOL)areDownloadsBlocked {
    return 0;
}
%end

%hook SubscriptionManager
- (BOOL)isUserDormant {
    return 0;
}
- (BOOL)canOfferFreeTrial {
    return 0;
}
- (BOOL)isUserAnyPro {
    return 1;
}
- (BOOL)isSubscriptionPrimeProduct {
    return 1;
}
%end

%hook MediaCell
- (BOOL)isUnavailableReuseId {
    return 0;
}
- (BOOL)isUnavailable {
    return 0;
}
- (void)setIsUnavailable:(BOOL)arg1 {
    arg1 = 0;
    %orig;
}
%end

%hook AlbumVC
- (BOOL)isUnavailable {
    return 0;
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"jio"] ?: @(NO)) boolValue];

if (Enable) {
%init(JIO);

}
}

// Infuse 6 Pro

%group INF
%hook FCInAppPurchaseServiceMobile
- (BOOL)hasValidReceipt {
    return 1;
}
- (BOOL)isFeaturePurchased:(int64_t)arg1 tillDate:(id *)arg2 {
    return 1;
}
%end

%hook FCInAppPurchaseServiceDummy
- (BOOL)hasValidReceipt {
    return 1;
}
- (BOOL)isFeaturePurchased:(int64_t)arg1 tillDate:(id *)arg2 {
    return 1;
}
%end

%hook FCInAppPurchaseServiceBase
- (BOOL)hasValidReceipt {
    return 1;
}
- (BOOL)isFeaturePurchased:(int64_t)arg1 tillDate:(id *)arg2 {
    return 1;
}
- (BOOL)isFeaturePurchased:(int64_t)arg1 {
    return 1;
}
%end

%hook FCInAppPurchaseServiceFullPro
- (BOOL)hasValidReceipt {
    return 1;
}
- (BOOL)isFeaturePurchased:(int64_t)arg1 tillDate:(id *)arg2 {
    return 1;
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"inf"] ?: @(NO)) boolValue];

if (Enable) {
%init(INF);

}
}

// Audiomack Pro
%group AUD
%hook GADAdSource
- (BOOL)invalidated {
    return 1;
}
%end

%hook ALInterstitialAd
- (void)initWithSdk:(id)arg1 {
}
%end

%hook ClassOne
- (BOOL)isPremium {
    return 1;
}
%end

%hook ClassTwo
- (BOOL)isPremium {
    return 1;
}
%end

%hook ClassThree
- (void)didTapEqualizer:(id)arg1 {
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"aud"] ?: @(NO)) boolValue];

if (Enable) {
%init(AUD, ClassOne = objc_getClass("audiomack_iphone.AMUserRepository"), ClassTwo = objc_getClass("audiomack_iphone.PremiumRepository"), ClassThree = objc_getClass("audiomack_iphone.AMSettingsViewController"));
}
}

// Bear Pro

%group BEA
%hook SFNotesActionsItem
- (BOOL)isPro {
    return 1;
}
- (void)setIsPro:(BOOL)arg1 {
    arg1 = 1;
    %orig;
}
%end

%hook SFNotesPreferenceManager
- (BOOL)isProSubscriptionValid {
    return 1;
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"bea"] ?: @(NO)) boolValue];

if (Enable) {
%init(BEA);

}
}


// Boom Pro

%group BOM
%hook ISBaseManager
- (BOOL)isPremium:(id)arg1 {
    return 1;
}
- (BOOL)isPremiumAvailable {
    return 1;
}
%end

%hook UMONPromoMetaData
- (BOOL)isExpired {
    return 0;
}
- (BOOL)isPremium {
    return 1;
}
%end

%hook ClassOne
- (BOOL)hasPurchasedPass {
    return 1;
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"bom"] ?: @(NO)) boolValue];

if (Enable) {
%init(BOM, ClassOne = objc_getClass("Boom.AppStateManager"));

}
}

// Eve Pro

%group EVE
%hook ForumTopic
- (BOOL)isPremiumOnly {
    return 0;
}
%end

%hook ForumUser
- (BOOL)isPremium {
    return 1;
}
- (void)setIsPremium:(BOOL)arg1 {
    arg1 = 1;
    %orig;
}
%end

%hook GLChatRequestViewController
- (BOOL)isPremium {
    return 1;
}
- (void)setIsPremium:(BOOL)arg1 {
    arg1 = 1;
    %orig;
}
%end

%hook GLSKUserPlanStatus
- (BOOL)isActive {
    return 1;
}
- (BOOL)isRenewable {
    return 0;
}
- (BOOL)user:(int)arg1 hasActivePlan:(id)arg2 {
    return 1;
}
- (BOOL)isPremiumUser:(int)arg1 {
    return 1;
}
- (BOOL)isCurrentUserPremium {
    return 1;
}
%end

%hook LXUser
- (BOOL)isPremium {
    return 1;
}
- (BOOL)isPremiumOrBoughtAlc:(id)arg1 {
    return 1;
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"eve"] ?: @(NO)) boolValue];

if (Enable) {
%init(EVE);

}
}

// Glow Pro

%group GLO
%hook User
- (BOOL)isPremium {
    return 1;
}
%end

%hook DailyArticle
- (BOOL)isPremiumChargedArticle {
    return 0;
}
%end

%hook ForumTopic
- (BOOL)isPremiumOnly {
    return 0;
}
%end

%hook ForumUser
- (BOOL)isPremium {
    return 1;
}
- (void)setIsPremium:(BOOL)arg1 {
    arg1 = 1;
    %orig;
}
%end

%hook GLChatRequestViewController
- (BOOL)isPremium {
    return 1;
}
- (void)setIsPremium:(BOOL)arg1 {
    arg1 = 1;
    %orig;
}
%end

%hook GLSKUserPlanStatus
- (BOOL)isActive {
    return 1;
}
- (BOOL)isRenewable {
    return 0;
}
- (BOOL)user:(int)arg1 hasActivePlan:(id)arg2 {
    return 1;
}
- (BOOL)isPremiumUser:(int)arg1 {
    return 1;
}
- (BOOL)isCurrentUserPremium {
    return 1;
}
%end

%hook LXUser
- (BOOL)isPremium {
    return 1;
}
- (BOOL)isPremiumOrBoughtAlc:(id)arg1 {
    return 1;
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"glo"] ?: @(NO)) boolValue];

if (Enable) {
%init(GLO);

}
}

// Psiphon Pro

%group PSN
%hook IAPStoreHelper
+ (BOOL)hasActiveSubscriptionForNowOnBlock:(id)arg1 {
    return 1;
}
+ (BOOL)hasActiveSubscriptionForNow {
    return 1;
}
+ (BOOL)hasActiveSubscriptionForDate:(id)arg1 {
    return 1;
}
+ (BOOL)hasActiveSubscriptionForDate:(id)arg1 getExpiryDate:(id *)arg2 {
    return 1;
}
+ (BOOL)hasActiveSubscriptionForDate:(id)arg1 inDict:(id)arg2 getExpiryDate:(id *)arg3 {
    return 1;
}
%end

%hook SettingsViewController
- (BOOL)hasActiveSubscription {
    return 1;
}
- (void)setHasActiveSubscription:(BOOL)arg1 {
    arg1 = 1;
    %orig;
}
%end

%hook IAPViewController
- (BOOL)hasActiveSubscription {
    return 1;
}
- (void)setHasActiveSubscription:(BOOL)arg1 {
    arg1 = 1;
    %orig;
}
%end

%hook SubscriptionData
- (BOOL)hasActiveSubscriptionForNow {
    return 1;
}
- (BOOL)hasActiveAuthorizationForDate:(id)arg1 {
    return 1;
}
%end

%hook PsiCashClientModel
- (BOOL)hasActiveSpeedBoostPurchase {
    return 1;
}
%end

%hook InnerMeterView
- (BOOL)speedBoosting {
    return 1;
}
- (void)setSpeedBoosting:(BOOL)arg1 {
    arg1 = 1;
    %orig;
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"psn"] ?: @(NO)) boolValue];

if (Enable) {
%init(PSN);

}
}



%group CAM

// CamScanner VIP

%hook EDAMAccounting
-(id) premiumServiceStart {
return [NSNumber numberWithInteger:1];
}

-(void) setPremiumServiceStart:(id)arg1 {
arg1 = [NSNumber numberWithInteger:1];
return %orig;
}
%end

%hook CSAccountSettingViewController
-(bool) isPremiumAccount {
return TRUE;
}

-(void) setIsPremiumAccount:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook CSSettings
+(bool) isPremiumFeatureAvailable {
return TRUE;
}

-(void) setIsPremiumFeatureAvailable:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook ENSession
-(bool) isPremiumUser {
return TRUE;
}

-(void) setIsPremiumUser:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(bool) isBusinessUser {
return TRUE;
}
%end

%hook CSDataCenter
+(bool) isPremiumAccount {
return TRUE;
}

-(void) setIsPremiumAccount:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

+(bool) isPaidVersion {
return TRUE;
}

-(bool) isUpgradeUser {
return TRUE;
}

-(void) setIsUpgradeUser:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

+(bool) isPurchasedAccount {
return TRUE;
}
%end

%hook CamScannerViewController
-(bool) isPremiumAccount {
return TRUE;
}

-(void) setIsPremiumAccount:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook CSSubscribeDetailViewController
-(bool) purchaseFinished {
return TRUE;
}

-(void) setPurchaseFinished:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook HTTPAuthenticationRequest
-(bool) isBasic {
return FALSE;
}
%end

%hook DBUSERCOMMONAccountType
-(bool) isBasic {
return FALSE;
}

-(bool) isPro {
return FALSE;
}



-(bool) isEqualToAccountType {
return TRUE;
}

-(bool) isBusiness {
return TRUE;
}
%end

%hook WBEngine
-(bool) isUserExclusive {
return TRUE;
}

-(void) setIsUserExclusive:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook EDAMPremiumInfo
-(id) premiumExpirationDate {
return [NSNumber numberWithInteger:1];
}

-(void) setPremiumExpirationDate:(id)arg1 {
arg1 = [NSNumber numberWithInteger:1];
return %orig;
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"cam"] ?: @(NO)) boolValue];

if (Enable) {
%init(CAM);

}
}


%group MAC

// CAMFROG por

%hook IMSession
-(bool)isProcessingCall:(long long)arg1 {
    return 1;
}
%end

%hook P2PCallSessionEventHandler
-(bool)isProcessingCall:(long long)arg1 {
    return 1;
}
%end

%hook RoomProtocolParser
-(void)setupRoomAddress:(id)arg1 nick:(id)arg2 isPro:(bool)arg3 cookie:(id)arg4 {
    arg3 = 1;
    return %orig;
}
%end

%hook RoomProtocolParser
-(bool)isPro {
    return 1;
}
%end

%hook RoomProtocolParser
-(void)setIsPro:(bool)arg1 {
    arg1 = 1;
    return %orig;
}
%end

%hook ChatRoomClient
-(bool)secureConnectA:(id)arg1 nick:(id)arg2 cookie:(id)arg3 isPro:(bool)arg4 {
    arg4 = 1;
    return 1;
    return %orig;
}
%end

%hook _TtC7Camfrog19RoomAddressResponse
-(bool)isPro {
    return 1;
}
%end

%hook _TtC7Camfrog15ContactListItem
-(bool)isPro {
    return 1;
}
%end

%hook FIRInstanceID
-(bool)isProductionApp {
    return 1;
}
%end

%hook APMRemoteConfig
-(bool)isPropertyFilterResultBundleTimestampEnabled {
    return 1;
}
%end

%hook FNFLocalMp4Asset
-(bool)isProtectedContent {
    return 1;
}
%end

%hook _TtC7Camfrog16RoomUserListItem
-(long long)proStatusType {
    return 9000;
}
%end

%hook _TtC7Camfrog13AnonymousUser
-(long long)proStatusType {
    return 9000;
}
%end

%hook _TtC7Camfrog22ProStatusReceivedEvent
-(long long)proStatusType {
    return 9000;
}
%end

%hook _TtC7Camfrog22ProStatusReceivedEvent
-(id)initWithProStatusType:(long long)arg1 online:(bool)arg2 hadProLevel:(bool)arg3 hadExtremeLevel:(bool)arg4 {
    arg4 = 1;
    arg3 = 1;
    arg2 = 1;
    arg1 = 9000;
    return %orig;
}
%end

%hook _TtC7Camfrog17SimpleUserDetails
-(long long)proStatusType {
    return 9000;
}
%end

%hook _TtC7Camfrog15ContactListItem
-(long long)proStatusType {
    return 9000;
}
%end

%hook _TtC7Camfrog15ContactListItem
-(void)setProStatusType:(long long)arg1 {
    arg1 = 9000;
    return %orig;
}
%end

%hook _TtC7Camfrog16RoomUserListItem
-(unsigned long long)nickColor {
    return 9000;
}
%end

%hook _TtC7Camfrog16RoomUserListItem
-(void)setNickColor:(unsigned long long)arg1 {
    arg1 = 9000;
    return %orig;
}
%end

%hook _TtC7Camfrog13AnonymousUser
-(unsigned long long)nickColor {
    return 9000;
}
%end

%hook _TtC7Camfrog17SimpleUserDetails
-(unsigned long long)nickColor {
    return 9000;
}
%end

%hook _TtC7Camfrog15ContactListItem
-(unsigned long long)nickColor {
    return 9000;
}
%end

%hook _TtC7Camfrog15ContactListItem
-(void)setNickColor:(unsigned long long)arg1 {
    arg1 = 9000;
    return %orig;
}
%end

%hook UserProfile
-(bool)adultRoomsEnabled {
    return 1;
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"mac"] ?: @(NO)) boolValue];

if (Enable) {
%init(MAC);

}
}


%group AUT

// autorap VIP

%hook SNPAccountIcon
-(bool) isVIP {
return TRUE;
}

-(bool) isVerifiedAccount {
return TRUE;
}
%end

%hook MagicAnalytics
+(void) isVip:(bool)arg6 {
arg6 = TRUE;
return %orig;
}
%end


%hook MagicSubscriptionManager
-(void) setIsPromo:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(void) setIsActive:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(bool) isActive {
return TRUE;
}

-(bool) isSubscriptionActive {
return TRUE;
}

-(void) setSkipTrial:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(bool) isPromo {
return TRUE;
}

-(bool) expireAtValid {
return TRUE;
}

-(bool) skipTrial {
return TRUE;
}

-(bool) subscriptionsAllowed {
return TRUE;
}

-(bool) isPromoSubscription {
return TRUE;
}
%end

%hook MagicSubscriptionPlan
-(int) period {
return 2020;
}
%end

%hook GADDevice
-(bool) jailbroken {
return TRUE;
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"aut"] ?: @(NO)) boolValue];

if (Enable) {
%init(AUT);

}
}


%group COL

// ColorfySubscriber VIP

%hook StoreKitManager
-(bool) isSubscriptionBased {
return TRUE;
}

-(bool) isSubscription:(id)arg1 {
return TRUE;
}

-(bool) isSubscribed:(int)arg1 {
return TRUE;
arg1 = 99999;
return %orig;
}
%end

%hook TFGStoreKit
-(bool) isSubscription:(id)arg1 {
return TRUE;
return %orig;
}
%end

%hook TFGStoreKitReceiptValidator
-(bool) isSubscription:(id)arg1 {
return TRUE;
return %orig;
}
%end

%hook SocialPainting
-(bool) authorIsSubscriber {
return TRUE;
}

-(void) setAuthorIsSubscriber:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook TFGPurchaseResult
-(id) isSubscription:(bool)arg5 {
arg5 = TRUE;
return %orig;
}

-(bool) isSubscription {
return TRUE;
}
%end

%hook SocialUserDataManager
-(void) isSubscriber:(bool)arg2 {
arg2 = TRUE;
return %orig;
}
%end

%hook TFGTopazAnalyticsSession
-(void) setIsInstallUser:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(bool) isInstallUser {
return TRUE;
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"col"] ?: @(NO)) boolValue];

if (Enable) {
%init(COL);

}
}



%group COO

// ColoringBook VIP


%hook SWPMediaReference
-(bool)isPremium {
    return 1;
}
%end

%hook SWPMediaReference
-(void)setIsPremium:(bool)arg1 {
    arg1 = 1;
    return %orig;
}
%end

%hook MSCAdsManager
-(bool)isPremium {
    return 1;
}
%end

%hook MSCAdsManager
-(void)setIsPremium:(bool)arg1 {
    arg1 = 1;
    return %orig;
}
%end

%hook MSCMarketingManager
-(bool)isPremium {
    return 1;
}
%end

%hook ISBaseManager
-(bool)isPremium:(id)arg1 {
    return 1;
}
%end

%hook ISBaseManager
-(bool)isPremiumAvailable {
    return 1;
}
%end

%hook UMONPromoMetaData
-(bool)isPremium {
    return 1;
}
%end

%hook SWPAggregateFeedItem
-(bool)mediaIsPremium {
    return 1;
}
%end

%hook CBBillingManager
-(void)updateIsPremium:(bool)arg1 {
    arg1 = 1;
    return %orig;
}
%end

%hook SWPAggregateActivityItem
-(bool)mediaIsPremium {
    return 1;
}
%end

%hook SWPFeedTopUsersMediaItem
-(bool)mediaIsPremium {
    return 1;
}
%end

%hook CBAppContext
+(bool)hasPremium {
    return 1;
}
%end

%hook SWPFeedActivityListItem
-(bool)mediaIsPremium {
    return 1;
}
%end

%hook SWPFeedProfileMediaItem
-(bool)mediaIsPremium {
    return 1;
}
%end

%hook CBRootViewController
-(void)updateIsPremium:(bool)arg1 {
    arg1 = 1;
    return %orig;
}
%end

%hook CBSFullscreenItemPresenter
-(bool)isPremium {
    return 1;
}
%end

%hook SWPNoImageActivityListItem
-(bool)mediaIsPremium {
    return 1;
}
%end

%hook ISBaseManager
-(bool)canShowPremiumAdapter {
    return 1;
}
%end

%hook CBEventKeeper
+(void)recolorClickWithType:(id)arg1 type:(unsigned long long)arg2 source:(id)arg3 premium:(bool)arg4 {
    arg4 = 1;
    return %orig;
}
%end

%hook _TtC9Colorbook24CBPremiumFeaturesManager
+(bool)unlockWithFeature:(long long)arg1 forUnit:(long long)arg2 {
    return 1;
}
%end

%hook _TtC9Colorbook24CBPremiumFeaturesManager
+(bool)unlockLTOFromSpot:(id)arg1 {
    return 1;
}
%end

%hook _TtC9Colorbook24CBPremiumFeaturesManager
+(bool)unlockLTO {
    return 1;
}
%end

%hook _TtC9Colorbook24CBPremiumFeaturesManager
+(bool)isUnlockedLTOForSpot:(id)arg1 {
    return 1;
}
%end

%hook _TtC9Colorbook24CBPremiumFeaturesManager
+(bool)isUnlockedWithFeature:(long long)arg1 {
    return 1;
}
%end

%hook MSCAnalyticsBrazePremiumScreenShownEvent
-(bool)withoutGenerator {
    return 1;
}
%end

%hook MSCAnalyticsPremiumOptionSelectedEvent
-(bool)withoutGenerator {
    return 1;
}
%end

%hook MSCAnalyticsPremiumScreenShownEvent
-(bool)withoutGenerator {
    return 1;
}
%end

%hook MSCMarketingCampaign
-(bool)shouldShowInPremiumMode {
    return 1;
}
%end

%hook SUBScreenConfig
-(bool)trackPremiumScreenShownAutomatically {
    return 1;
}
%end

%hook MSCMarketingCampaign
-(void)setShouldShowInPremiumMode:(bool)arg1 {
    arg1 = 1;
    return %orig;
}
%end

%hook ISBaseManager
-(void)setCanShowPremiumAdapter:(bool)arg1 {
    arg1 = 1;
    return %orig;
}
%end

%hook CBItemEntity
-(bool)isFree {
    return 1;
}
%end

%hook CBRealmPaletteObject
-(bool)isFree {
    return 1;
}
%end

%hook CBSoundEntity
-(bool)isFree {
    return 1;
}
%end

%hook CBSoundObject
-(bool)isFree {
    return 1;
}
%end

%hook CBPromoModuleConfig
-(bool)isFreeUser {
    return 1;
}
%end

%hook CBPaletteEntity
-(bool)isFree {
    return 1;
}
%end

%hook CBTextureEntity
-(bool)isFree {
    return 1;
}
%end

%hook _TtC9Colorbook25WhatsNewPromoModuleConfig
-(bool)isFreeUser {
    return 1;
}
%end

%hook _TtC9Colorbook25WhatsNewPromoModuleConfig
-(void)setIsFreeUser:(bool)arg1 {
    arg1 = 1;
    return %orig;
}
%end

%hook APMInAppPurchaseItem
-(bool)isFreeTrial {
    return 1;
}
%end

%hook IAVideoPlayer
-(void)setIsSubscribed:(bool)arg1 {
    arg1 = 1;
    return %orig;
}
%end

%hook IAVideoPlayer
-(bool)isSubscribed {
    return 1;
}
%end

%hook IAVisibilityTester
-(bool)isSubscribedToKVO {
    return 1;
}
%end

%hook ABKUser
-(bool)setIsSubscribedToEmails:(bool)arg1 {
    arg1 = 1;
    return %orig;
}
%end

%hook APMLifetimeValueRecorder
+(bool)isPurchaseEvent:(id)arg1 {
    return 1;
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"coo"] ?: @(NO)) boolValue];

if (Enable) {
%init(COO);

}
}


%group DEE

// Deezer PRO
%hook SASNativeAdManager
-(bool) isValidPremiumAd {
return FALSE;
}
%end

%hook SASNativeRequestManager
-(bool) premiumAdExistsAndIsFromTheRightType {
return FALSE;
}

-(bool) premiumAdIsFromTheRightTypeIfItExists {
return FALSE;
}
%end

%hook SASRequestManager
-(bool) premiumAdIsFromTheRightTypeIfItExists {
return FALSE;
}

-(bool) premiumAdExistsAndIsFromTheRightType {
return FALSE;
}
%end

%hook DeezerContentWindowing
-(bool) isValidPremiumAd {
return TRUE;
}
%end

%hook SASAdsViewController
-(bool) isValidPremiumAd {
return FALSE;
}
%end

%hook DZROpeningAdManager
-(bool) isBlocked {
return TRUE;
}

-(void) setIsBlocked:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook XMPPUserMemoryStorageObject
-(id) subscription {
return [NSNumber numberWithBool:YES];
}
%end

%hook XMPPPubSub
-(id) subscribeToNode:(id)arg1 withJID:(id)arg2 {
return [NSNumber numberWithBool:YES];
arg1 = [NSNumber numberWithBool:YES];
arg2 = [NSNumber numberWithBool:YES];
return %orig;
}
%end

%hook IDMessagingService
-(id) subscribers {
return [NSNumber numberWithBool:YES];
}

-(void) setSubscribers:(id)arg1 {
arg1 = [NSNumber numberWithBool:YES];
return %orig;
}

-(id) subscribe {
return [NSNumber numberWithBool:YES];
}

-(id) subscribersAccessLock {
return [NSNumber numberWithBool:YES];
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"dee"] ?: @(NO)) boolValue];

if (Enable) {
%init(DEE);

}
}



%group DJM
// DJ Mix Pads VIP

%hook UserItem
-(bool) isVip {
return TRUE;
}

-(void) setIsVip:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(bool) isTracksOpen {
return TRUE;
}

-(void) setIsTracksOpen:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end


%hook MADSubscriptionManager
-(void) validateGroupsAfterBuy:(bool)arg1 {
arg1 = FALSE;
return %orig;
}

-(bool) hasSubscriptionWithId:(id)arg1 {
return TRUE;
}

-(bool) setProduct:(id)arg1 {
return TRUE;
}

-(bool) isValidating {
return TRUE;
}

-(void) setIsValidating:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook MADSubscriptionsGroup
-(bool) isTrialPeriodUsed {
return FALSE;
}

-(void) setIsTrialPeriodUsed:(bool)arg1 {
arg1 = FALSE;
return %orig;
}

-(bool) isTrialPeriod {
return FALSE;
}

-(void) setIsTrialPeriod:(bool)arg1 {
arg1 = FALSE;
return %orig;
}
-(bool) hasGroupSubscriptionWithId:(id)arg1 {
return TRUE;
}

-(bool) setProduct:(id)arg1 {
return TRUE;
}

-(bool) isBuy {
return TRUE;
}
%end

%hook MADStore
-(bool) subscribeInActive {
return FALSE;
}

-(void) setSubscribeInActive:(bool)arg1 {
arg1 = FALSE;
return %orig;
}

-(bool) hasIAPs {
return TRUE;
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"djm"] ?: @(NO)) boolValue];

if (Enable) {
%init(DJM);

}
}




%group DUO
// duolingo VIP

%hook DUOSessionManager
-(bool) isPlusEnabled {
return TRUE;
}
%end

%hook DUOSkillTreeViewController
-(bool) isPlusEnabled {
return TRUE;
}
%end

%hook DUOAdsEligibitily
+(bool) userHasAdsFreeWithUser {
return FALSE;
}
%end

%hook DUOPlusOfferCell
-(bool) userHasPlus {
return TRUE;
}

-(void) setUserHasPlus:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook One
-(bool) hasPlus {
return TRUE;
}
%end

%hook Subscription
-(bool) isSubscribed {
return TRUE;
}
%end

%hook WeborbClient
-(bool) isActiveSubscriber {
return TRUE;
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"duo"] ?: @(NO)) boolValue];

if (Enable) {
%init(DUO, One = objc_getClass("DuolingoMobile.DUOUser"));

}
}


%group EEE
// Evernote VIP

%hook EVEInAppPirchaseManager
-(id) activePayment {
return [NSNumber numberWithBool:YES];
}

-(void) activePayment:(bool)arg1 {
arg1 = [NSNumber numberWithBool:YES];
return %orig;
}

-(id) fullProductsRequest {
return [NSNumber numberWithBool:YES];
}

-(void) setFullProductsRequest:(bool)arg1 {
arg1 = [NSNumber numberWithBool:YES];
return %orig;
}
%end


%hook A
-(bool) hasSubscription {
return TRUE;
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"eee"] ?: @(NO)) boolValue];

if (Enable) {
%init(EEE);

}
}

%group DAR

// Darkroom Premium

%hook HSLRAWBadgeInteractionHandler
-(bool)isRawPlusJPG {
    return 1;
}
%end

%hook HSLRAWBadgeInteractionHandler
-(void)setIsRawPlusJPG:(bool)arg1 {
    arg1 = 1;
    return %orig;
}
%end

%hook _TtC16InAppPurchaseKit15DarkroomIAPUser
-(bool)isActivePremiumUser {
    return 1;
}
%end

%hook _TtC16InAppPurchaseKit15DarkroomIAPUser
-(void)setIsActivePremiumUser:(bool)arg1 {
    arg1 = 1;
    return %orig;
}
%end

%hook _TtC16InAppPurchaseKit15DarkroomIAPUser
-(bool)hasPurchasedSubscriptions {
    return 1;
}
%end

%hook _TtC16InAppPurchaseKit15DarkroomIAPUser
-(bool)hasPurchasedForeverOption {
    return 1;
}
%end

%hook _TtC16InAppPurchaseKit8IAPDebug
+(bool)isSubscriber {
    return 1;
}
%end

%hook _TtC16InAppPurchaseKit8IAPDebug
+(void)setIsSubscriber:(bool)arg1 {
    arg1 = 1;
    return %orig;
}
%end

%hook _TtC16InAppPurchaseKit8IAPDebug
+(bool)hasPurchasedForever {
    return 1;
}
%end

%hook _TtC16InAppPurchaseKit8IAPDebug
+(void)setHasPurchasedForever:(bool)arg1 {
    arg1 = 1;
    return %orig;
}
%end

%hook _TtC16InAppPurchaseKit14IAPEntitlement
-(bool)isSubscription {
    return 1;
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"dar"] ?: @(NO)) boolValue];

if (Enable) {
%init(DAR);

}
}

%group FFF

// facetune2 PRO


%hook FTLightEffectsFeatureProcessor
-(bool)defaultIsVIP {
    return 1;
}
%end

%hook FTLightEffectsFeatureProcessor
-(bool)isVIP {
    return 1;
}
%end

%hook FTLightEffectsFeatureProcessor
-(void)setIsVIP:(bool)arg1 {
    arg1 = 1;
    return %orig;
}
%end

%hook FTRetouchToolbarConfigurationExperiment
-(bool)isVIPSubfeature:(id)arg1 {
    return 1;
}
%end

%hook FTRetouchToolbarConfigurationExperiment
-(bool)baselineIsVIPSubfeature:(id)arg1 {
    return 1;
}
%end

%hook FTRetouchToolbarConfigurationExperiment
-(bool)variant2IsVIPSubfeature:(id)arg1 {
    return 1;
}
%end

%hook FTRetouchToolbarConfigurationExperiment
-(bool)variant1IsVIPSubfeature:(id)arg1 {
    return 1;
}
%end

%hook FTRetouchToolbarConfigurationExperiment
-(bool)variant3IsVIPSubfeature:(id)arg1 {
    return 1;
}
%end

%hook FTRetouchToolbarConfigurationExperiment
-(bool)variant4IsVIPSubfeature:(id)arg1 {
    return 1;
}
%end

%hook FTKinesisFeatureEndedEvent
-(bool)isVIPFeatureUsed {
    return 1;
}
%end

%hook FTCameraModeItem
-(bool)isVIP {
    return 1;
}
%end

%hook FTMainTabItem
-(bool)isVIP {
    return 1;
}
%end

%hook FTMainRootItem
-(bool)isVIP {
    return 1;
}
%end

%hook FTFeatureSimpleItem
-(bool)isVIP {
    return 1;
}
%end

%hook FTFeatureModeItem
-(bool)isVIP {
    return 1;
}
%end

%hook FTFeatureRootItem
-(bool)isVIP {
    return 1;
}
%end

%hook FTFeatureOptionItem
-(bool)isVIP {
    return 1;
}
%end

%hook FTFeatureActionItem
-(bool)isVIP {
    return 1;
}
%end

%hook FTFeatureColorOptionItem
-(bool)isVIP {
    return 1;
}
%end

%hook FTFeatureBrushItem
-(bool)isVIP {
    return 1;
}
%end

%hook FTFeatureNavigationItem
-(bool)isVIP {
    return 1;
}
%end

%hook FTFeatureBrushOneOfManyItem
-(bool)isVIP {
    return 1;
}
%end

%hook FTFeatureGroupItem
-(bool)isVIP {
    return 1;
}
%end

%hook FTFeatureOneOfManyItem
-(bool)isVIP {
    return 1;
}
%end

%hook FTFeatureFilterItem
-(bool)isVIP {
    return 1;
}
%end

%hook FTFeatureSliderItem
-(bool)isVIP {
    return 1;
}
%end

%hook FTFeatureFilterPackItem_DEPRECATED
-(bool)isVIP {
    return 1;
}
%end

%hook FTFeatureFilterPackItem
-(bool)isVIP {
    return 1;
}
%end

%hook FTFeatureToggleItem
-(bool)isVIP {
    return 1;
}
%end

%hook FTFeaturePhotoStripItem
-(bool)isVIP {
    return 1;
}
%end

%hook FTSMSubfeatureUsedEvent
-(bool)isVIP {
    return 1;
}
%end

%hook FTSubfeatureStartedEvent
-(bool)isVIP {
    return 1;
}
%end

%hook FTLightLeakProcessor
-(bool)defaultIsVIP {
    return 1;
}
%end

%hook FTLightLeakProcessor
-(bool)isVIP {
    return 1;
}
%end

%hook FTLightLeakProcessor
-(void)setIsVIP:(bool)arg1 {
    arg1 = 1;
    return %orig;
}
%end

%hook FTFiltersProcessor
-(bool)isVIP {
    return 1;
}
%end

%hook FTUserDidTakeScreenshotEvent
-(bool)isVIPFeatureUsed {
    return 1;
}
%end

%hook FTSubfeatureStartedEventsProvider
-(bool)isVIPNodeForPartialPaths:(id)arg1 {
    return 1;
}
%end

%hook FTFiltersProcessor
-(bool)defaultIsVIP {
    return 1;
}
%end

%hook FTFiltersProcessor
-(void)setIsVIP:(bool)arg1 {
    arg1 = 1;
    return %orig;
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"fff"] ?: @(NO)) boolValue];

if (Enable) {
%init(FFF);

}
}

// open Plus For Gold Tinder

%group TTT

// Tinder.PurchasesModel
%hook tin
-(bool) isTinderPlusActive {
    return true;
}

-(void) setIsTinderPlusActive:(bool)arg1 {
arg1 = true;
return %orig;
}
%end

%hook TNDRProductsManager
-(bool) isTinderPlusActive {
    return true;
}

-(bool) areGoldProductsSameAs {
    return true;
}
%end

%hook TNDRCurrentUser
-(bool) canUseFastMatch {
    return true;
}

-(bool) isVibrationEnabled {
    return true;
}

-(void) setVibrationEnabled:(bool)arg1 {
arg1 = true;
return %orig;
}

-(bool) isTinderPlusSubscriber {
    return true;
}

-(bool) hideAge {
    return true;
}

-(bool) hideDistance {
    return true;
}

-(bool) selectEnabled {
    return true;
}
%end

%hook TNDRHomeViewModel
-(bool) isCurrentUserTinderPlusSubscriber {
    return true;
}

-(bool) isCurrentUserTinderGoldSubscriber {
    return true;
}
%end
// Tinder.HomeMerchandisingCurrentUserViewModel
%hook tinb
-(bool) isTinderPlusFeatureEnabled {
    return true;
}

-(bool) isGoldFeatureEnabled {
    return true;
}

-(bool) isTinderPlusSubscriber {
    return true;
}

-(bool) isTinderGoldSubscriber {
    return true;
}

- (bool)isTopPicksFeatureEnabled {
    return true;
}

- (bool)isTinderPlusAvailable {
    return true;
}
%end

%hook TNDRPlusMerchandisingViewController
-(bool) isTinderGoldSubscriber {
    return true;
}
- (void)updateMerchandisingInformation:(id)arg1 {
}

-(bool) isTinderPlusSubscriber {
    return true;
}
%end

%hook TNDRPlusControlViewModel
-(bool) isTinderPlusSubscriber {
    return true;
}
%end

%hook TNDRBoostSummaryViewController
-(id) isTinderPlusSubscriber:(bool)arg3 {
arg3 = true;
return %orig;
}
- (id)createFooterViewForTinderPlusSubscriber:(bool)arg1 actionTitle:(id)arg2 actionSelector:(SEL)arg3 notNowSelector:(SEL)arg4 isGoldMerchandisingEnabled:(bool)arg5 canSuperBoost:(bool)arg6 {
    arg1 = true;
    arg5 = true;
    arg6 = true;
    return %orig;
}

%end

%hook TNDRGamepadView
-(bool) isTinderPlusSubscriber {
    return true;
}
- (id)initWithGamepadStyle:(long long)arg1 isVersion4:(bool)arg2 notifyBoostCountUpdate:(bool)arg3 {
    arg3 = true;
    arg2 = true;
    return %orig;
}

- (void)setIsVersion4:(bool)arg1 {
    arg1 = true;
   return %orig;
}
%end
// Tinder.FireboardingContext
%hook tinc
-(bool) rewindButtonUnlocked {
    return true;
}

-(bool) boostButtonUnlocked {
    return true;
}

-(bool) superLikeButtonUnlocked {
    return true;
}

- (void)setIsVersion4:(bool)arg1 {
    arg1 = true;
    %orig;
}
- (bool)isInFireboarding {
    return true;
}

-(bool) isRecommendationUnlockScreenWithRecommendation {
    return true;
}
%end

%hook TNDRMetaUser
-(bool) hidesDistance {
    return true;
}

-(void) setHidesDistance:(bool)arg1 {
arg1 = true;
return %orig;
}

-(bool) hidesAge {
    return true;
}

-(void) setHidesAge:(bool)arg1 {
arg1 = true;
return %orig;
}

-(bool) hidesAds {
    return true;
}

-(void) setHidesAds:(bool)arg1 {
arg1 = true;
return %orig;
}
%end
// Tinder.ControlYourProfileContext"
%hook tind
-(id) actionAfterTinderPlus {
return [NSNumber numberWithInteger:1];
}

-(void) setActionAfterTinderPlus:(bool)arg1 {
arg1 = [NSNumber numberWithInteger:1];
return %orig;
}

-(void) paywallRequestsDismissal:(bool)arg1 completion:(id)arg2 {
arg1 = [NSNumber numberWithInteger:1];
arg2 = [NSNumber numberWithInteger:1];
return %orig;
}
%end
%hook TNDRBoostButtonImageService
+ (bool)isBoostEnabled {
    return true;
}
%end

%hook TNDRSuperLikeDialogHeaderView
- (bool)isMarketingEnabled {
    return true;
}
- (void)setMarketingEnabled:(bool)arg1 {
    arg1 = true;
    %orig;
}
%end

%hook tine
- (void)setIsTinderGoldSubscriber:(bool)arg1 {
    arg1 = true;
    %orig;
}

- (bool)isTinderGoldSubscriber {
    return true;
}

- (bool)bottomNavEnabled {
    return true;
}

- (bool)isMerchandisingV2Enabled {
    return true;
}

- (void)setIsMerchandisingV2Enabled:(bool)arg1 {
    arg1 = true;
    %orig;
}

- (bool)isMerchandisingV1Enabled {
    return true;
}

- (void)setIsMerchandisingV1Enabled:(bool)arg1 {
    arg1 = true;
    %orig;
}
- (bool)isCarouselAutoAdvancingEnabled {
    return true;
}
- (bool)isCarouselSingleItemEnabled {
    return true;
}
%end

%hook tinf
- (void)setIsDiscountFeatureAvailable:(bool)arg1 {
    arg1 = true;
    %orig;
}

- (void)setIsTinderPlusAvailable:(bool)arg1 {
}

- (void)setIsTinderPlusSubscriber:(bool)arg1 {
    arg1 = true;
    %orig;
}
- (bool)isDiscountFeatureAvailable {
    return true;
}

- (bool)isTinderPlusSubscriber {
    return true;
}
- (bool)isTinderPlusAvailable {
    return true;
}
%end

%hook TNDRURLManager
- (bool)accountBannedWarningInURLString:(id)arg1 {
    return 0;
}

- (bool)isPresentingAccountBannedWarning {
    return 0;
}

- (void)handleAccountWarningBannedNotificationWithCompletion:(id)arg1 {
}
%end

%hook CLSMachOSlice
- (id)uuid {
    return @"27FC2EC7-88CA-4746-B360-0377EAE7EE2B";
}
%end

%hook Fabric
- (id)readInstallationUUID {
    return %orig;
}

- (id)generateInstallationUUID {
    return @"27FC2EC7-88CA-4746-B360-0377EAE7EE2B";
}
%end

%hook GADODevice
- (bool)jailbroken {
    return 0;
}
%end

%hook ANSMetadata
- (bool)isJailbroken {
    return 0;
}
- (bool)computeIsJailbroken {
    return 0;
}
%end

%hook AppsFlyerUtils
+ (bool)isJailbroken {
    return 0;
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"ttt"] ?: @(NO)) boolValue];

if (Enable) {
%init(TTT, tin = objc_getClass("Tinder.PurchasesModel"),
tinb = objc_getClass("Tinder.HomeMerchandisingCurrentUserViewModel"),
tinc = objc_getClass("Tinder.FireboardingContext"),
tind = objc_getClass("Tinder.ControlYourProfileContext"),
tine = objc_getClass("Tinder.GoldContext"),
tinf = objc_getClass("Tinder.PlusContext"));
}
}

// ChromeBackgroundPlayback
%group BAC
%hook WKContentView
- (void)_applicationWillResignActive:(id)arg1 {
}
%end

%hook WKApplicationStateTrackingView
- (void)_applicationWillEnterForeground {
}
- (void)_applicationDidEnterBackground {
}
%end

%hook GSKAudioCapture
- (void)applicationDidEnterBackground:(id)arg1 {
}
%end

%hook UIApplication
- (void)_applicationDidEnterBackground {
}
%end

%hook MainApplicationDelegate
- (void)applicationDidBecomeActive:(id)arg1 {
}
- (void)applicationDidEnterBackground:(id)arg1 {
}
- (void)applicationWillResignActive:(id)arg1 {
}
- (void)applicationWillEnterForeground:(id)arg1 {
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"bac"] ?: @(NO)) boolValue];

if (Enable) {
%init(BAC);

}
}
// FirefoxBackgroundPlayback

%group CAB
%hook WKContentView
- (void)_applicationWillResignActive:(id)arg1 {
}
%end

%hook WKApplicationStateTrackingView
- (void)_applicationDidEnterBackground {
}
%end

%hook tw3ha
- (void)applicationDidEnterBackground:(id)arg1 {
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"cab"] ?: @(NO)) boolValue];

if (Enable) {
%init(CAB,tw3ha = objc_getClass("Client.AppDelegate"));

}
}


%group FRA

// FlightRadar24

%hook F24UserSubscription
-(bool) isActive {
return TRUE;
}
%end

%hook F24UserSession
+(bool) canUpdateWithServerResponse {
return TRUE;
}

-(bool) isFeatureAllowed {
return TRUE;
}

-(bool) adsEnabled {
return FALSE;
}

-(bool) canUpgrade {
return TRUE;
}

-(bool) updateWithServerResponse {
return TRUE;
}

-(void) setAdsEnabled:(bool)arg1 {
arg1 = FALSE;
return %orig;
}

-(bool) isSubscriptionLive {
return TRUE;
}

-(bool) isFeatureAllowed:(id)arg1 {
return TRUE;
arg1 =0;
return %orig;
}
%end

%hook Flight
+(bool) hasProAppInstalled {
return TRUE;
}

-(bool) hasActiveSubscriptions {
return TRUE;
}

-(bool) shouldUseProUpgradeWithForceRefresh:(bool)arg1 {
return TRUE;
arg1 = TRUE;
return %orig;
}
%end

%hook F24AlertHandler
-(bool) isSpecialFlightsSubscribed {
return TRUE;
}

-(bool) isTopicSubscribed {
return TRUE;
}
%end

%hook F24MainViewController
-(bool) activeBoughtPremiumSubscription {
return TRUE;
}
%end

%hook F24AppFeedbackAndReviewHelper
-(bool) checkHasActiveSubscription {
return TRUE;
}

-(bool) checkHadActiveSubscription {
return TRUE;
}
%end

%hook F24FeatureManager
-(id) includeBusiness:(bool)arg2 {
arg2 = TRUE;
return %orig;
}

-(bool) serverUpdatesEnabled {
return TRUE;
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"fra"] ?: @(NO)) boolValue];

if (Enable) {
%init(FRA, Flight = objc_getClass("FlightradarFree.SubscriptionPurchaseManager"));

}
}


%group FOC

// focos
%hook MKStoreKit
-(bool) isProductPurchased {
return TRUE;
}
%end

%hook FLStoreKit
-(bool) subscriptionPurchased:(int)arg1 {
return TRUE;
arg1 = 1;
return %orig;
}

-(void) purchaseProduct:(int)arg1 {
arg1 = 1;
return %orig;
}

-(bool) showPro {
return TRUE;
}

-(bool) subscribedPro {
return TRUE;
}

-(double) subscriptionTimeLeft:(int)arg1 {
return 9999;
arg1 = 1;
return %orig;
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"foc"] ?: @(NO)) boolValue];

if (Enable) {
%init(FOC);

}
}


%group FVO

// FootyVid
%hook GADDevice
-(bool) jailbroken {
return FALSE;
}
%end

%hook STABannerView
-(bool) devHideBanner {
return TRUE;
}

-(void) setDevHideBanner:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook STASplashPreferences
-(bool) isSplashLoadingIndicatorEnabled {
return FALSE;
}

-(void) setIsSplashLoadingIndicatorEnabled:(bool)arg1 {
arg1 = FALSE;
return %orig;
}
%end

%hook STASplashViewController
-(bool) showAd {
return FALSE;
}

-(void) setShowAd:(bool)arg1 {
arg1 = FALSE;
return %orig;
}
%end

%hook STAStartAppAdBasic
+(bool) showAd {
return FALSE;
}
%end

%hook STACacheAdLoader
-(bool) showAd {
return FALSE;
}

-(void) setAdIsLoaded:(bool)arg1 {
arg1 = FALSE;
return %orig;
}

-(bool) adIsLoaded {
return FALSE;
}
%end

%hook GADApplication
-(bool) backgroundLoadingEnabled {
return FALSE;
}

-(bool) backgroundReloadingEnabled {
return FALSE;
}

-(bool) active {
return FALSE;
}
%end

%hook GADSlot
-(bool) monitoredViewVisible {
return FALSE;
}

-(bool) canEnableActiveViewMonitoring {
return FALSE;
}

-(bool) isGoogleAdURL:(id)arg1 {
return FALSE;
}
%end

%hook STAEventAdManager
-(bool) isSplashAdReady {
return FALSE;
}

-(void) setIsSplashAdReady:(bool)arg1 {
arg1 = FALSE;
return %orig;
}

-(bool) isSplashScreenFinish {
return TRUE;
}

-(bool) isReturnAdDisabled {
return FALSE;
}

-(void) setIsReturnAdDisabled:(bool)arg1 {
arg1 = FALSE;
return %orig;
}

-(bool) isSplashPreferencesUsed {
return FALSE;
}

-(void) setIsSplashPreferencesUsed:(bool)arg1 {
arg1 = FALSE;
return %orig;
}

-(bool) isSplashAdEnabled {
return FALSE;
}

-(void) setIsSplashAdEnabled:(bool)arg1 {
arg1 = FALSE;
return %orig;
}

-(void) setIsSplashScreenFinish:(bool)arg1 {
arg1 = FALSE;
return %orig;
}
%end

%hook SDWebImageManager
-(bool) isRunning {
return FALSE;
}
%end

%hook GADMAdapterGoogleAdMobAds
-(bool) handlesUserClicks {
return FALSE;
}

-(bool) handlesUserImpressions {
return FALSE;
}
%end

%hook IAPHelper
-(bool) productPurchased {
return TRUE;
}
%end

%hook GADBrowserAdViewDelegate
-(bool) handlesClicks {
return FALSE;
}

-(bool) adView {
return FALSE;
}
%end

%hook GADMediatedNativeAd
-(bool) adapterHandlesUserClicks {
return FALSE;
}

-(bool) adapterHandlesUserImpressions {
return FALSE;
}

-(void) setAdapterHandlesUserClicks:(bool)arg1 {
arg1 = FALSE;
return %orig;
}

-(void) setAdapterHandlesUserImpressions:(bool)arg1 {
arg1 = FALSE;
return %orig;
}
%end

%hook GADMAdapterCustomEvents
-(bool) isBannerAnimationOK {
return FALSE;
}

-(bool) handlesUserClicks {
return FALSE;
}

-(bool) handlesUserImpressions {
return FALSE;
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"fvo"] ?: @(NO)) boolValue];

if (Enable) {
%init(FVO);

}
}


%group GOZ

// GEOZILLA
%hook PremiumIAPHelper
+(bool) premiumPurchased {
return TRUE;
}
%end

%hook IAPHelper
-(bool) productPurchased {
return TRUE;
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"goz"] ?: @(NO)) boolValue];

if (Enable) {
%init(GOZ);

}
}

%group GOA

// GoAdds


%hook GxAddMeUserInfoModel
-(bool) isVip {
return TRUE;
}

-(void) setIsVip:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook GZVIPFeatureVideoView
-(bool) isVip {
return TRUE;
}

-(void) setIsVip:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook GZAnalysisWVMPViewController
-(bool) isVip {
return TRUE;
}

-(void) setIsVip:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook GZAnalysisUnlockView
-(bool) isVip {
return TRUE;
}

-(void) setIsVip:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook AddMeVIPViewController
-(bool) isVIP {
return TRUE;
}

-(void) setIsVIP:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook GZAnaOutterBaseCollectionViewCell
-(bool) isVip {
return TRUE;
}

-(void) setIsVip:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook CustomizeCommentViewModel
-(bool) purchaseAccess {
return TRUE;
}

-(void) setPurchaseAccess:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook FIRAInAppPurchaseItem
-(bool) isFreeTrial {
return TRUE;
}

-(void) setFreeTrial:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook PlanBFeatureVIPFeatureView
-(bool) isBecomeVip {
return TRUE;
}

-(void) setIsBecomeVip:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook GZSwingView
-(bool) isLoadAds {
return FALSE;
}

-(void) setIsLoadAds:(bool)arg1 {
arg1 = FALSE;
return %orig;
}
%end

%hook GZAnalysisCardCollectionViewCell
-(bool) isVip {
return TRUE;
}

-(void) setIsVip:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook GZAnalysisViewProfileViewController
-(bool) isVip {
return TRUE;
}

-(void) setIsVip:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook GZAnalysisCardWVMPCollectionViewCell
-(bool) isVip {
return TRUE;
}

-(void) setIsVip:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook GZAnalysisViewController
-(bool) isVip {
return TRUE;
}

-(void) setIsVip:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook AddMeDetailModel
-(bool) isVip {
return TRUE;
}

-(void) setIsVip:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook GZAnaDetChildViewController
-(bool) isVip {
return TRUE;
}

-(void) setIsVip:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook GZRandomAvatorView
-(bool) isVip {
return TRUE;
}

-(void) setIsVip:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook GxUserBaseModel
-(bool) isVip {
return TRUE;
}
%end

%hook GxIapItemBase
-(bool) isVIPProduct {
return TRUE;
}
%end

%hook GxIapItem
-(bool) hasCustomPlan {
return TRUE;
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"goa"] ?: @(NO)) boolValue];

if (Enable) {
%init(GOA);

}
}

%group GIT

// Guitar
%hook SNPAccountIcon
-(bool) isSubscriber {
return TRUE;
}

-(bool) isVerifiedAccount {
return TRUE;
}

-(bool) isVIP {
return TRUE;
}
%end

%hook PlayerBarPerformerInfoCell
-(bool) showVIPBadge {
return TRUE;
}

-(void) setShowVIPBadge:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook ProfilePicButton
-(bool) allowVIPBadge {
return TRUE;
}

-(void) setAllowVIPBadge:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(bool) forceVIPBadge {
return FALSE;
}

-(void) setForceVIPBadge:(bool)arg1 {
arg1 = FALSE;
return %orig;
}
%end

%hook MagicAnalytics
+(void) isVip:(bool)arg5 {
arg5 = TRUE;
return %orig;
}
%end

%hook MagicSubscriptionManager
-(bool) isSubscriptionActive {
return TRUE;
}

-(bool) isTrialSubscription {
return FALSE;
}

-(bool) isPromo {
return TRUE;
}

-(void) setIsPromo:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(bool) isTrial {
return FALSE;
}

-(void) setIsTrial:(bool)arg1 {
arg1 = FALSE;
return %orig;
}

-(bool) expireAtValid {
return TRUE;
}

-(bool) isPromoSubscription {
return TRUE;
}

-(bool) usedTrial {
return FALSE;
}

-(bool) isActive {
return TRUE;
}

-(void) setIsActive:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(bool) loaded {
return TRUE;
}
%end

%hook MagicPurchaseAPI
+(bool) subscriptionAllowed {
return TRUE;
}
%end

%hook MagicSubscriptionPlan
-(bool) isLoading {
return TRUE;
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"git"] ?: @(NO)) boolValue];

if (Enable) {
%init(GIT);

}
}



%group HOT

// Hot8


%hook A
-(bool) isAnySubscriptionPurchasedBefore {
return TRUE;
}

-(bool) isAnySubscriptionActive {
return TRUE;
}

-(long long) purchaseCountForProductID {
return 1;
}

-(bool) isLimitedWithSubscription {
return FALSE;
}

-(bool) isLifeTimeSubscriptionAcitve {
return TRUE;
}

-(bool) isManualSubscriptionActive {
return TRUE;
}

-(bool) isLifeTimeSubscriptionProduct {
return TRUE;
}

-(bool) isManualSubscriptionProduct {
return TRUE;
}

-(bool) isPurchasing {
return TRUE;
}

-(bool) isVerifying {
return TRUE;
}

-(void) setIsPurchasing:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(void) setIsVerifying:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(bool) isProductInformationAvailableForProductID {
return TRUE;
}

-(bool) isProductInformationAvailable {
return TRUE;
}

-(long long) trialDaysLeft {
return 360;
}

-(bool) is3DaysTrialExpired {
return FALSE;
}
%end

%hook TDAppProfile
-(long long) purchaseTime {
return 2020;
}

-(void) setPurchaseTime:(long long)arg1 {
arg1 = 2020;
return %orig;
}
%end

%hook TDUtility
+(long long) getPurchaseDate {
return %orig;
}
%end

%hook B
-(double) subscriptionProlongTimeInterval {
return 2020;
}

-(void) setSubscriptionProlongTimeInterval:(double)arg1 {
arg1 = 2020;
return %orig;
}

-(bool) hasPurchasesForProductID {
return TRUE;
}

-(long long) purchaseCountForProductID {
return 1;
}
%end

%hook C
-(bool) hasTrial {
return TRUE ;
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"hot"] ?: @(NO)) boolValue];

if (Enable) {
%init(HOT, A = objc_getClass("HotEight.Salesman"),
B = objc_getClass("HotEight.ReceiptVerificator"),
C = objc_getClass("HotEight.StoreProduct"));

}
}

%group GAM

// Hungama
%hook HMUserDefaults
+(bool) isSubscribedUser {
return TRUE;
}

+(id) getProUnitImageURl {
return [NSNumber numberWithBool:TRUE];
}

+(id) getUserSubscriptionTypeStr {
return [NSNumber numberWithBool:TRUE];
}

+(id) getProUnitActionUrl {
return [NSNumber numberWithBool:TRUE];
}
%end

%hook NetworkManager
-(bool) cekIfUserIsInOfflineMode {
return TRUE;
}
%end

%hook HungamaMisicInApp
-(bool) productPurchased {
return TRUE;
}

-(void) buyProduct:(id)arg1 {
arg1 = [NSNumber numberWithBool:TRUE];
return %orig;
}

-(void) SubscribeUser:(id)arg1 {
arg1 = [NSNumber numberWithBool:TRUE];
return %orig;
}
%end

%hook SubscribeViewController_2
-(id) products {
return [NSNumber numberWithBool:TRUE];
}

-(void) setProducts:(id)arg1 {
arg1 = [NSNumber numberWithBool:TRUE];
return %orig;
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"gam"] ?: @(NO)) boolValue];

if (Enable) {
%init(GAM);

}
}

%group HYP

// Hypetype
%hook RMStoreKeychainPersistence
-(bool)isPurchasedProductOfIdentifier:(id)arg1 {
    return 1;
}
%end

%hook RMStoreKeychainPersistence
-(bool)consumeProductOfIdentifier:(id)arg1 {
    return 1;
}
%end

%hook HYPStoreServiceImplementation
-(bool)isFeaturePurchased:(id)arg1 {
    return 1;
}
%end

%hook HYPStoreServiceImplementation
-(bool)isEveryFeaturePurchased:(id)arg1 {
    return 1;
}
%end

%hook HYPStoreServiceImplementation
-(id)bundleFeatureId {
    return %orig;
}
%end

%hook HYPStoreServiceImplementation
-(bool)isAnyFeaturePurchased:(id)arg1 {
    return 1;
}
%end

%hook HYPStorePersistence
-(bool)consumeProductOfIdentifier:(id)arg1 {
    return 1;
}
%end

%hook HYPStorePersistence
-(bool)isPurchasedProductOfIdentifier:(id)arg1 {
    return 1;
}
%end

%hook AMPurchasedItem
-(bool)isPurchaseValid {
    return 1;
}
%end

%hook Automonetize
-(bool)isSubscribed {
    return 1;
}
%end

%hook FCCGLContext
-(bool)isSuspended {
    return 1;
}
%end

%hook HYPFeaturePurchasePresenter
-(bool)didPurchaseFeature {
    return 1;
}
%end

%hook HYPFeaturePurchasePresenter
-(void)setDidPurchaseFeature:(bool)arg1 {
    arg1 = 1;
    return %orig;
}
%end

%hook FBSDKServerConfiguration
-(bool)isImplicitPurchaseLoggingSupported {
    return 1;
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"hyp"] ?: @(NO)) boolValue];

if (Enable) {
%init(HYP);

}
}

%group IMO

// IMO
%hook AccountInfo
-(bool) isPremium {
return TRUE;
}

-(void) setIsPremium:(bool)arg1 {
arg1 = FALSE;
return %orig;
}
%end

%hook InteractionManager
-(void) setAccountPremium:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook GCMPubSubRegistrationClient
-(bool) isSubscriptionInPreogress {
return TRUE;
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"imo"] ?: @(NO)) boolValue];

if (Enable) {
%init(IMO);

}
}


%group JOO
// joox
%hook UserProfilePageUserInfo
-(bool) userV {
return TRUE;
}

-(void) setUserV:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(bool) kvip {
return TRUE;
}

-(void) setKvip:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(bool) vip {
return TRUE;
}

-(void) setVip:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(bool) vvip {
return TRUE;
}

-(void) setVvip:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook PremiumManager
-(bool) isVVIP {
return TRUE;
}

-(void) setIsVVip:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(bool) isKSongPremium {
return TRUE;
}

-(bool) isDTS {
return TRUE;
}

-(unsigned long long) expireTime {
return 1;
}
%end

%hook PremiumModel
-(bool) isVip {
return TRUE;
}

-(void) setIsVip:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(bool) isDTS {
return TRUE;
}

-(void) setIsDTS:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(bool) isVVip {
return TRUE;
}

-(void) setIsVVip:(bool)arg1 {
arg1 =TRUE;
return %orig;
}

-(bool) isKVip {
return TRUE;
}

-(void) setIsKVip:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(bool) isPremiumForCurrentUser {
return TRUE;
}

-(unsigned long long) expireTime {
return 1;
}

-(void) setExpireTime:(unsigned long long)arg1 {
arg1 = 1;
return %orig;
}

-(unsigned long long) kvipExpireTime {
return 1;
}

-(void) setKvipExpireTime:(unsigned long long)arg1 {
arg1 = 1;
return %orig;
}

-(unsigned long long) serverTime {
return 2;
}

-(void) setServerTime:(unsigned long long)arg1 {
arg1 = 2;
return %orig;
}
%end

%hook DTSManager
-(bool) isDTSUser {
return TRUE;
}

-(bool) isDTSServiceExpire {
return FALSE;
}

-(bool) isUserHadRegisterDTS {
return TRUE;
}

-(bool) isAuthenticated {
return TRUE;
}
%end

%hook SingerCluster
-(bool) isVip {
return TRUE;
}
%end

%hook SongInfo
-(bool) isVipSong {
return FALSE;
}
%end

%hook AllSongSubViewController
-(bool) allSongVip {
return TRUE;
}
%end

%hook BLYDevice
+(bool) isJailBreak {
return FALSE;
}
%end

%hook WloginSdk
-(bool) _isJailbreak {
return FALSE;
}
%end

%hook QRCodeTlv_31
-(bool) _isJailbreak {
return FALSE;
}
%end

%hook LoadAdReqBuilder
-(id) clearJailBroken {
return [NSNumber numberWithInteger:0];
}
%end

%hook QMLogManager
-(id) encodeJailBrokenKey:(id)arg1 {
return [NSNumber numberWithInteger:0];
arg1 = [NSNumber numberWithInteger:0];
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"joo"] ?: @(NO)) boolValue];

if (Enable) {
%init(JOO);

}
}

// remove ads

%group GRA
// Gradient Photo Editor remove Ads
%hook APMInAppPurchaseItem
- (bool)isFreeTrial {
    return 1;
}
- (void)setFreeTrial:(bool)arg1 {
    arg1 = 1;
    %orig;
}
%end

%hook tw3haa
- (void)subscriptionAction:(id)arg1 {
}
%end

%hook TLSubscribeManager
- (id)purchaserInfo {
    return %orig;
}
- (bool)hasActiveSubscription {
    return 1;
}
- (id)yearly120Price {
    return %orig;
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"gra"] ?: @(NO)) boolValue];

if (Enable) {
%init(GRA,tw3haa = objc_getClass("Gradient.SettingsViewController"));

}
}

%group CUT
// Cut for Stories remove Ads
%hook APMASIdentifierManager
- (bool)isAdvertisingTrackingEnabled {
    return 0;
}
%end

%hook GADUnifiedNativeAdView
- (void)setAdvertiserView:(id)arg1 {
}
%end

%hook GADAdPresenter
- (void)setAd:(id)arg1 {
}
%end

%hook GADRequestStatisticsSignals
- (void)setAds:(id)arg1 forRequest:(id)arg2 {
}
%end

%hook GADInstreamAdView
- (void)setAd:(id)arg1 {
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"cut"] ?: @(NO)) boolValue];

if (Enable) {
%init(CUT);

}
}

%group HTM
// iHost - HTML Live remove Ads
%hook GADOpener
- (void)setAdView:(id)arg1 {
}
%end

%hook GADOverlayView
- (void)setAdView:(id)arg1 {
}
%end

%hook GADAdAppViewController
- (void)setAdView:(id)arg1 {
}
%end

%hook GADBrowserViewController
- (void)setAdView:(id)arg1 {
}
%end

%hook GADRewardBasedVideoAd
- (void)adFetcher:(id)arg1 didFetchAd:(id)arg2 {
}
- (void)setAdFetcher:(id)arg1 {
}
%end

%hook GADSlot
- (void)adFetcher:(id)arg1 didFailToFetchAd:(id)arg2 withError:(id)arg3 responseCode:(unsigned long long)arg4 {
}
- (void)setAdFetcher:(id)arg1 {
}
- (void)adFetcher:(id)arg1 didFetchAd:(id)arg2 {
}
%end

%hook GADAdFetcher
- (void)setAd:(id)arg1 {
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"htm"] ?: @(NO)) boolValue];

if (Enable) {
%init(HTM);

}
}

// ANDM remove ads
%group ANM
%hook GADVideoController
- (void)setMute:(bool)arg1 {
}
%end

%hook GADVideoPlayer
- (void)setMuted:(bool)arg1 userInitiated:(bool)arg2 {
    arg1 = 0;
    %orig;
}
%end

%hook GADAdVideoController
- (void)setVideoMuted:(bool)arg1 {
    arg1 = 0;
    %orig;
}
- (void)setMute:(bool)arg1 {
}
%end

%hook GADMediationRewardedAdRenderer
- (bool)adMuted {
    return %orig;
}
%end

%hook GADMediatedAdRenderer
- (bool)adMuted {
    return %orig;
}
%end

%hook GADVideoOptions
- (void)setStartMuted:(bool)arg1 {
    arg1 = 0;
    %orig;
}
- (bool)startMuted {
    return 0;
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"anm"] ?: @(NO)) boolValue];

if (Enable) {
%init(ANM);

}
}

// YouTube remove ads

%group YOU
%hook YTSingleVideo
- (bool)isPlayableInBackground {
    return 1;
}
%end

%hook YTPlaybackData
- (bool)isPlayableInBackground {
    return 1;
}
%end

%hook YTPlaybackBackgroundTaskController
- (bool)isContentPlayableInBackground {
    return 1;
}
%end

%hook YTIPlayerResponse
- (bool)isPlayableInBackground {
    return 1;
}
%end

%hook YTIPlayabilityStatus
- (bool)isPlayableInBackground {
    return 1;
}
%end

%hook YTPlaybackBackgroundTaskController
- (void)setContentPlayableInBackground:(bool)arg1 {
    arg1 = 1;
    %orig;
}
%end

%hook YTIPlayerResponse
- (bool)isMonetized {
    return 0;
}
%end

%hook YTVideoAdsController
+(bool) isAdSenseAdTag:(id)arg
 {
    return 0;
}

%end

%hook YTVideoAdsController
-(id) videoAdsService {
    return %orig;
}

%end

%hook YTPlayerViewController
-(bool) isPlayingAd {
    return 0;

}

%end

%hook YTDataUtils
+(id) identifierForAdvertising {
    return %orig;
}
%end

%hook YTVASTAd
-(bool) isForecastingAd {
    return 0;
}
%end

%hook YTVideoAdsController
-(id) init {
    return %orig;
}
%end

%hook YTVASTAd
-(bool) isSkippable {
    return 1;
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"you"] ?: @(NO)) boolValue];

if (Enable) {
%init(YOU);

}
}

// remove ads 365Scores

%group SCO
%hook SubscriptionsManger
-(bool) userHasNoAdsPackage
{
    return true;
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"sco"] ?: @(NO)) boolValue];

if (Enable) {
%init(SCO);

}
}
// Reomve Ads iCleanerPro
%group CIC
%hook GADAd
- (id)initWithContext:(id)arg1 responseInfo:(id)arg2 {
    return NULL;
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"cic"] ?: @(NO)) boolValue];

if (Enable) {
%init(CIC);

}
}
// حذف اعلانات برنامج المصلي
%group MOS
%hook STAAdCache
-(bool) removeOldestAd
{
    return true;
}
%end

%hook CHBDisplayManager
- (void)removeAd:(id)arg1 callDelegate:(bool)arg2 {
    arg2 = 1;
    %orig;
}
- (void)removeAd:(id)arg1 {
}
- (void)doRemoveAd:(id)arg1 callDelegate:(bool)arg2 {
    arg2 = 1;
    %orig;
}
%end

%hook AdMarvelOverlayViewCustomVideo
- (void)removeAdSkipLabel {
}
%end

%hook OMIDInmobiAdSessionRegistry
- (void)removeAdSession:(id)arg1 {
}
%end

%hook GADOMIDAdSessionRegistry
- (void)removeAdSession:(id)arg1 {
}
%end

%hook AlMosalyHomeViewController
- (void)removeAdsAfterPurchasing {
}
%end

%hook MPCollectionViewAdPlacer
- (void)adPlacer:(id)arg1 didRemoveAdsAtIndexPaths:(id)arg2 {
}
%end

%hook MPTableViewAdPlacer
- (void)adPlacer:(id)arg1 didRemoveAdsAtIndexPaths:(id)arg2 {
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"mos"] ?: @(NO)) boolValue];

if (Enable) {
   %init(MOS,  AlMosalyHomeViewController = objc_getClass("AlMosaly.HomeViewController"));

}
}

// remove ads Grindr
%group GRI
%hook grindrxRootContainerViewController
-(bool)isNoAds
{
return true;
}

-(void) setAllowBannerAd:(bool)arg1
{
arg1 = false;
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.yourepo.tw3hame"];
bool Enable = [([Key objectForKey:@"gri"] ?: @(NO)) boolValue];

if (Enable) {
%init(GRI, grindrxRootContainerViewController = objc_getClass("grindrx.RootContainerViewController"));

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