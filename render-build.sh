#!/usr/bin/env bash
echo "Installing Rust..."
curl https://sh.rustup.rs -sSf | sh -s -- -y
source $HOME/.cargo/env
echo "Installing dependencies..."
pip install --upgrade pip setuptools wheel
pip install -r requirements.txt