#!/bin/sh

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" &&

brew install git awscli trash ranger hub less diff-so-fancy tig thefuck vim neovim fzf ripgrep nvm zsh &&
brew tap homebrew/homebrew-core &&
brew cask install 1password the-unarchiver alfred appcleaner karabiner-elements visual-studio-code bettertouchtool vlc dash figma hyper google-backup-and-sync imageoptim phoenix &&

cd &&

defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerDrag -int 1 &&
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerDrag -int 1 &&
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -int 1 &&
defaults write com.apple.AppleMultitouchTrackpad Clicking -int 1 &&

curl -fLo ~/.gitconfig https://raw.githubusercontent.com/jdinhify/jconf/master/dotfiles/.gitconfig &&
curl -fLo ~/.zshrc https://raw.githubusercontent.com/jdinhify/jconf/master/dotfiles/.zshrc &&
curl -fLo ~/.bashrc https://raw.githubusercontent.com/jdinhify/jconf/master/dotfiles/.bashrc &&
curl -fLo ~/.bash_profile https://raw.githubusercontent.com/jdinhify/jconf/master/dotfiles/.bash_profile &&
curl -fLo ~/.tmux.conf https://raw.githubusercontent.com/jdinhify/jconf/master/dotfiles/.tmux.conf &&
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim &&
curl -fLo ~/.vimrc https://raw.githubusercontent.com/jdinhify/jconf/master/dotfiles/.vimrc &&
curl -fLo ~/.config/nvim/init.vim --create-dirs https://raw.githubusercontent.com/jdinhify/jconf/master/dotfiles/.config-nvim-init.vim &&
curl -fLo ~/.config/karabiner/karabiner.json --create-dirs https://raw.githubusercontent.com/jdinhify/jconf/master/configs/karabiner.json &&
curl -fLo ~/.hyper.js https://raw.githubusercontent.com/jdinhify/jconf/master/dotfiles/.hyper.js &&
curl -fLo ~/.phoenix.js https://raw.githubusercontent.com/jdinhify/jconf/master/dotfiles/.phoenix.js &&

curl -fLo ~/Downloads/menumeter.zip https://member.ipmu.jp/yuji.tachikawa/MenuMetersElCapitan/zips/MenuMeters_1.9.7.zip &&
curl -fLo ~/Downloads/Inconsolata-Black.otf https://github.com/googlefonts/Inconsolata/raw/master/fonts/otf/Inconsolata-Black.otf &&
curl -fLo ~/Downloads/Inconsolata-Bold.otf https://github.com/googlefonts/Inconsolata/raw/master/fonts/otf/Inconsolata-Bold.otf &&
curl -fLo ~/Downloads/Inconsolata-Light.otf https://github.com/googlefonts/Inconsolata/raw/master/fonts/otf/Inconsolata-Light.otf &&
curl -fLo ~/Downloads/Inconsolata-Medium.otf https://github.com/googlefonts/Inconsolata/raw/master/fonts/otf/Inconsolata-Medium.otf &&
curl -fLo ~/Downloads/Inconsolata-Regular.otf https://github.com/googlefonts/Inconsolata/raw/master/fonts/otf/Inconsolata-Regular.otf &&
curl -fLo ~/Downloads/Inconsolata-SemiBold.otf https://github.com/googlefonts/Inconsolata/raw/master/fonts/otf/Inconsolata-SemiBold.otf