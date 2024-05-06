# rospi
Learning kernel programming using Rust and Raspberry Pi 5.

Inspired by
* https://github.com/rust-embedded/rust-raspberrypi-OS-tutorials
* https://os.phil-opp.com/

## Current status
* start with an x86 target to get a working environment
  * based on https://os.phil-opp.com/ parts 1 & 2
* To run: `cargo run`. This is enabled by some components and configuration. The [bootimage](https://github.com/rust-osdev/bootimage)
tool enables bare-metal without a bootloader (e.g. GRUB). the llvm-tools-preview package is required for
building. The config.toml defines additional build config (e.g. building core Rust and the custom target)
as well as running the `bootimage` command automatically with `cargo run`. the rust-toolchain.toml file 
defines the toolchain channel (`nightly` is needed) and the x86_64-rospi.json configures the custom target.
  * `cargo install bootimage`
  * `rustup component add llvm-tools-preview`
  * .cargo/config.toml
  * rust-toolchain.toml
  * x86_64-rospi.json
  * Install [QEMU](https://www.qemu.org/download/) is also required to run

## Upcoming
Not necessarily in any order
* get basic working on Pi5
* part 3 of the https://os.phil-opp.com/ blog