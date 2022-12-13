.PHONY: clean build objdump
BINARY = target/armv7a-none-eabi/debug/raspi-kernel

build: clean
	cargo rustc -- -C link-arg=--script=./linker.ld

copy: build
	# FIXME
	arm-none-eabi-objcopy -O $(BINARY) kernel7.img

objdump: build
	arm-none-eabi-objdump -D $(BINARY)

clean:
	cargo clean
