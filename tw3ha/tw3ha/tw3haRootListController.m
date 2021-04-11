#include "tw3haRootListController.h"
#import <Preferences/PSSpecifier.h>


@implementation tw3haRootListController

#define kPreferencesPath @"/var/mobile/Library/Preferences/com.github.tw3to.tw3ha.plist"

#define kPreferencesChanged "com.github.tw3to.tw3ha-preferencesChanged"

#define PLIST_PATH @"/var/mobile/Library/Preferences/com.github.tw3to.tw3ha.plist"

#define kBundlePath @"/Library/PreferenceBundles/tw3ha.bundle"

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
		_specifiers = [self loadSpecifiersFromPlistName:@"tw3ha" target:self];
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

- (void)res {
    NSFileManager *manager = [NSFileManager defaultManager];
    NSError *error = nil;
    [manager removeItemAtPath:@"/var/mobile/Library/Preferences/com.github.tw3to.tw3ha.plist" error:&error];
    pid_t pid;
    const char* args[] = {"killall", "backboardd", NULL};
    posix_spawn(&pid, "/usr/bin/killall", NULL, NULL, (char* const*)args, NULL);

}


-(void)a {
    pid_t pid;
    const char* args[] = {"killall", "backboardd", NULL};
    posix_spawn(&pid, "/usr/bin/killall", NULL, NULL, (char* const*)args, NULL);
}

- (void)viewDidLoad {
	[super viewDidLoad];
}
- (void)sn {
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://www.snapchat.com/add/twha610"] options:@{} completionHandler:nil];
}

- (void)pa {
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://www.Paypal.Me/tw3ha/"] options:@{} completionHandler:nil];
}

@end
