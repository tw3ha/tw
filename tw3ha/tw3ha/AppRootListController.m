
#include "AppRootListController.h"
#import <Preferences/PSSpecifier.h>

@implementation AppRootListController

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
			_specifiers = [self loadSpecifiersFromPlistName:@"App" target:self];
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

- (void)ani {
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://apps.apple.com/app/animegt/id1469145270"] options:@{} completionHandler:nil];
}

- (void)boo {
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://apps.apple.com/app/boom-music-player-equalizer/id1065511007"] options:@{} completionHandler:nil];
}


- (void)cam {
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://apps.apple.com/app/camfrog-live-streaming-video/id694578768"] options:@{} completionHandler:nil];
}


- (void)caa {
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://apps.apple.com/app/camscanner-scanner-to-scan-pdf/id388627783"] options:@{} completionHandler:nil];
}

- (void)ccs {
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://apps.apple.com/app/ccsoft-followers-analyzer/id1211389865"] options:@{} completionHandler:nil];
}

- (void)goo {
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://apps.apple.com/app/google-chrome/id535886823"] options:@{} completionHandler:nil];
}

- (void)cll {
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://apps.apple.com/app/id1287969142"] options:@{} completionHandler:nil];
}

- (void)coo {
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://apps.apple.com/app/colorfy-coloring-art-games/id1009442510"] options:@{} completionHandler:nil];
}

- (void)bok {
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://apps.apple.com/app/coloring-book-for-me/id1093108529"] options:@{} completionHandler:nil];
}

- (void)dee {
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://apps.apple.com/app/deezer-music-podcast-player/id292738169"] options:@{} completionHandler:nil];
}

- (void)mix {
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://apps.apple.com/app/dj-mix-pads-2-remix-version/id997700450"] options:@{} completionHandler:nil];
}

- (void)dra {
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://apps.apple.com/app/draftcode-offline-php-ide/id593757593"] options:@{} completionHandler:nil];
}

- (void)daa {
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://apps.apple.com/app/duolingo/id570060128"] options:@{} completionHandler:nil];
}

- (void)evv {
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://apps.apple.com/us/app/evernote/id281796108"] options:@{} completionHandler:nil];
}

- (void)app {
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://apps.apple.com/app/period-tracker-eve/id1002275138"] options:@{} completionHandler:nil];
}

- (void)fan {
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://apps.apple.com/app/fancykey-keyboard-themes/id1073000685"] options:@{} completionHandler:nil];
}

- (void)fir {
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://apps.apple.com/app/firefox-private-safe-browser/id989804926"] options:@{} completionHandler:nil];
}

- (void)foo {
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://apps.apple.com/app/footy-tv/id1226943545?l"] options:@{} completionHandler:nil];
}

- (void)gor {
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://apps.apple.com/app/geozilla/id981856216?l"] options:@{} completionHandler:nil];
}

- (void)ggo {
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://apps.apple.com/app/glow-period-fertility-tracker/id638021335"] options:@{} completionHandler:nil];
}

- (void)ggu {
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://apps.apple.com/app/guitar-real-games-lessons/id1365011081?l"] options:@{} completionHandler:nil];
}

- (void)hto {
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://apps.apple.com/app/hot-8-yoga-studios/id613553469?l"] options:@{} completionHandler:nil];
}

- (void)huo {
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://apps.apple.com/app/hungama-music-songs-radio/id414009038?l"] options:@{} completionHandler:nil];
}

- (void)hho {
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://apps.apple.com/app/hype-type-moving-text-photo-s/id1152687277?l"] options:@{} completionHandler:nil];
}

- (void)pa {
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://www.Paypal.Me/tw3ha/"] options:@{} completionHandler:nil];
}

@end