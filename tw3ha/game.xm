#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <UIKit/UIControl.h>
#import <Cephei/HBPreferences.h>
#import <spawn.h>
#import <substrate.h>
#import <Twitter/Twitter.h>






%config(generator=internal)


// haker game

// Hide jailbraeck BleachBraveSouls

%group BLA
%hook SmartBeatUtil
+(bool) isJailbroken
{
    return FALSE;
}
%end
%hook AppsFlyerUtils
+(bool) isJailBreakon
{
    return FALSE;
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"bla"] ?: @(NO)) boolValue];

if (Enable) {
%init(BLA);

}
}

// coins 9999999999 POU

%group POU
%hook Coins
-(int) have
{
    return 999999999;
}
%end
%end
%ctor {

// Enable or Disable Switch
HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.github.tw3to.tw3ha"];
bool Enable = [([Key objectForKey:@"pou"] ?: @(NO)) boolValue];

if (Enable) {
%init(POU);

}
}