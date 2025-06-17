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

# Start services
echo "Starting PostgreSQL and MongoDB services..."
brew services start postgresql@15
brew services start mongodb-community

echo "Setup complete!"
echo ""
echo "For your backend project:"
echo "1. cd to your backend directory"
echo "2. python3 -m venv venv"
echo "3. source venv/bin/activate"
echo "4. pip install -r requirements.txt"
echo "5. docker-compose up -d (for databases)"
echo "6. uvicorn main:app --reload (to start backend)"
