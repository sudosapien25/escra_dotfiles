#!/bin/bash

echo "Setting up development environment..."

# Install from Brewfile
echo "Installing from Brewfile..."
brew bundle --file=~/dotfiles/Brewfile

# Install global npm packages
echo "Installing global npm packages..."
npm install -g typescript
npm install -g @typescript-eslint/eslint-plugin
npm install -g prettier
npm install -g eslint
npm install -g create-react-app
npm install -g serve

echo "Setup complete!"
