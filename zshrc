# Tomkin64 config
# ===============

# Enable colors and change prompt:
autoload -U colors && colors
if [[ $EUID -ne 0 ]]; then
     PS2="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "
else
     PS1="%B%{$fg[red]%}[%{$fg[red]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}#%b "
fi

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
LS_COLORS='di=36:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35:*.rpm=90'
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

# Load zsh-autosuggestions.zsh
if [ -d "/usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh" ] ; then
     source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh 2>/dev/null
fi

# Load zsh-syntax-highlighting
if [ -d "/usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ] ; then
     source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
fi
