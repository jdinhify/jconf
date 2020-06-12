#!/usr/bin/env zsh
set -x

brew update
brew upgrade
brew cask reinstall `brew cask outdated`
brew cleanup