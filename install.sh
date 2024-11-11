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
BINARY_URL="https://github.com/whitecodel/jsontodart/releases/download/Initial/jsontodart-${OS}"

# Download and install
if [ "$OS" = "win" ]; then
    BINARY_URL="${BINARY_URL}.exe"
    INSTALL_PATH="/c/Windows/System32/jsontodart.exe"
else
    INSTALL_PATH="/usr/local/bin/jsontodart"
fi

echo "Downloading ${BINARY_URL}..."
curl -L -o "$INSTALL_PATH" "$BINARY_URL"

# Set permissions for non-Windows
if [ "$OS" != "win" ]; then
    chmod +x "$INSTALL_PATH"
fi

echo "jsontodart installed successfully at $INSTALL_PATH"
echo "Run 'jsontodart -s <source>' to use."
