#!/usr/bin/env bash

# Exit on error
set -e  

echo "Installing Rust..."
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
export PATH="$HOME/.cargo/bin:$PATH"

echo "Installing Python dependencies..."
pip install --upgrade pip setuptools wheel
pip install -r requirements.txt
