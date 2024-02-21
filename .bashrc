function color_my_prompt {
    local __user_and_host="\[\033[0;36m\]\u"
    local __cur_location=" ➜ \[\033[0;34m\]\w"
    local __git_branch_color="\[\033[0;31m\]"
    #local __git_branch="\`ruby -e \"print (%x{git branch 2> /dev/null}.grep(/^\*/).first || '').gsub(/^\* (.+)$/, '(\1) ')\"\`"
    local __git_branch='`git branch 2> /dev/null | grep -e ^* | sed -E  s/^\\\\\*\ \(.+\)$/\(\\\\\1\)\ /`'
    local __prompt_tail="\[\033[33m\]$"
    local __last_color="\[\033[00m\]"
    export PS1="$__user_and_host$__cur_location $__git_branch_color$__git_branch$__prompt_tail$__last_color "
}
color_my_prompt

gb() {
  local branches branch
  branches=$(git branch --all | grep -v HEAD) &&
  branch=$(echo "$branches" |
           fzf-tmux -d $(( 2 + $(wc -l <<< "$branches") )) +m) &&
  git checkout $(echo "$branch" | sed "s/.* //" | sed "s#remotes/[^/]*/##")
}

alias v='nvim'
alias ll='ls -la'

## Git Aliases
alias gf='git checkout "$(git branch -a | fzf | xargs)"'

# git checkout
alias gout='git checkout'
alias gnew='git checkout -b'

# git add
alias ga='git add'

alias gc='git commit -m'

# git status
alias gs='git status'

# git rebase
alias gr='git commit -a --amend --no-edit'

# git log
alias gl='git log'

# git diff
alias gd='git diff'

#git submodule
alias gsub='git submodule init && git submodule update'
alias fixByobu='/usr/lib/byobu/include/tmux-detach-all-but-current-client'
alias tt=`tmux resize-pane -x $(tmux display -p '#{window_width}' | awk '{print int($1/3)}')`

#tmux
alias vv='tmux split-window -h'
alias hh='tmux split-window -v'

bind 'set completion-ignore-case on'

PATH=$PATH:$HOME/bin
MANPATH=$MANPATH:$HOME/share/man
PATH=$PATH:$HOME/bin
MANPATH=$MANPATH:$HOME/share/man

[ -f /etc/bash_completion ] && source /etc/bash_completion
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

alias vf='X=`fzf -i --height 40%` && v $X'
export NEO='10.39.120.168'

# fnm
export PATH=~/.fnm:$PATH
eval "`fnm env`"

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"
