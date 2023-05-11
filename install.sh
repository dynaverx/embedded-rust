#!/bin/bash

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source "$HOME/.cargo/env"
cargo install -f cross
mkdir rust
cd rust
cargo new --bin gtkPeta
cd gtkPeta

