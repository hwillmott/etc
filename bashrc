PS1='\u \w\n\A$ '

HISTCONTROL=ignoreboth
HISTSIZE=10000

shopt -s histappend # append to the history file, don't overwrite it
shopt -s checkwinsize # check window size and update values of LINES and COLUMNS

# fancy prompt (non-color unless we know we want color)
case "$TERM" in 
    xterm-color|*-256color) color_prompt=yes;;
esac

# alias definitions
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
