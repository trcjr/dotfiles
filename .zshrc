#export BAT_CHARGE=~/bin/batcharge.py

# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME="trcjr"

# Set to this to use case-sensitive completion
export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export WORKON_HOME=$HOME/.virtualenvs
#source /usr/local/bin/virtualenvwrapper_bashrc

export PATH=$PATH:/usr/local/sbin


# Use virtualenvwrapper (http://www.doughellmann.com/projects/virtualenvwrapper/) if it is installed.
VIRTUALENV_WRAPPER=/usr/local/bin/virtualenvwrapper_bashrc
if [[ -s $VIRTUALENV_WRAPPER ]]; then export WORKON_HOME=$HOME/.virtualenvs; source $VIRTUALENV_WRAPPER; fi
# Use rvm (http://rvm.beginrescueend.com/) if it is installed.
if [[ -s $HOME/.rvm/scripts/rvm ]] ; then source $HOME/.rvm/scripts/rvm ; fi
