export ARCHS = arm64 arm64e armv7 armv7s
include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = tw3ha

tw3ha_FILES = tw3haRootListController.m AppRootListController.m AppTRootListController.m NoAdsRootListController.m AppVPNRootListController.m DesignRootListController.m DevelopersRootListController.m GameRootListController.m
tw3ha_INSTALL_PATH = /Library/PreferenceBundles
tw3ha_FRAMEWORKS = UIKit
tw3ha_PRIVATE_FRAMEWORKS = Preferences
tw3ha_CFLAGS = -fobjc-arc
tw3ha_EXTRA_FRAMEWORKS = Cephei CepheiPrefs

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/tw3ha.plist$(ECHO_END)
