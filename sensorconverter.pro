TARGET = sensorconverter
QT += network
SOURCES = main.cpp
HEADERS = main.h
INCLUDEPATH += ../sw/perdaix/perdaix10/flightsoftware/libraries/sensors/ \
                ../sw/perdaix/perdaix10/flightsoftware/libraries/global/ \
                $$system(root-config --incdir)

LIBS += -L../sw/perdaix/perdaix10/lib -lperdaixsensors -lperdaixglobal \
        $$system(root-config --cflags --libs)

QMAKE_LFLAGS -= -Wl,--as-needed

QMAKE_MACOSX_DEPLOYMENT_TARGET = 10.5
