#!/bin/bash
set -euo pipefail

if command -v apt-get &> /dev/null; then
  sudo apt-get update
  sudo apt-get install -y git make clang libtool-bin nodejs npm
  git clone https://github.com/vim/vim.git "$HOME/.tmp/vim"
  cd "$HOME/.tmp/vim"
  ./configure
  make
  sudo make install
  rm -rf "$HOME/.tmp/vim"
fi

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$SCRIPT_DIR/pack/plugins/start/coc.nvim" && sudo npm ci && cd -
