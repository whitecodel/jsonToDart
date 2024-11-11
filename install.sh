#!/bin/bash

# Detect OS
OS="$(uname -s)"
ARCH="$(uname -m)"

case "${OS}" in
    Linux*) OS=linux;;
    Darwin*) OS=macos;;
    CYGWIN*|MINGW*) OS=win;;
    *) echo "Unsupported OS"; exit 1;;
esac

# Determine binary file
BINARY_URL="https://github.com/whitecodel/jsonToDart/releases/download/Initial/jsonToDart-${OS}"

# Download and install
if [ "$OS" = "win" ]; then
    BINARY_URL="${BINARY_URL}.exe"
    INSTALL_PATH="/c/Windows/System32/jsonToDart.exe"
else
    INSTALL_PATH="/usr/local/bin/jsonToDart"
fi

echo "Downloading ${BINARY_URL}..."
curl -L -o "$INSTALL_PATH" "$BINARY_URL"

# Set permissions for non-Windows
if [ "$OS" != "win" ]; then
    chmod +x "$INSTALL_PATH"
fi

echo "jsonToDart installed successfully at $INSTALL_PATH"
echo "Run 'jsonToDart -s <source>' to use."
