QT -= gui

CONFIG += c++11 console
CONFIG -= app_bundle

INCLUDEPATH += ../third-party/tclap
INCLUDEPATH += ../third-party/utf8
INCLUDEPATH += ../third-party/rapidxml
INCLUDEPATH += ../include

DEFINES += QT_DEPRECATED_WARNINGS

SOURCES += \
    test.cpp

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

# RHVoice-core
win32:CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/../RHVoice_core/release/ -lRHVoice_core
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../RHVoice_core/debug/ -lRHVoice_core
else:unix: LIBS += -L$$OUT_PWD/../RHVoice_core/ -lRHVoice_core

DEPENDPATH += $$PWD/../RHVoice_core

# RHVoice-audio
win32:CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/../RHVoice_audio/release/ -lRHVoice_audio
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../RHVoice_audio/debug/ -lRHVoice_audio
else:unix: LIBS += -L$$OUT_PWD/../RHVoice_audio/ -lRHVoice_audio

DEPENDPATH += $$PWD/../RHVoice_audio
