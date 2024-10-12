#!/bin/bash
set -euo pipefail

cd ./pack/plugins/start/coc.nvim && npm ci && cd -
