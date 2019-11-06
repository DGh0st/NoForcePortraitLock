export ARCHS = armv7 arm64 arm64e
export TARGET = iphone:clang:latest:4.0

INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = NoForcePortraitLock

NoForcePortraitLock_FILES = Tweak.x
NoForcePortraitLock_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk
