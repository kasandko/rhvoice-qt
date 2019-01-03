
QT       -= core gui

TARGET = RHVoice
TEMPLATE = lib

INCLUDEPATH += ../include
INCLUDEPATH += ../third-party/utf8
INCLUDEPATH += ../third-party/rapidxml

VERSION = 3.0.0
DEFINES += VERSION='\\\"3.0.0\\\"'
DEFINES += RHVOICE_LIBRARY
DEFINES += QT_DEPRECATED_WARNINGS

SOURCES += \
    lib.cpp

win32:DEF_FILE = lib.def

unix {
    target.path = /usr/lib
    INSTALLS += target
}

DISTFILES += \
    lib.def

win32:CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/../RHVoice_core/release/ -lRHVoice_core
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../RHVoice_core/debug/ -lRHVoice_core
else:unix: LIBS += -L$$OUT_PWD/../RHVoice_core/ -lRHVoice_core

INCLUDEPATH += $$PWD/../RHVoice_core
DEPENDPATH += $$PWD/../RHVoice_core
