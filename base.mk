CC := arm-linux-gnueabi-gcc
FLAGS ?= -nostdlib -I../include
MYOS_PATH ?= /media/system/dev/arm_sys/install
DESTDIR ?= /media/system/dev/arm_sys/install

PREFIX ?= $(DESTDIR)
BINDIR ?= $(PREFIX)/sbin

OBJECTS += ../crt0_s.o

%_c.o: %.c
	$(CC) $(FLAGS) -c $< -o $@

%_s.o: %.S
	$(CC) $(FLAGS) -c $< -o $@

install:
	cp $(TARGET) $(BINDIR)/

clean:
	rm *.o $(TARGET)
