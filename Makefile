obj-m := mk_arcade_joystick_pb.o
KVERSION := `uname -r`

ifneq (,$(findstring -v7, $(KVERSION)))
CFLAGS_mk_arcade_joystick_pb.o := -DRPI2
endif

all:
	$(MAKE) -C /lib/modules/$(KVERSION)/build M=$(PWD) modules

clean:
	$(MAKE) -C /lib/modules/$(KVERSION)/build M=$(PWD) clean
