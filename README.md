# raspi-kernel
Baremetal rust on the raspberry pi kernel

# Setup (Arch Linux)

```shell
sudo pacman -S rustup arm-none-eabi-binutils  # install rust toolchain and arm utils 
rustup default stable  # install stable rust compiler
rustup target add armv7a-none-eabi  # install arm eabi for rust 
```

# Build

There is a Makefile
