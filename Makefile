obj-m += mcp9808.o minnow.o

all:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules

clean:
	make -C /lib/modules/$(shell uname -r)/build/ M=$(PWD) clean

install:
	cp mcp9808.ko /lib/modules/$(shell uname -r)/kernel/drivers/
	cp minnow.ko /lib/modules/$(shell uname -r)/kernel/drivers/
