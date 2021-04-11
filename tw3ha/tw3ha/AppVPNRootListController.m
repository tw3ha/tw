#include "AppVPNRootListController.h"
#import <Preferences/PSSpecifier.h>

@implementation AppVPNRootListController


    - (instancetype)init {
        self = [super init];
        if (self) {
            HBAppearanceSettings *appearanceSettings = [[HBAppearanceSettings alloc] init];
            self.hb_appearanceSettings = appearanceSettings;
        }
        return self;
    }

- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [self loadSpecifiersFromPlistName:@"AppVPN" target:self];
	}

	return _specifiers;
}

    + (NSString *)hb_specifierPlist {
        return @"tw3ha";

    }


- (void)shareTapped {
    SLComposeViewController * composeController = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeTwitter];
    [composeController setInitialText:@"I'm using #tw3ha, an awesome Cydia tweak by @1_lj6 Get it now!"];

    [self.parentController presentViewController:composeController animated:YES completion:nil];

}

-(void)A {
    pid_t pid;
    const char* args[] = {"killall", "backboardd", NULL};
    posix_spawn(&pid, "/usr/bin/killall", NULL, NULL, (char* const*)args, NULL);
}

- (void)viewDidLoad {
	[super viewDidLoad];
}

- (void)fir {
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://apps.apple.com/app/firstvpn-wifi-security-master/id1403281172"] options:@{} completionHandler:nil];
}

- (void)git {
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://apps.apple.com/app/get-vpn-best-fast-vpn-proxy/id1422378843"] options:@{} completionHandler:nil];
}

- (void)hex {
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://apps.apple.com/app/hexatech-unlimited-vpn-proxy/id1053874290"] options:@{} completionHandler:nil];
}

- (void)pro {
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://apps.apple.com/us/app/vpn-proxy-master-super-vpn/id1025707485"] options:@{} completionHandler:nil];
}


- (void)poo {
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://apps.apple.com/app/vpn-proxy-super-unlimited/id1248773446"] options:@{} completionHandler:nil];
}

- (void)tur {
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://apps.apple.com/app/turbo-vpn-private-browser/id1365309175"] options:@{} completionHandler:nil];
}

- (void)soo {
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://apps.apple.com/app/solo-vpn-pro-bettervpn-proxy/id1439297761"] options:@{} completionHandler:nil];
}

- (void)str {
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://apps.apple.com/app/star-vpn-unlimited-wifi-proxy/id1115864690"] options:@{} completionHandler:nil];
}

- (void)ptr {
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://apps.apple.com/app/psiphon/id1276263909"] options:@{} completionHandler:nil];
}

- (void)pa {
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://www.Paypal.Me/tw3ha/"] options:@{} completionHandler:nil];
}

@end