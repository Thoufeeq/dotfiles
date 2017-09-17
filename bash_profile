# Additions to $PATH (lower variables having higher priority)
export PATH="/bin:$PATH"
export PATH="/usr/bin:$PATH"
export PATH="/usr/local/git/bin:$PATH"
export PATH="/usr/local/bin:$PATH"

# Uncomment to benefit brew coreutils in bash
# export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"

# set homebrew's python over system's
export PATH="$(brew --prefix)/opt/python/libexec/bin:$PATH"

# set path for man pages
export MANPATH="$(brew --prefix coreutils)/libexec/gnuman:$MANPATH"

# Virtualeenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Develop
source /usr/local/bin/virtualenvwrapper.sh

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    source $(brew --prefix)/etc/bash_completion
fi

# Load .bashrc if it exists
test -f ~/.bashrc && source ~/.bashrc
