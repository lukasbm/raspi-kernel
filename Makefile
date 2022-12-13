.PHONY: clean build objdump
BINARY = ./target/armv7a-none-eabi/debug/raspi-kernel

build: clean
	cargo rustc -- -C link-arg=--script=./linker.ld

img: build
	# FIXME
	# creates a 32 bit image from the ELF-binary
	arm-none-eabi-objcopy -O $(BINARY) kernel7.img

objdump: build
	arm-none-eabi-objdump -D $(BINARY)

clean:
	cargo clean

qemu:
	qemu-system-arm -M raspi2 -kernel myos.elf -serial stdio
