ifeq ($(KERNELRELEASE), )
KERNELDIR := /lib/modules/6.1.21-v8+/build
PWD :=$(shell pwd)
default:
	$(MAKE) -C $(KERNELDIR)  M=$(PWD) modules
clean:
	rm -rf .tmp_versions Module.symvers *.mod.c *.o *.ko .*.cmd Module.markers modules.order
load:
	modprobe usbserial
	insmod ch34x.ko
unload:
	rmmod ch34x
else
	obj-m := ch34x.o
endif