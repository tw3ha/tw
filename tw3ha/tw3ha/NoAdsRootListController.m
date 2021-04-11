#include "NoAdsRootListController.h"
#import <Preferences/PSSpecifier.h>

@implementation NoAdsRootListController

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
		_specifiers = [self loadSpecifiersFromPlistName:@"NoAds" target:self];
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

- (void)mos {
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://apps.apple.com/app/id438091943"] options:@{} completionHandler:nil];
}

- (void)and {
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://apps.apple.com/app/andm/id1216987763"] options:@{} completionHandler:nil];
}

- (void)cat {
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://apps.apple.com/us/app/cutstory-story-video-editor/id917630934"] options:@{} completionHandler:nil];
}

- (void)cai {
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://apps.apple.com/app/grindr-gay-chat/id319881193?l"] options:@{} completionHandler:nil];
}


- (void)caq {
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://apps.apple.com/app/gradient-photo-editor/id1466097469"] options:@{} completionHandler:nil];
}

- (void)caa {
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"cydia://url/https://cydia.saurik.com/api/share#?source=https://ib-soft.net/cydia/"] options:@{} completionHandler:nil];
}

- (void)hho {
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://apps.apple.com/app/ihost-html-live/id1338576676"] options:@{} completionHandler:nil];
}


- (void)hhy {
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://apps.apple.com/app/youtube-watch-listen-stream/id544007664"] options:@{} completionHandler:nil];
}

- (void)hyy {
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://apps.apple.com/app/365scores-live-scores/id571801488"] options:@{} completionHandler:nil];
}

- (void)pa {
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://www.Paypal.Me/tw3ha/"] options:@{} completionHandler:nil];
}
@end