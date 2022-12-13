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


# Resources

- <https://wiki.osdev.org/Raspberry_Pi_Bare_Bones>
- <https://wiki.osdev.org/Raspberry_Pi_Bare_Bones_Rust>
- <https://github.com/rust-embedded/awesome-embedded-rust>
- <https://github.com/raspberrypi/tools>
- <https://github.com/rust-embedded/rust-raspberrypi-OS-tutorials>
- <https://www.collabora.com/news-and-blog/blog/2017/01/16/setting-up-qemu-kvm-for-kernel-development>