autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

# aliases
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
