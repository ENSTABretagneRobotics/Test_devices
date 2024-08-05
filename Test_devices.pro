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
DEFINES += DISABLE_IM483ITHREAD
DEFINES += DISABLE_MDMTHREAD
DEFINES += DISABLE_MESTHREAD
DEFINES += DISABLE_MINISSCTHREAD
DEFINES += DISABLE_MS5837THREAD
DEFINES += DISABLE_MTTHREAD
DEFINES += DISABLE_NMEADEVICETHREAD
DEFINES += DISABLE_P33XTHREAD
DEFINES += DISABLE_PATHFINDERDVLTHREAD
DEFINES += DISABLE_POLOLUTHREAD
DEFINES += DISABLE_RAZORAHRSTHREAD
DEFINES += DISABLE_ROBOTEQTHREAD
DEFINES += DISABLE_RPLIDARTHREAD
DEFINES += DISABLE_SBGTHREAD
DEFINES += DISABLE_SEANETTHREAD
DEFINES += DISABLE_SSC32THREAD
DEFINES += DISABLE_SWARMONDEVICETHREAD
DEFINES += DISABLE_UBLOXTHREAD
DEFINES += DISABLE_VELODYNETHREAD
CONFIG(debug, debug|release) {
 DEFINES += _DEBUG
# DEFINES += _DEBUG_DISPLAY _DEBUG_MESSAGES
}
else {
 DEFINES += NDEBUG
}
win32:DEFINES += WIN32 _CONSOLE
mac:DEFINES += USE_OLD_CHRONO
unix:DEFINES += ENABLE_COMPUTERI2CBUS_SUPPORT
QMAKE_CFLAGS += -Wall -Wno-unknown-pragmas -Wextra
#QMAKE_CFLAGS += -Winline
QMAKE_CXXFLAGS += $$QMAKE_CFLAGS -fpermissive

win32:LIBS += -lWS2_32 -lm
mac:LIBS += -lm
unix:LIBS += -lrt -lm

SOURCES += \
    Main.cpp \
    OSCore.c \
    OSMisc.c \
    OSNet.c \
    OSTime.c

HEADERS += \
    Hokuyo.h \
    I2CBus.h \
    IM483I.h \
    MDM.h \
    MES.h \
    MiniSSC.h \
    MS5837.h \
    MT.h \
    NMEADevice.h \
    NMEAProtocol.h \
    OSComputerI2CBus.h \
    OSComputerRS232Port.h \
    OSCore.h \
    OSMisc.h \
    OSNet.h \
    OSTime.h \
    P33x.h \
    PathfinderDVL.h \
    Pololu.h \
    RazorAHRS.h \
    Roboteq.h \
    RPLIDAR.h \
    RS232Port.h \
    SBG.h \
    Seanet.h \
    SSC32.h \
    SwarmonDevice.h \
    ublox.h \
    UBXProtocol.h \
    Velodyne.h
