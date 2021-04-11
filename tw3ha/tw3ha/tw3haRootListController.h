#import <Preferences/PSListController.h>
#import <Preferences/PSSpecifier.h>
#import <CepheiPrefs/HBRootListController.h>
#import <CepheiPrefs/HBAppearanceSettings.h>
#import <Cephei/HBPreferences.h>
#import <spawn.h>
#import <Social/SLComposeViewController.h>
#import <Social/SLServiceTypes.h>
#import <Twitter/Twitter.h>
#import <Preferences/PSSpecifier.h>
#import <objc/runtime.h>
#import <Preferences/PSTableCell.h>
#import <Social/SLComposeViewController.h>
#import <Social/SLServiceTypes.h>
#import <Twitter/Twitter.h>
#import <Preferences/PSHeaderFooterView.h>

@interface tw3haRootListController : HBRootListController {

    UITableView * _table;

}

@property (nonatomic, retain) UIBarButtonItem *killButton;
@property (nonatomic, retain) UIView *headerView;
@property (nonatomic, retain) UIImageView *headerImageView;
@property (nonatomic, retain) UILabel *titleLabel;
@property (nonatomic, retain) UIImageView *iconView;
@property (nonatomic, retain) NSArray *versionArray;

@end

