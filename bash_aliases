# enable color support of ls others
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors  -b)"
    alias ls="ls -lah --color=auto"
    alias grep="grep --color=auto"
    alias fgrep="fgrep --color=auto"
    alias egrep="egrep --color=auto"
fi

alias r="ranger"
alias root="cd ~/Dropbox/Dev"
alias fragments2="sudo ~/Dropbox/Dev/fadecandy/server/fcserver ~/Dropbox/Dev/sparquil/configs/fadecandy_configs/fragments2-fc-config.json"
