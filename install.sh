#!/bin/bash
set -euo pipefail

if command -v apt-get &> /dev/null; then
  apt-get update
  apt-get install -y nodejs npm
fi

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$SCRIPT_DIR/pack/plugins/start/coc.nvim" && npm ci && cd -
