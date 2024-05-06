#makefile for XR17v35x PCIe UARTs for Linux 2.6.32 and newer

all: build

obj-m += xr17v35x.o

xrpci-objs :=	xr17v35x.o

EXTRA_CFLAGS +=  -DDEBUG=1

build:
	$(MAKE) -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules
 

install:
	cp xr17v35x.ko /lib/modules/$(shell uname -r)/kernel/drivers/char
clean:
	rm -f *~ *.o
	rm -f *~ *.ko
