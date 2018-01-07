QT -= core
QT -= gui

CONFIG += console
CONFIG -= app_bundle

TEMPLATE = app

TARGET = Test_devices

DEFINES -= UNICODE

DEFINES += DISABLE_THREADS_OSNET
DEFINES += SIMULATED_INTERNET_SWARMONDEVICE
DEFINES += DISABLE_AIS_SUPPORT
DEFINES += ENABLE_DEFAULT_SAVE_RAW_DATA_MDM
DEFINES += DISABLE_HOKUYOTHREAD
DEFINES += DISABLE_MAESTROTHREAD
DEFINES += DISABLE_MDMTHREAD
DEFINES += DISABLE_MINISSCTHREAD
DEFINES += DISABLE_MTTHREAD
DEFINES += DISABLE_NMEADEVICETHREAD
DEFINES += DISABLE_P33XTHREAD
DEFINES += DISABLE_PATHFINDERDVLTHREAD
DEFINES += DISABLE_RAZORAHRSTHREAD
DEFINES += DISABLE_RPLIDARTHREAD
DEFINES += DISABLE_SEANETTHREAD
DEFINES += DISABLE_SSC32THREAD
DEFINES += DISABLE_SWARMONDEVICETHREAD
DEFINES += DISABLE_UBLOXTHREAD
CONFIG(debug, debug|release) {
 DEFINES += _DEBUG
# DEFINES += _DEBUG_DISPLAY _DEBUG_MESSAGES
}
else {
 DEFINES += NDEBUG
}
win32:DEFINES += WIN32 _CONSOLE
unix:QMAKE_CXXFLAGS += -fpermissive -Wno-unknown-pragmas

win32:LIBS += -lWS2_32
unix:LIBS += -lrt -lm

SOURCES += \
    Main.cpp \
    OSComputerRS232Port.c \
    OSCore.c \
    OSMisc.c \
    OSNet.c \
    OSTime.c

HEADERS += \
    Hokuyo.h \
    Maestro.h \
    MDM.h \
    MiniSSC.h \
    MT.h \
    NMEADevice.h \
    NMEAProtocol.h \
    OSComputerRS232Port.h \
    OSCore.h \
    OSMisc.h \
    OSNet.h \
    OSTime.h \
    P33x.h \
    PathfinderDVL.h \
    RazorAHRS.h \
    RPLIDAR.h \
    RS232Port.h \
    Seanet.h \
    SSC32.h \
    SwarmonDevice.h \
    ublox.h \
    UBXProtocol.h
