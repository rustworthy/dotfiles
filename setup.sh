#! /bin/bash

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  sudo apt update && sudo apt install -y neovim tldr stow tmux curl git build-essential ca-certificates
elif [[ "$OSTYPE" == "darwin"* ]]; then
  brew install neovim tldr stow tmux curl git ca-certificates
else
  echo "Unsupported OSTYPE: $OSTYPE"
  exit 1
fi

curl \
  --proto '=https' --tlsv1.2 --retry 10 --retry-connrefused --location --silent --show-error --fail \
  https://sh.rustup.rs | sh -s -- --default-toolchain stable -y

cargo install --locked dua-cli
cargo install --locked tree-sitter-cli
cargo install --locked eza
cargo install --locked ripgrep
cargo install --locked bat
cargo install --locked alacritty
cargo install --locked just

curl -sS https://starship.rs/install.sh | sh

git config --global core.excludesFile '~/.gitignore'
