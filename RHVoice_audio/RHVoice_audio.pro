#-------------------------------------------------
#
# Project created by QtCreator 2019-01-03T15:03:03
#
#-------------------------------------------------

QT       -= core gui

TARGET = RHVoice_audio
TEMPLATE = lib
INCLUDEPATH += ../include

DEFINES += RHVOICE_AUDIO_LIBRARY
DEFINES += QT_DEPRECATED_WARNINGS

SOURCES += \
    pulse.cpp \
    portaudio.cpp \
    libao.cpp \
    audio.cpp

HEADERS += \
    pulse.hpp \
    portaudio.hpp \
    playback_stream_impl.hpp \
    library.hpp \
    libao.hpp

unix {
    target.path = /usr/lib
    INSTALLS += target
}
