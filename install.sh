#!/bin/bash
set -euo pipefail

if command -v apt-get &> /dev/null; then
  sudo add-apt-repository -y ppa:jonathonf/vim
  sudo apt-get update
  sudo apt-get install -y vim nodejs npm
fi

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$SCRIPT_DIR/pack/plugins/start/coc.nvim" && sudo npm ci && cd -
