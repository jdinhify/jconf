red="\e[0;31m\]"
green="\e[0;32m\]"
yellow="\e[0;33m\]"
redSed="\\\e[0;31m\\\]"
yellowSed="\\\e[0;33m\\\]"
blue="\e[0;34m\]"
magenta="\e[0;35m\]"
cyan="\e[0;36m\]"
reset="\e[0m\]"

function parseGitDirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit, working tree clean" ]] && echo " ✗"
}
function parseGitStash {
  [[ $(git stash list 2> /dev/null | tail -n1) != "" ]] && echo " ^"
}
function parseGitBranch {
    [[ "$(git rev-parse --is-inside-work-tree 2>/dev/null)" == "true" ]] && echo "[$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/')$(parseGitDirty)$(parseGitStash)]"
}

export HISTTIMEFORMAT="%d/%m/%y %T "

export HISTFILESIZE=104000

export EDITOR="code"

# output process name & current dir to title
case "$TERM" in
xterm*|rxvt*)
  PROMPT_COMMAND='echo -ne "\033]0;${PWD/$HOME/~}\007"'
  show_command_in_title_bar()
  {
    case "$BASH_COMMAND" in
      *\033]0*)
        ;;
      *)
        echo -ne "\033]0;${BASH_COMMAND} - ${PWD/$HOME/~}\007"
        ;;
    esac
  }
  trap show_command_in_title_bar DEBUG
  ;;
*)
  ;;
esac

export PS1="$blue[\t] $magenta\w$cyan\$(parseGitBranch)$reset\n> "

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
alias brew-upgrade="curl -sL https://raw.githubusercontent.com/jdinhify/jconf/main/scripts/brew-upgrade.zsh | zsh /dev/stdin"

alias docker-clean-all='docker images -q | xargs docker rmi'
alias docker-clean-dangling='docker images -q -f dangling=true | xargs docker rmi'
alias docker-rm-all='docker ps -aq | xargs docker rm'
alias docker-stop-all='docker ps -q | xargs docker stop'

export HOMEBREW_GITHUB_API_TOKEN="HOMEBREW_TOKEN"

[[ -r "$(brew --prefix)/etc/profile.d/bash_completion.sh" ]] && . "$(brew --prefix)/etc/profile.d/bash_completion.sh"

export FZF_DEFAULT_COMMAND='rg --files --follow --hidden'

eval $(thefuck --alias)
