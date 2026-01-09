# Makefile for acp6x-omen-dkms

obj-m += snd-pci-acp6x.o snd-soc-acp6x-mach.o

# CHANGE THIS LINE: Removed 'acp6x.o'
snd-pci-acp6x-y := pci-acp6x.o

snd-soc-acp6x-mach-y := acp6x-mach.o

all:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules

clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean
