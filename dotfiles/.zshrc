gitParseDirty() {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit, working tree clean" ]] && echo " ✗"
}
gitParseStash() {
  [[ $(git stash list 2> /dev/null | tail -n1) != "" ]] && echo " ^"
}
gitParseBranch() {
  [[ "$(git rev-parse --is-inside-work-tree 2>/dev/null)" == "true" ]] && echo "[$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/')$(gitParseDirty)$(gitParseStash)]"
}

export HISTFILE="$HOME/.zsh_history"
export HISTSIZE=104000
export SAVEHIST=104000

export EDITOR="code"

# output process name & current dir to title
case "$TERM" in
  rxvt*|xterm*)
    precmd() { echo -ne "\033]0;${PWD/$HOME/~}\007" }
    preexec () { echo -ne "\033]0;$1 - ${PWD/$HOME/~}\007" }
    ;;
  *)
    ;;
esac

setopt PROMPT_SUBST
NEWLINE=$'\n'
export PS1='%F{blue}[%t] %F{magenta}%~ %F{cyan}$(gitParseBranch)${NEWLINE}%F{yellow}> %f'

alias f='fuck'
alias git='hub'
alias x='exit'
alias gs='git status'
alias gsh='git show'
alias gd='git diff'
alias gb='git branch'
alias gap='git add -p'
alias gc='git commit'
alias gcam='git commit -a -m'
alias gco='git checkout '
alias gk='gitk --all'
alias gx='gitx --all'
alias gl='git pull'
alias gp='git push'
alias gpf='git push --force-with-lease'
alias ls='ls -G'
alias ll='ls -lhG'
alias la='ls -laG'
alias rm='trash'
alias ghs='git hist'
alias gm='git merge'
alias gf='git fetch'
alias grb='git rebase'
alias grs='git restore'
alias gsw='git switch'
alias gitCleanUntracked="git clean -df"
alias gitResetUpstream="git reset --hard @{u}"
alias gitListOrphanedBranches='git fetch -p ; git branch -r | awk "{print \$1}" | egrep -v -f /dev/fd/0 <(git branch -vv | grep origin) | awk "{print \$1}"'
alias gitCleanBranches='git fetch -p ; git branch -r | awk "{print \$1}" | egrep -v -f /dev/fd/0 <(git branch -vv | grep origin) | awk "{print \$1}" | xargs git branch -D'
alias dev='cd ~/dev'
alias filesShowHidden='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias filesHideHidden='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
alias cacheClear='sudo killall -HUP mDNSResponder'
alias brewUpgrade="curl -sL https://raw.githubusercontent.com/jdinhify/jconf/main/scripts/brew-upgrade.zsh | zsh /dev/stdin"

alias dockerCleanAll='docker images -q | xargs docker rmi'
alias dockerCleanDangling='docker images -q -f dangling=true | xargs docker rmi'
alias dockerRmAll='docker ps -aq | xargs docker rm'
alias dockerStopAll='docker ps -q | xargs docker stop'

alias xcodeReinstall='sudo rm -rf /Library/Developer/CommandLineTools && xcode-select --install'

export HOMEBREW_GITHUB_API_TOKEN="HOMEBREW_TOKEN"

export FZF_DEFAULT_COMMAND='rg --files --follow --hidden'

. $(brew --prefix)/opt/asdf/libexec/asdf.sh

if type brew &>/dev/null
then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

  autoload -Uz compinit
  compinit
fi

listening() {
  if [ $# -eq 0 ]; then
    sudo lsof -iTCP -sTCP:LISTEN -n -P
  elif [ $# -eq 1 ]; then
    sudo lsof -iTCP -sTCP:LISTEN -n -P | grep -i --color $1
  else
    echo "Usage: listening [pattern]"
  fi
}

yy() {
  local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
  yazi "$@" --cwd-file="$tmp"
  if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
    cd -- "$cwd"
  fi
  rm -f -- "$tmp"
}

. ~/scripts/warpd-reload.zsh

eval "$(direnv hook zsh)"

eval $(thefuck --alias)
