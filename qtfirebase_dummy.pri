message( "QtFirebase: configuring build for non-supported Firebase target platform..." )

DEFINES += QTFIREBASE_FAKE_BUILD

QTFIREBASE_FAKE_PATH = $$PWD/fake
INCLUDEPATH += $$QTFIREBASE_FAKE_PATH

QML_IMPORT_PATH += $$PWD

HEADERS += \
    $$QTFIREBASE_FAKE_PATH/src/qtfirebase.h \
    $$QTFIREBASE_FAKE_PATH/src/qtfirebaseservice.h \
    \

contains(QTPLUGIN,qtfirebase) {
    HEADERS += $$QTFIREBASE_FAKE_PATH/src/qtfirebase_plugin.h
    SOURCES += $$PWD/src/qtfirebase_plugin.cpp
}

# Analytics
contains(DEFINES,QTFIREBASE_BUILD_ANALYTICS) {
    HEADERS += $$QTFIREBASE_FAKE_PATH/src/qtfirebaseanalytics.h
}

# Messaging
contains(DEFINES,QTFIREBASE_BUILD_MESSAGING) {
    HEADERS += $$QTFIREBASE_FAKE_PATH/src/qtfirebasemessaging.h
}

# AdMob
contains(DEFINES,QTFIREBASE_BUILD_ADMOB) {
    HEADERS += $$QTFIREBASE_FAKE_PATH/src/qtfirebaseadmob.h
}

# Remote Config
contains(DEFINES,QTFIREBASE_BUILD_REMOTE_CONFIG) {
    HEADERS += $$QTFIREBASE_FAKE_PATH/src/qtfirebaseremoteconfig.h
}

# Auth
contains(DEFINES,QTFIREBASE_BUILD_AUTH) {
    HEADERS += $$QTFIREBASE_FAKE_PATH/src/qtfirebaseauth.h
}

# Database
contains(DEFINES,QTFIREBASE_BUILD_AUTH) {
    HEADERS += $$QTFIREBASE_FAKE_PATH/src/qtfirebasedatabase.h
}

SOURCES += $$PWD/fake/src/qtfirebase.cpp
