#include "GameRootListController.h"
#import <Preferences/PSSpecifier.h>

@implementation GameRootListController

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
		_specifiers = [self loadSpecifiersFromPlistName:@"Game" target:self];
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

- (void)pou {
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://apps.apple.com/app/pou/id575154654"] options:@{} completionHandler:nil];
}

- (void)bou {
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://apps.apple.com/app/bleach-brave-souls/id1003168863"] options:@{} completionHandler:nil];
}

- (void)pa {
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://www.Paypal.Me/tw3ha/"] options:@{} completionHandler:nil];
}

@end