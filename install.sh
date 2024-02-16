#!/bin/sh

echo "Starting new computer bootstrapping"

# Install home brew
if test ! $(which brew); then
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Update homebrew recipes
brew tap Homebrew/bundle
brew update

# Install all using bundle
echo "Installing everything..."
brew bundle

echo "Cleaning up..."
brew cleanup

## Here is up to you, add things you like or not here

echo "Installing Oh My ZSH..."
# Oh My Zsh
cp dotfiles/.zshrc ~/
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# omz plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Setting up Zsh as default shell
chsh -s $(which zsh)

echo "Configuring Apps..."
cp dotfiles/Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text/Packages/User

echo "Configuring OSX..."

# Remove last login from terminal
touch ~/.hushlogin

# Set fast key repeat rate
defaults write NSGlobalDomain KeyRepeat -int 0

# Show filename extensions by default
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

echo "Creating folder structure..."
mkdir ~/Projects
mkdir -p ~/Projects/{personal,tw}
mkdir -p ~/tmp
