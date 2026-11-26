TARGET := iphone:clang:latest:13.0
ARCHS := arm64

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = TuanModAOV

TuanModAOV_FILES = Tweak.xm
TuanModAOV_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk
