include(Functions.pri)

isEmpty(ENABLE_MAGE):ENABLE_MAGE=1

unix {
    isEmpty(PREFIX):PREFIX=usr/local
}

win32 {
    DATA_PATH=$$Stringify("data")
    CONFIG_PATH=$$Stringify("config")
} else:unix {
    isEmpty(DATA_PATH):DATA_PATH=$$Stringify($$PREFIX/share)
    isEmpty(CONFIG_PATH):CONFIG_PATH=$$Stringify($$PREFIX/etc)
}
