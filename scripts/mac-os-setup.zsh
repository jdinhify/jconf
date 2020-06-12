#!/usr/bin/env zsh

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)" &&

brew install git git-delta awscli trash ranger hub less tig thefuck vim neovim fzf ripgrep nvm &&
brew tap homebrew/homebrew-core &&
brew cask install 1password the-unarchiver alfred appcleaner karabiner-elements visual-studio-code vlc figma hyper google-backup-and-sync imageoptim phoenix itsycal obs openshot-video-editor brave-browser &&

cd &&

# 3 finger drag
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerDrag -int 1 &&
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerDrag -int 1 &&

# tap to click
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -int 1 &&
defaults write com.apple.AppleMultitouchTrackpad Clicking -int 1 &&

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