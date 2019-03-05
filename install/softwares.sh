#!/bin/sh

# Brew Cask
msg_install "Installing Software with Brew Cask"
brew cask

cask=(
    "google-chrome"
    "firefox"
    "iterm2"
    "visual-studio-code"
    "transmission"
    "spotify"
)

for app in "${cask[@]}"; do
  msg_install "Installing $app"
  brew cask install $app
  msg_ok "$app"
done