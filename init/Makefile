TARGET = init
CSOURCES = $(shell echo *.c)
SSOURCES = $(shell echo *.S)

OBJECTS = $(CSOURCES:.c=_c.o)
#OBJECTS += $(SSOURCES:.S=_s.o)

#LDFLAGS = -lmy -L$(MYOS_PATH)/lib

BINDIR = $(PREFIX)/sbin

all: $(TARGET)

$(TARGET): $(OBJECTS)
	arm-linux-gnueabi-ld $(OBJECTS) ../mylib/libmy.a $(LDFLAGS) -o $(TARGET)

include ../base.mk

