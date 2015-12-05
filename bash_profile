# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
PATH="~/Dev:/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
export PATH

##
# Your previous /Users/Harriet/.bash_profile file was backed up as /Users/Harriet/.bash_profile.macports-saved_2015-01-03_at_20:29:33
##

# MacPorts Installer addition on 2015-01-03_at_20:29:33: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.
if [ -f "$HOME/.bashrc" ]; then
    source "$HOME/.bashrc"
fi
