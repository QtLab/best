######################################################################
# Automatically generated by qmake (2.01a) ?? ??? 28 13:25:55 2013
######################################################################

TEMPLATE = app
TARGET = rtbdataget
DESTDIR = $(MASENV)/bin
DEPENDPATH += .
INCLUDEPATH += 	./include \
				$(HOME)/source/include \
				$(SYS_DB_INC)
CONFIG += warn_on thread
CONFIG -= qt
QT -= gui core
LIBS=-L$(MASENV)/lib -ldbsql -lscdrdb

# Input
HEADERS += soapH.h soapStub.h stdsoap2.h MyDataSql.h
SOURCES += server.cpp soapC.cpp soapServer.cpp stdsoap2.cpp dom.cpp MyDataSql.cpp