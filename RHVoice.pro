TEMPLATE = subdirs

include(pri/Configure.pri)

!isEmpty(ENABLE_MAGE):contains(ENABLE_MAGE, 1) {
    SUBDIRS += third-party/mage
}

SUBDIRS += \
    third-party/sonic \
    third-party/HTS_engine \
    RHVoice_core \
    RHVoice_audio \
    #RHVoice \
    RHVoice_test

CONFIG += ordered
