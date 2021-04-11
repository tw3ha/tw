export THEOS=/tw/theos
export SIMJECT ?= 0
export ROOTLESS ?= 0
export NO_DEPENDENCIES ?= 0
export DEBUG_LOGGING ?= 0
export NO_CEPHEI ?= 0
export NO_ROCKETBOOTSTRAP ?= 0
export NO_LIBCSCOLORPICKER ?= 0

ifeq ($(SIMJECT),1)
export NO_CEPHEI = 1
export NO_ROCKETBOOTSTRAP = 1
export ARCHS = x86_64 i386
else
export ARCHS = arm64 arm64e armv7 armv7s
endif

INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = tw3ha

tw3ha_FILES = $(wildcard *.xm) $(wildcard *.m)
tw3ha_CFLAGS = -fobjc-arc
tw3ha_EXTRA_FRAMEWORKS += Cephei
tw3ha_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += tw3ha
include $(THEOS_MAKE_PATH)/aggregate.mk
