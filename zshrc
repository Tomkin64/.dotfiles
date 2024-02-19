# Tomkin64 config
# ===============

autoload -U colors && colors

function parse_git_branch() {
        git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/[\1]/p'
}
# show colors
# curl -s https://gist.githubusercontent.com/HaleTom/89ffe32783f89f403bba96bd7bcd1263/raw/ | bash
COLOR_DEF=$'%f'
COLOR_USR=$'%F{245}'
COLOR_AT=$'%F{252}'
COLOR_MACHINE=$'%F{208}'
COLOR_DIR=$'%F{197}'
COLOR_GIT=$'%F{39}'
setopt PROMPT_SUBST
export PROMPT='${COLOR_USR}%n${COLOR_AT}@${COLOR_MACHINE}%M ${COLOR_DIR}%~${COLOR_GIT} $(parse_git_branch)${COLOR_DEF}$ '

# History in cache directory:
HISTSIZE=120000
SAVEHIST=120000
HISTFILE=~/.cache/zsh/history
SHARE_HISTORY=on

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# Aliases
export LS_OPTIONS='--color=auto'
LS_COLORS='di=36:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35:*.rpm=90:*.deb=90'
export LS_COLORS
alias ls='ls $LS_OPTIONS -hA'
alias ll='ls $LS_OPTIONS -lhA'
alias la='ls $LS_OPTIONS -lhA'
alias l='ls $LS_OPTIONS -hA'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias cd..='cd ..'
alias duh='du -h --max-depth=1'
alias vi='vim'
alias ~='cd ~'
alias rzc='source ~/.zshrc'
alias zshrc='vim ~/.zshrc'
alias vimrc='vim ~/.vimrc'
alias tx='tmux a'

# Exports
export EDITOR=vim

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
     PATH="$HOME/bin:$PATH"
fi
