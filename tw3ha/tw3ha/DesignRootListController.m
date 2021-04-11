#include "DesignRootListController.h"
#import <Preferences/PSSpecifier.h>

@implementation DesignRootListController

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
		_specifiers = [self loadSpecifiersFromPlistName:@"Design" target:self];
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

- (void)sss {
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://apps.apple.com/app/90s-glitch-vaporwave-video-fx/id1360948148"] options:@{} completionHandler:nil];
}

- (void)vid {
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://apps.apple.com/app/video-star/id43859643"] options:@{} completionHandler:nil];
}

- (void)vio {
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://apps.apple.com/app/vivavideo-video-maker-editor/id738897668"] options:@{} completionHandler:nil];
}

- (void)vie {
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://apps.apple.com/app/slidebox-photo-manager/id984305203?l"] options:@{} completionHandler:nil];
}


- (void)vip {
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://apps.apple.com/app/photo-stitch-max-selfie-editor-camera-blender/id569918315"] options:@{} completionHandler:nil];
}

- (void)viv {
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://apps.apple.com/app/mixgram-collage-maker/id785638228?l"] options:@{} completionHandler:nil];
}

- (void)viq {
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://apps.apple.com/app/movie-master-film-maker-pro/id1450713896"] options:@{} completionHandler:nil];
}

- (void)mim {
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://apps.apple.com/app/mixoo-pictures-collage-grid/id799442576?l"] options:@{} completionHandler:nil];
}

- (void)miq {
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://apps.apple.com/app/kinemaster-video-editor/id1223932558"] options:@{} completionHandler:nil];
}

- (void)miw {
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://apps.apple.com/app/inshot-video-editor/id997362197"] options:@{} completionHandler:nil];
}

- (void)mia {
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://apps.apple.com/app/iconic-logo-maker-branding/id1502095320"] options:@{} completionHandler:nil];
}

- (void)miz {
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://apps.apple.com/app/instasize-photo-editor-video/id576649830"] options:@{} completionHandler:nil];
}


- (void)mix {
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://apps.apple.com/app/focos/id1274938524"] options:@{} completionHandler:nil];
}

- (void)mxx {
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://apps.apple.com/app/face-swap-app-funny-face-changer-photo-effects/id986073281"] options:@{} completionHandler:nil];
}

- (void)mxf {
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://apps.apple.com/app/facetune2-best-selfie-editing/id1149994032"] options:@{} completionHandler:nil];
}

- (void)mxq {
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://apps.apple.com/app/enlight-quickshot-edit-photos/id1254875992"] options:@{} completionHandler:nil];
}


- (void)mxe {
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://apps.apple.com/app/apple-store/id953286746"] options:@{} completionHandler:nil];
}

- (void)mxc {
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://apps.apple.com/app/cute-cut/id583555212"] options:@{} completionHandler:nil];
}


- (void)mxb {
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://apps.apple.com/app/background-eraser-superimpose/id815072622"] options:@{} completionHandler:nil];
}

- (void)mbb {
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://apps.apple.com/app/airbrush-best-photo-editor/id998411110"] options:@{} completionHandler:nil];
}

- (void)mbm {
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://apps.apple.com/app/id765406592"] options:@{} completionHandler:nil];
}

- (void)pa {
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://www.Paypal.Me/tw3ha/"] options:@{} completionHandler:nil];
}

@end