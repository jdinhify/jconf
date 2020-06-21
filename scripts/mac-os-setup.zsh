#!/usr/bin/env zsh

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)" &&

brew install git git-delta awscli trash ranger hub less tig thefuck vim neovim fzf ripgrep nvm &&
brew tap homebrew/homebrew-core &&
brew cask install 1password the-unarchiver alfred appcleaner karabiner-elements visual-studio-code vlc figma hyper google-backup-and-sync imageoptim phoenix itsycal obs openshot-video-editor brave-browser &&

cd &&

# trackpad tap to click
defaults write com.apple.AppleMultitouchTrackpad Clicking -int 1 &&
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -int 1 &&

# trackpad tracking speed
defaults write -g com.apple.trackpad.scaling -int 3 &&

# trackpad mission control & app expose 4 finger swipe
defaults write com.apple.dock showAppExposeGestureEnabled -int 1 &&
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerVertSwipeGesture -int 2 &&
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerVertSwipeGesture -int 2 &&

# trackpad 3 finger drag
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerDrag -int 1 &&
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerDrag -int 1 &&

# keyboard use Fn keys
defaults write -g com.apple.keyboard.fnState -int 1 &&

# keyboard key repeat enable
defaults write -g ApplePressAndHoldEnabled -int 0 &&

# keyboard key repeat speed
defaults write -g KeyRepeat -int 2 &&

# keyboard key repeat delay
defaults write -g InitialKeyRepeat -int 15 &&

# text auto correct off
defaults write -g NSAutomaticSpellingCorrectionEnabled -int 0 &&

# text auto capitalise off
defaults write -g NSAutomaticCapitalizationEnabled -int 0 &&

# text auto period with double spaces off
defaults write -g NSAutomaticPeriodSubstitutionEnabled -int 0 &&

# scrolling rubber band off
defaults write -g NSScrollViewRubberbanding -int 0 &&

# don't create .DS_Store
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true &&

# finder no animation
defaults write com.apple.finder AnimateInfoPanes -int 0 &&
defaults write com.apple.finder AnimateWindowZoom -int 0 &&

# finder show all files
defaults write com.apple.finder AppleShowAllFiles -int 1 &&

# finder disable Desktop
defaults write com.apple.finder CreateDesktop -int 0 &&

# finder disable sound effects
defaults write com.apple.finder FinderSounds -int 0 &&

# finder show path in title
defaults write com.apple.finder _FXShowPosixPathInTitle -int 1 &&

# dock
defaults write com.apple.dock autohide-delay -int 0 &&
defaults write com.apple.dock autohide-time-modifier -int 0 &&
defaults write com.apple.dock mineffect -string scale &&

# launchpad - no animations
defaults write com.apple.dock springboard-hide-duration -int 0 &&
defaults write com.apple.dock springboard-page-duration -int 0 &&
defaults write com.apple.dock springboard-show-duration -int 0 &&

# no open window animation
defaults write -g NSAutomaticWindowAnimationsEnabled -int 0 &&

curl -fLo ~/.gitconfig https://raw.githubusercontent.com/jdinhify/jconf/main/dotfiles/.gitconfig &&
curl -fLo ~/.zshrc https://raw.githubusercontent.com/jdinhify/jconf/main/dotfiles/.zshrc &&
curl -fLo ~/.bashrc https://raw.githubusercontent.com/jdinhify/jconf/main/dotfiles/.bashrc &&
curl -fLo ~/.bash_profile https://raw.githubusercontent.com/jdinhify/jconf/main/dotfiles/.bash_profile &&
curl -fLo ~/.tmux.conf https://raw.githubusercontent.com/jdinhify/jconf/main/dotfiles/.tmux.conf &&
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim &&
curl -fLo ~/.vimrc https://raw.githubusercontent.com/jdinhify/jconf/main/dotfiles/.vimrc &&
curl -fLo ~/.config/nvim/init.vim --create-dirs https://raw.githubusercontent.com/jdinhify/jconf/main/dotfiles/.config-nvim-init.vim &&
curl -fLo ~/.config/karabiner/karabiner.json --create-dirs https://raw.githubusercontent.com/jdinhify/jconf/main/configs/karabiner.json &&
curl -fLo ~/.hyper.js https://raw.githubusercontent.com/jdinhify/jconf/main/dotfiles/.hyper.js &&
curl -fLo ~/.phoenix.js https://raw.githubusercontent.com/jdinhify/jconf/main/dotfiles/.phoenix.js &&

curl -fLo ~/Downloads/menumeter.zip https://member.ipmu.jp/yuji.tachikawa/MenuMetersElCapitan/zips/MenuMeters_2.0.4.zip &&
curl -fLo ~/Downloads/brave-bookmarks.alfredworkflow https://raw.githubusercontent.com/jdinhify/jconf/main/configs/alfred/brave-bookmarks.alfredworkflow &&
curl -fLo ~/Downloads/gruvbox.alfredappearance https://raw.githubusercontent.com/jdinhify/jconf/main/configs/alfred/gruvbox.alfredappearance &&
curl -fLo ~/Downloads/set-microphone-volume.alfredworkflow https://raw.githubusercontent.com/jdinhify/jconf/main/configs/alfred/set-microphone-volume.alfredworkflow &&
curl -fLo ~/Downloads/InputMono-Light.ttf https://raw.githubusercontent.com/jdinhify/jconf/main/assets/InputMono-Light.ttf &&
curl -fLo ~/Downloads/InputMono-Regular.ttf https://raw.githubusercontent.com/jdinhify/jconf/main/assets/InputMono-Regular.ttf