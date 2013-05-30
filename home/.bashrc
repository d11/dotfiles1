export GREP_COLOR="1;33"
export EDITOR="gvim -f"

PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \w $ \[\033[00m\]'

export LESS_TERMCAP_mb=$'\E[01;31m'    # blinking mode
export LESS_TERMCAP_md=$'\E[01;33m'    # bold mode
export LESS_TERMCAP_me=$'\E[0m'        # normal mode
export LESS_TERMCAP_se=$'\E[0m'        # standout end
export LESS_TERMCAP_so=$'\E[33m' # standout mode
export LESS_TERMCAP_ue=$'\E[0m'        # underline end
export LESS_TERMCAP_us=$'\E[36m'    # underline mode
export CVS_RSH=ssh

alias grep='grep --color=auto'
alias ls='ls --color=auto --group-directories-first'

alias gst='git status'
alias gca='git commit -a'
alias gka='gitk --all'
alias gco='git checkout'
alias gb='git branch'
alias ga='git add'

alias webssh='ssh d11_d11@ssh.phx.nearlyfreespeech.net'
case "$TERM" in
xterm*|rxvt*)
        PROMPT_COMMAND='echo -ne "\033]0;${PWD}\007"'
        ;;
*)
        ;;
esac

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
PATH=$PATH:~/bin
export PATH


# Fix for alt + backspace not working
bind '"\e\C-?": backward-kill-word'
# Fix for alt + . not working
bind '"\e."':yank-last-arg

alias homeshick="$HOME/.homesick/repos/homeshick/home/.homeshick"