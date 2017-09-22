# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
PATH="~/Dev:/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
export PATH

# add java
PATH="/usr/bin/java/jre1.8.0_91/bin:${PATH}"
export PATH

# add processing
PATH="~/processing-3.1.1:${PATH}"
export PATH

# aliases
alias guake="~/Documents/guake-master/dev.sh"
alias r="ranger"

if [ -f ~/.bashrc ]; then . ~/.bashrc; fi 
