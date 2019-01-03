
QT       -= core gui

TARGET = sonic
TEMPLATE = lib
CONFIG += staticlib

DEFINES += QT_DEPRECATED_WARNINGS

SOURCES += \
    sonic.c

HEADERS += \
    sonic.h
unix {
    target.path = /usr/lib
    INSTALLS += target
}

DISTFILES += \
    COPYING
