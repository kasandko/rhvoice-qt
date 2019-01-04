INCLUDEPATH += $$PWD/

SOURCES += \
    $$PWD/Vocoder.cpp \
    $$PWD/ModelQueue.cpp \
    $$PWD/Model.cpp \
    $$PWD/mlsacheck-sptk.cpp \
    $$PWD/MathFunctions.cpp \
    $$PWD/mage.cpp \
    $$PWD/LabelQueue.cpp \
    $$PWD/Label.cpp \
    $$PWD/hts.cpp \
    $$PWD/getmem-sptk.cpp \
    $$PWD/FrameQueue.cpp \
    $$PWD/fft-sptk.cpp

HEADERS += \
    $$PWD/Vocoder.h \
    $$PWD/State.h \
    $$PWD/pa_memorybarrier.h \
    $$PWD/MSDistribution.h \
    $$PWD/ModelQueue.h \
    $$PWD/Model.h \
    $$PWD/mlsacheck-sptk.h \
    $$PWD/MemQueue.h \
    $$PWD/MathFunctions.h \
    $$PWD/mage.h \
    $$PWD/LabelQueue.h \
    $$PWD/Label.h \
    $$PWD/hts.h \
    $$PWD/getmem-sptk.h \
    $$PWD/FrameQueue.h \
    $$PWD/Frame.h \
    $$PWD/fft-sptk.h \
    $$PWD/Distribution.h \
    $$PWD/Constants.h

DISTFILES += \
    $$PWD/COPYING_SPTK \
    $$PWD/COPYING
