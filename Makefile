obj-m += mcp9808.o minnow.o pi.o

all:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules

clean:
	make -C /lib/modules/$(shell uname -r)/build/ M=$(PWD) clean

install_minnow:
	cp mcp9808.ko /lib/modules/$(shell uname -r)/kernel/drivers/
	cp minnow.ko /lib/modules/$(shell uname -r)/kernel/drivers/

install_pi:
	cp mcp9808.ko /lib/modules/$(shell uname -r)/kernel/drivers/
	cp pi.ko /lib/modules/$(shell uname -r)/kernel/drivers/
