#!/bin/sh

# could just use `cargo run` but this is what that's effectively doing:
qemu-system-x86_64 -drive format=raw,file=target/x86_64-rospi/debug/bootimage-rospi.bin
