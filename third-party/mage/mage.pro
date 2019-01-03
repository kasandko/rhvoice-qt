
QT       -= core gui

TARGET = mage
TEMPLATE = lib
CONFIG += staticlib

INCLUDEPATH += ../../include

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


win32:CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/../HTS_engine/release/ -lHTS_engine
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../HTS_engine/debug/ -lHTS_engine
else:unix: LIBS += -L$$OUT_PWD/../HTS_engine/ -lHTS_engine

INCLUDEPATH += $$PWD/../HTS_engine
DEPENDPATH += $$PWD/../HTS_engine

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../HTS_engine/release/libHTS_engine.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../HTS_engine/debug/libHTS_engine.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../HTS_engine/release/HTS_engine.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../HTS_engine/debug/HTS_engine.lib
else:unix: PRE_TARGETDEPS += $$OUT_PWD/../HTS_engine/libHTS_engine.a
