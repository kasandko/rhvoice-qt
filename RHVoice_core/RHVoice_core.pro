QT       -= core gui

TARGET = RHVoice_core
TEMPLATE = lib

INCLUDEPATH += ../include
INCLUDEPATH += ../third-party/utf8
INCLUDEPATH += ../third-party/rapidxml

VERSION = 1.1.0
DEFINES += VERSION='\\\"1.1.0\\\"'
DEFINES += ENABLE_MAGE=1
DEFINES += RHVOICE_CORE_LIBRARY
DEFINES += QT_DEPRECATED_WARNINGS

win32: DEFINES += DATA_PATH='\\\"\\\\data\\\\\\\"'
else:unix: DEFINES +=DATA_PATH=""

win32: DEFINES += CONFIG_PATH='\\\"\\\\config\\\\\\\"'
else:unix: DEFINES +=CONFIG_PATH=""

SOURCES += \
    core/voice.cpp \
    core/utterance.cpp \
    core/userdict.cpp \
    core/unidata.cpp \
    core/unicode.cpp \
    core/ukrainian.cpp \
    core/tatar.cpp \
    core/std_hts_engine_impl.cpp \
    core/speech_stream.cpp \
    core/speech_processor.cpp \
    core/russian.cpp \
    core/relation.cpp \
    core/question_matcher.cpp \
    core/phoneme_set.cpp \
    core/path.cpp \
    core/params.cpp \
    core/mage_hts_engine_impl.cpp \
    core/lts.cpp \
    core/limiter.cpp \
    core/language.cpp \
    core/kyrgyz.cpp \
    core/item.cpp \
    core/io.cpp \
    core/ini_parser.cpp \
    core/hts_labeller.cpp \
    core/hts_label.cpp \
    core/hts_engine_impl.cpp \
    core/hts_engine_call.cpp \
    core/georgian.cpp \
    core/fst.cpp \
    core/esperanto.cpp \
    core/english.cpp \
    core/engine.cpp \
    core/dtree.cpp \
    core/document.cpp \
    core/config.cpp \
    core/bpf.cpp \
    core/userdict_parser.c

HEADERS += \
    core/userdict_parser.h \
    core/userdict_parser.g

unix {
    target.path = /usr/lib
    INSTALLS += target
}

win32:CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/../third-party/HTS_engine/release/ -lHTS_engine
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../third-party/HTS_engine/debug/ -lHTS_engine
else:unix: LIBS += -L$$OUT_PWD/../third-party/HTS_engine/ -lHTS_engine

INCLUDEPATH += $$PWD/../third-party/HTS_engine
DEPENDPATH += $$PWD/../third-party/HTS_engine

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../third-party/HTS_engine/release/libHTS_engine.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../third-party/HTS_engine/debug/libHTS_engine.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../third-party/HTS_engine/release/HTS_engine.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../third-party/HTS_engine/debug/HTS_engine.lib
else:unix: PRE_TARGETDEPS += $$OUT_PWD/../third-party/HTS_engine/libHTS_engine.a

win32:CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/../third-party/mage/release/ -lmage
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../third-party/mage/debug/ -lmage
else:unix: LIBS += -L$$OUT_PWD/../third-party/mage/ -lmage

INCLUDEPATH += $$PWD/../third-party/mage
DEPENDPATH += $$PWD/../third-party/mage

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../third-party/mage/release/libmage.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../third-party/mage/debug/libmage.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../third-party/mage/release/mage.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../third-party/mage/debug/mage.lib
else:unix: PRE_TARGETDEPS += $$OUT_PWD/../third-party/mage/libmage.a

win32:CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/../third-party/sonic/release/ -lsonic
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../third-party/sonic/debug/ -lsonic
else:unix: LIBS += -L$$OUT_PWD/../third-party/sonic/ -lsonic

INCLUDEPATH += $$PWD/../third-party/sonic
DEPENDPATH += $$PWD/../third-party/sonic

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../third-party/sonic/release/libsonic.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../third-party/sonic/debug/libsonic.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../third-party/sonic/release/sonic.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../third-party/sonic/debug/sonic.lib
else:unix: PRE_TARGETDEPS += $$OUT_PWD/../third-party/sonic/libsonic.a
