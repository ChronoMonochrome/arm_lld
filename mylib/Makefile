TARGET = libmy.a
CSOURCES = $(shell echo *.c)
SSOURCES = $(shell echo *.S)

OBJECTS = $(CSOURCES:.c=_c.o)
OBJECTS += $(SSOURCES:.S=_s.o)

BINDIR = $(PREFIX)/lib

all: $(TARGET)

$(TARGET): $(OBJECTS)
	arm-linux-gnueabi-ar rcs $(TARGET) $(OBJECTS)

include ../base.mk
