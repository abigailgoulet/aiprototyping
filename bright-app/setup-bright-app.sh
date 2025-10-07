#!/usr/bin/env bash
set -euo pipefail

echo "This script prepares the Bright-app prototype to use your local BrightspaceUI clone."

ROOT_DIR="$(cd "$(dirname "$0")"/.. >/dev/null && pwd)"

echo "Root dir: $ROOT_DIR"

echo "\n1) Preparing vendor/brightspace-core (install & link)"
cd "$ROOT_DIR/vendor/brightspace-core"
echo "Running: npm install"
npm install

echo "Running: npm link"
npm link

echo "\n2) Preparing bright-app (install deps & link package)"
cd "$ROOT_DIR/bright-app"
echo "Running: npm install"
npm install

echo "Running: npm link @brightspace-ui/core"
npm link @brightspace-ui/core || true

echo "\n3) Start dev server"
echo "Run 'npm run dev' in $ROOT_DIR/bright-app to start the dev server."
echo "Or this script will attempt to start it now. Press Ctrl+C to stop."

npm run dev
