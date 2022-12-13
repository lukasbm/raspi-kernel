build:
	cargo clean
	cargo rustc -- -C link-arg=--script=./linker.ld

objdump: build
	arm-none-eabi-objdump -D target/armv7a-none-eabi/debug/raspi-kernel
