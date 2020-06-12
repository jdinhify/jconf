parseGitDirty() {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit, working tree clean" ]] && echo " ✗"
}
parseGitStash() {
  [[ $(git stash list 2> /dev/null | tail -n1) != "" ]] && echo " ^"
}
parseGitBranch() {
  [[ "$(git rev-parse --is-inside-work-tree 2>/dev/null)" == "true" ]] && echo "[$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/')$(parseGitDirty)$(parseGitStash)]"
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
export PS1='%F{blue}[%t] %F{magenta}%~ %F{cyan}$(parseGitBranch)${NEWLINE}%F{yellow}> %f'

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
alias gh='git hist'
alias gm='git merge'
alias gf='git fetch'
alias grb='git rebase'
alias dev='cd ~/dev'
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
alias clearcache='sudo killall -HUP mDNSResponder'
alias brew-upgrade="curl -sL https://raw.githubusercontent.com/jdinhify/jconf/main/scripts/brew-upgrade.sh | zsh /dev/stdin"

alias docker-clean-all='docker images -q | xargs docker rmi'
alias docker-clean-dangling='docker images -q -f dangling=true | xargs docker rmi'
alias docker-rm-all='docker ps -aq | xargs docker rm'
alias docker-stop-all='docker ps -q | xargs docker stop'

export HOMEBREW_GITHUB_API_TOKEN="HOMEBREW_TOKEN"

export FZF_DEFAULT_COMMAND='rg --files --follow --hidden'

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm

eval $(thefuck --alias)
