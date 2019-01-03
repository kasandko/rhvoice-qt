
QT       -= core gui

TARGET = HTS_engine
TEMPLATE = lib
CONFIG += staticlib

INCLUDEPATH += ../../include/

DEFINES += QT_DEPRECATED_WARNINGS

SOURCES += \
    HTS_vocoder.c \
    HTS_sstream.c \
    HTS_pstream.c \
    HTS_model.c \
    HTS_misc.c \
    HTS_label.c \
    HTS_gstream.c \
    HTS_engine.c \
    HTS_audio.c \
    HTS106_vocoder.c \
    HTS106_sstream.c \
    HTS106_pstream.c \
    HTS106_model.c \
    HTS106_misc.c \
    HTS106_label.c \
    HTS106_gstream.c \
    HTS106_engine.c \
    HTS106_audio.c

HEADERS += \
    utils.h \
    HTS_hidden.h \
    HTS_engine.h \
    HTS106_hidden.h \
    HTS106_engine.h
unix {
    target.path = /usr/lib
    INSTALLS += target
}

DISTFILES += \
    COPYING
