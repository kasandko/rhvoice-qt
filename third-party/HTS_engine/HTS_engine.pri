include($$PWD/../../pri/Configure.pri)

INCLUDEPATH += $$PWD/

SOURCES += \
    $$PWD/HTS_vocoder.c \
    $$PWD/HTS_sstream.c \
    $$PWD/HTS_pstream.c \
    $$PWD/HTS_model.c \
    $$PWD/HTS_misc.c \
    $$PWD/HTS_label.c \
    $$PWD/HTS_gstream.c \
    $$PWD/HTS_engine.c \
    $$PWD/HTS_audio.c

HEADERS += \
    $$PWD/utils.h \
    $$PWD/HTS_hidden.h \
    $$PWD/HTS_engine.h

!isEmpty(ENABLE_MAGE):contains(ENABLE_MAGE, 1) {
    SOURCES += \
    $$PWD/HTS106_vocoder.c \
    $$PWD/HTS106_sstream.c \
    $$PWD/HTS106_pstream.c \
    $$PWD/HTS106_model.c \
    $$PWD/HTS106_misc.c \
    $$PWD/HTS106_label.c \
    $$PWD/HTS106_gstream.c \
    $$PWD/HTS106_engine.c \
    $$PWD/HTS106_audio.c

    HEADERS += \
    $$PWD/HTS106_hidden.h \
    $$PWD/HTS106_engine.h
}

DISTFILES += \
    $$PWD/COPYING
