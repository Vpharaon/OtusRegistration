TARGET = ru.farionik.RegistrationApp

CONFIG += \
    auroraapp

PKGCONFIG += \

SOURCES += \
    src/main.cpp \

HEADERS += \

DISTFILES += \
    qml/pages/RegistrationCompletePage.qml \
    qml/pages/RegistrationStep2HobiesDialog.qml \
    qml/pages/RegistrationStep2Page.qml \
    rpm/ru.farionik.RegistrationApp.spec \

AURORAAPP_ICONS = 86x86 108x108 128x128 172x172

CONFIG += auroraapp_i18n

TRANSLATIONS += \
    translations/ru.farionik.RegistrationApp.ts \
    translations/ru.farionik.RegistrationApp-ru.ts \
