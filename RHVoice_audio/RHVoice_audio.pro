
QT       -= core gui

TARGET = RHVoice_audio
TEMPLATE = lib

include($$PWD/../include/RHVoice_include.pri)
include($$PWD/../pri/Functions.pri)

DEFINES += RHVOICE_AUDIO_LIBRARY
DEFINES += QT_DEPRECATED_WARNINGS

SOURCES += \
    audio.cpp

HEADERS += \
    playback_stream_impl.hpp \
    library.hpp

CheckPKG(libpulse-simple) {
    DEFINES += WITH_PULSE=1
    SOURCES += pulse.cpp
    HEADERS += pulse.hpp
    LIBS += -lpulse-simple
}

CheckPKG(ao) {
    DEFINES += WITH_LIBAO=1
    SOURCES += libao.cpp
    HEADERS += libao.hpp
    LIBS += -lao
}

CheckPKG(portaudio-2.0) {
    DEFINES += WITH_PORTAUDIO=1
    SOURCES += portaudio.cpp
    HEADERS += portaudio.hpp
    LIBS += -lportaudio
}

unix {
    target.path = /usr/lib
    INSTALLS += target
}
