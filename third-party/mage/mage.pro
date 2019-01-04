
QT       -= core gui

TARGET = mage
TEMPLATE = lib
CONFIG += staticlib

INCLUDEPATH += ../../include
INCLUDEPATH += ../HTS_engine

DEFINES += QT_DEPRECATED_WARNINGS

SOURCES += \
    Vocoder.cpp \
    ModelQueue.cpp \
    Model.cpp \
    mlsacheck-sptk.cpp \
    MathFunctions.cpp \
    mage.cpp \
    LabelQueue.cpp \
    Label.cpp \
    hts.cpp \
    getmem-sptk.cpp \
    FrameQueue.cpp \
    fft-sptk.cpp

HEADERS += \
    Vocoder.h \
    State.h \
    pa_memorybarrier.h \
    MSDistribution.h \
    ModelQueue.h \
    Model.h \
    mlsacheck-sptk.h \
    MemQueue.h \
    MathFunctions.h \
    mage.h \
    LabelQueue.h \
    Label.h \
    hts.h \
    getmem-sptk.h \
    FrameQueue.h \
    Frame.h \
    fft-sptk.h \
    Distribution.h \
    Constants.h
unix {
    target.path = /usr/lib
    INSTALLS += target
}

DISTFILES += \
    COPYING_SPTK \
    COPYING
