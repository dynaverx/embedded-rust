#!/bin/bash

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source "$HOME/.cargo/env"
cargo install -f cross
mkdir rust
cd rust
cargo new --bin gtkPeta
cd gtkPeta
unset PKG_CONFIG_PATH
pkg-config --modversion gtk+-3.0 #3.24.37

