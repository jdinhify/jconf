#!/usr/bin/env zsh

(set -x; brew update;)
(set -x; brew upgrade;)
(set -x; brew cask reinstall `brew cask outdated`;)
(set -x; brew cleanup;)