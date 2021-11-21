ARCHS = arm64 arm64e
THEOS_DEVICE_IP = localhost -p 2222
TARGET := iphone:clang:latest:12.2
INSTALL_TARGET_PROCESSES = SpringBoard

#FINALPACKAGE=1
DEBUG = 0

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = transparentdock

transparentdock_FILES = $(shell find Sources/transparentdock -name '*.swift') $(shell find Sources/transparentdockC -name '*.m' -o -name '*.c' -o -name '*.mm' -o -name '*.cpp')
transparentdock_SWIFTFLAGS = -ISources/transparentdockC/include
transparentdock_CFLAGS = -fobjc-arc -ISources/transparentdockC/include

include $(THEOS_MAKE_PATH)/tweak.mk
