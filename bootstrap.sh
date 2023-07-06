#!/bin/bash

echo 'Installing Homebrew'
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
echo 

echo 'Installing wget'
brew install wget
echo

echo 'Intalling browsers'
echo 'Installing Chrome'
brew install --cask google-chrome
echo 'Installing Firefox'
brew install --cask firefox
echo 'Installing Edge'
brew install --cask microsoft-edge
echo 'Installing Brave'
brew install --cask brave-browser
echo

echo 'Intalling MS Teams'
brew install --cask microsoft-teams
echo

echo 'Intalling gimp'
brew install --cask gimp

echo 'Intalling github'
brew install gh
brew upgrade gh
brew install --cask github
echo

echo 'Installing Obsidian'
brew install --cask obsidian
echo

echo 'Installing Postman'
brew install --cask postman
echo

echo 'Installing Python'
$(brew --prefix python)/libexec/bin
python3 -m pip install --upgrade setuptools
python3 -m pip install --upgrade pip
pip install pipreqs
echo

echo 'Installing Spotify'
brew install --cask spotify
echo

echo 'Installing Telegram'
brew install --cask telegram
echo

echo 'Installing VS Code'
brew install --cask visual-studio-code
echo

echo 'Installing nvm'
brew install nvm
echo 'export NVM_DIR=~/.nvm' >> ~/.zshrc
echo 'source $(brew --prefix nvm)/nvm.sh' >> ~/.zshrc
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
nvm install node
echo

echo 'Installing npm global packages'
npm i -g nodemon
npm i -g ts-node
npm i -g typescript
npm i -g webpack-cli
npm i -g webpack
npm i -g eslint
echo

echo 'Adding aliases'
echo 'alias ll="ls -la"' >> ~/.zshrc
