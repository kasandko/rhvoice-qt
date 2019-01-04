QT       -= core gui

TARGET = RHVoice_core
TEMPLATE = lib

include($$PWD/../include/RHVoice_include.pri)
include($$PWD/../third-party/sonic/sonic.pri)
include($$PWD/../third-party/HTS_engine/HTS_engine.pri)
include($$PWD/../third-party/utf8/utf8.pri)
include($$PWD/../third-party/rapidxml/rapidxml.pri)
include($$PWD/../pri/Configure.pri)
include($$PWD/../pri/Functions.pri)

!isEmpty(ENABLE_MAGE):contains(ENABLE_MAGE, 1) {
    SOURCES += core/mage_hts_engine_impl.cpp
    include($$PWD/../third-party/mage/mage.pri)
}

VERSION = 1.1.0
DEFINES += VERSION=$$Stringify($$VERSION)
DEFINES += RHVOICE_CORE_LIBRARY
DEFINES += QT_DEPRECATED_WARNINGS

DEFINES += DATA_PATH=$$DATA_PATH
DEFINES += CONFIG_PATH=$$CONFIG_PATH

!isEmpty(ENABLE_MAGE):contains(ENABLE_MAGE, 1) {
    DEFINES += ENABLE_MAGE=1
}

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
