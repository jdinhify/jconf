#!/usr/bin/env zsh

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# cli
brew install git git-delta trash hub less tig thefuck vim neovim fzf ripgrep fp jq direnv asdf
# yazi
brew install yazi ffmpegthumbnailer unar poppler fd zoxide
brew tap homebrew/cask-fonts && brew install --cask font-symbols-only-nerd-font font-inconsolata
# casks
brew install 1password the-unarchiver appcleaner karabiner-elements visual-studio-code vlc figma google-drive imageoptim obs openshot-video-editor brave-browser raycast wezterm

# trackpad tap to click
defaults write com.apple.AppleMultitouchTrackpad Clicking -int 1
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -int 1

# trackpad tracking speed
defaults write -g com.apple.trackpad.scaling -int 3

# trackpad mission control & app expose 4 finger swipe
defaults write com.apple.dock showAppExposeGestureEnabled -int 1
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerVertSwipeGesture -int 2
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerVertSwipeGesture -int 2

# trackpad 3 finger drag
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerDrag -int 1
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerDrag -int 1

# keyboard use Fn keys
defaults write -g com.apple.keyboard.fnState -int 1

# keyboard key repeat enable
defaults write -g ApplePressAndHoldEnabled -int 0

# keyboard key repeat speed
defaults write -g KeyRepeat -int 2

# keyboard key repeat delay
defaults write -g InitialKeyRepeat -int 15

# text auto correct off
defaults write -g NSAutomaticSpellingCorrectionEnabled -int 0

# text auto capitalise off
defaults write -g NSAutomaticCapitalizationEnabled -int 0

# text auto period with double spaces off
defaults write -g NSAutomaticPeriodSubstitutionEnabled -int 0

# scrolling rubber band off
defaults write -g NSScrollViewRubberbanding -int 0

# don't create .DS_Store
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# finder no animation
defaults write com.apple.finder AnimateInfoPanes -int 0
defaults write com.apple.finder AnimateWindowZoom -int 0

# finder show all files
defaults write com.apple.finder AppleShowAllFiles -int 1

# finder disable Desktop
defaults write com.apple.finder CreateDesktop -int 0

# finder disable sound effects
defaults write com.apple.finder FinderSounds -int 0

# finder show path in title
defaults write com.apple.finder _FXShowPosixPathInTitle -int 1

# dock - disable most animations
defaults write com.apple.dock autohide -int 1
defaults write com.apple.dock autohide-delay -int 0
defaults write com.apple.dock autohide-time-modifier -int 0
defaults write com.apple.dock mineffect -string scale
defaults write com.apple.dock show-process-indicators -int 0
defaults write com.apple.dock show-recents -int 0
defaults write com.apple.dock launchanim -int 0
defaults write com.apple.dock tilesize -int 16

# launchpad - no animations
defaults write com.apple.dock springboard-hide-duration -int 0
defaults write com.apple.dock springboard-page-duration -int 0
defaults write com.apple.dock springboard-show-duration -int 0

# no open window animation
defaults write -g NSAutomaticWindowAnimationsEnabled -int 0

# double click to minimize
defaults write -g AppleActionOnDoubleClick -string Minimize

# maximum scroll speed
defaults write -g com.apple.trackpad.scrolling -int 1

# spaces - disable animations & auto arrangement
defaults write com.apple.universalaccess reduceMotion -int 1

# disable auto arrange spaces
defaults write com.apple.dock mru-spaces -int 0

# custom scripts
curl -fLo ~/scripts/warpd-reload.zsh --create-dirs https://raw.githubusercontent.com/jdinhify/jconf/main/scripts/home/scripts/warpd-reload.zsh
curl -fLo ~/scripts/raycast/warpd-reload --create-dirs https://raw.githubusercontent.com/jdinhify/jconf/main/scripts/home/scripts/raycast/warpd-reload

curl -fLo ~/.zshrc https://raw.githubusercontent.com/jdinhify/jconf/main/dotfiles/.zshrc
curl -fLo ~/.bashrc https://raw.githubusercontent.com/jdinhify/jconf/main/dotfiles/.bashrc
curl -fLo ~/.bash_profile https://raw.githubusercontent.com/jdinhify/jconf/main/dotfiles/.bash_profile

curl -fLo ~/.gitconfig https://raw.githubusercontent.com/jdinhify/jconf/main/dotfiles/.gitconfig
curl -fLo ~/.tmux.conf https://raw.githubusercontent.com/jdinhify/jconf/main/dotfiles/.tmux.conf
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
curl -fLo ~/.vimrc https://raw.githubusercontent.com/jdinhify/jconf/main/dotfiles/.vimrc
curl -fLo ~/.config/nvim/init.vim --create-dirs https://raw.githubusercontent.com/jdinhify/jconf/main/dotfiles/.config-nvim-init.vim
curl -fLo ~/.config/karabiner/karabiner.json --create-dirs https://raw.githubusercontent.com/jdinhify/jconf/main/config/karabiner.json
curl -fLo ~/.hyper.js https://raw.githubusercontent.com/jdinhify/jconf/main/dotfiles/.hyper.js

# warpd config
curl -fLo ~/.config/warpd/config --create-dirs https://raw.githubusercontent.com/jdinhify/jconf/main/config/warpd/config

# wezterm config
curl -fLo ~/.wezterm.lua https://raw.githubusercontent.com/jdinhify/jconf/main/config/wezterm/.wezterm.lua
# yazi config
curl -fLo ~/.config/yazi/yazi.toml --create-dirs https://raw.githubusercontent.com/jdinhify/jconf/main/config/yazi/yazi.toml

# lazyvim for nvim
git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git
curl -fLo ~/.config/nvim/lua/plugins/colorscheme.lua --create-dirs https://raw.githubusercontent.com/jdinhify/jconf/main/config/nvim/lua/plugins/colorscheme.lua
curl -fLo ~/.config/nvim/lazyvim.json --create-dirs https://raw.githubusercontent.com/jdinhify/jconf/main/config/nvim/lazyvim.json

curl -fLo ~/Desktop/menumeter.zip https://member.ipmu.jp/yuji.tachikawa/MenuMetersElCapitan/zips/MenuMeters_latest.zip
