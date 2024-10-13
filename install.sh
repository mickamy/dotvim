#!/bin/bash
set -euo pipefail

if command -v apt-get &> /dev/null; then
  sudo add-apt-repository -y ppa:jonathonf/vim
  sudo apt-get update
  sudo apt-get install -y vim
  curl -sL install-node.vercel.app/lts | sudo bash -s -- -y

  sudo ln -s "$HOME/.vim" /root/.vim
fi

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$SCRIPT_DIR/pack/plugins/start/coc.nvim" && sudo npm ci && cd -
