#include "AppTRootListController.h"
#import <Preferences/PSSpecifier.h>

@implementation AppTRootListController

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
		_specifiers = [self loadSpecifiersFromPlistName:@"AppT" target:self];
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

- (void)pa {
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://www.Paypal.Me/tw3ha/"] options:@{} completionHandler:nil];
}

- (void)por {
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://apps.apple.com/app/infuse-pro-6/id1444671526?l"] options:@{} completionHandler:nil];
}

- (void)imo {
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://apps.apple.com/app/imo-video-calls-and-chat/id336435697?l"] options:@{} completionHandler:nil];
}

- (void)ito {
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://apps.apple.com/app/itranslate-translator/id288113403?l"] options:@{} completionHandler:nil];
}

- (void)jio {
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://apps.apple.com/app/jiosaavn-music-podcasts/id441813332"] options:@{} completionHandler:nil];
}

- (void)joo {
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://apps.apple.com/app/spotify-music-and-podcasts/id324684580?l"] options:@{} completionHandler:nil];
}

- (void)koo {
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://apps.apple.com/app/smart-kodi-remote/id1059693551"] options:@{} completionHandler:nil];
}

- (void)moo {
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://mediaboxhd.net/#media_v4"] options:@{} completionHandler:nil];
}

- (void)ooo {
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://apps.apple.com/us/app/geist-memorado-brain-mind/id897062509"] options:@{} completionHandler:nil];
}

- (void)oop {
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://apps.apple.com/app/mobile-master-cpu-master/id1329937809"] options:@{} completionHandler:nil];
}

- (void)oor {
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://apps.apple.com/app/ornet-private-onion-browser/id1336941722"] options:@{} completionHandler:nil];
}

- (void)ooi {
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://apps.apple.com/app/planes-live-flight-radar/id1097815000"] options:@{} completionHandler:nil];
}

- (void)oob {
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://apps.apple.com/app/plex-movies-tv-music-more/id383457673"] options:@{} completionHandler:nil];
}

- (void)sou {
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://apps.apple.com/app/soundcloud-music-audio/id336353151"] options:@{} completionHandler:nil];
}

- (void)tou {
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://apps.apple.com/app/tiksave-repost-for-tik-tok/id1511303179"] options:@{} completionHandler:nil];
}

- (void)tin {
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://apps.apple.com/app/tinder/id547702041"] options:@{} completionHandler:nil];
}


@end
