#! /bin/bash

sudo apt update && sudo apt install -y \
  tldr stow tmux curl git build-essential ca-certificates

curl \
  --proto '=https' --tlsv1.2 --retry 10 --retry-connrefused --location --silent --show-error --fail \
  https://sh.rustup.rs | sh -s -- --default-toolchain stable -y

cargo install --locked dua-cli
cargo install --locked tree-sitter-cli
cargo install --locked eza
cargo install --locked ripgrep
cargo install --locked bat
cargo install --locked alacritty

curl -sS https://starship.rs/install.sh | sh

git config --global core.excludesFile '~/.gitignore'
