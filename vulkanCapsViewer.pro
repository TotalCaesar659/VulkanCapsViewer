# ----------------------------------------------------
# This file is generated by the Qt Visual Studio Add-in.
# ------------------------------------------------------

TEMPLATE = app
TARGET = vulkanCapsViewer
DESTDIR = ./Win32/Release
QT += core network widgets gui
CONFIG += c++11
#CONFIG += release bad for debugging
DEFINES += QT_DLL QT_NETWORK_LIB QT_WIDGETS_LIB
INCLUDEPATH += ./GeneratedFiles \
    . \
    ./GeneratedFiles/Release
INCLUDEPATH += "./external"
win32 {
    DEFINES += WIN64
    DEFINES += VK_USE_PLATFORM_WIN32_KHR
    LIBS += "$$PWD/libs/vulkan/vulkan-1.lib"
    LIBS += Advapi32.lib
}
linux:!android {
    LIBS += "$$PWD/libs/vulkan/libvulkan.so"
    QT += x11extras
    #x11 {
        DEFINES += VK_USE_PLATFORM_XCB_KHR
    #}
    #todo: other linux targets
}
android {
    DEFINES += VK_NO_PROTOTYPES
    DEFINES += VK_USE_PLATFORM_ANDROID_KHR
    QT += androidextras
    CONFIG += mobility
    MOBILITY =
}
DEPENDPATH += .
MOC_DIR += ./GeneratedFiles/release
OBJECTS_DIR += release
UI_DIR += ./GeneratedFiles
RCC_DIR += ./GeneratedFiles
include(vulkanCapsViewer.pri)
win32:RC_FILE = vulkanCapsViewer.rc

HEADERS +=

SOURCES +=

DISTFILES += \
    android/AndroidManifest.xml \
    android/gradle/wrapper/gradle-wrapper.jar \
    android/gradlew \
    android/res/values/libs.xml \
    android/build.gradle \
    android/gradle/wrapper/gradle-wrapper.properties \
    android/gradlew.bat

ANDROID_PACKAGE_SOURCE_DIR = $$PWD/android
