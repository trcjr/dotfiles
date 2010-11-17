# Disable shared history
unsetopt share_history

# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

export TZ="America/New_York"

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME="trcjr"

# Set to this to use case-sensitive completion
export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
export DISABLE_AUTO_UPDATE="true"

export VIRTUAL_ENV_DISABLE_PROMPT="true"

export WORKON_HOME=$HOME/.virtualenvs

# Only set the theme using prompt if it is found in available prompts
autoload -U promptinit; promptinit
if echo $( prompt -l ) | egrep "${ZSH_THEME}" > /dev/null; then
    prompt $ZSH_THEME
fi

export MANPATH=/opt/local/share/man:${MANPATH}
export DISPLAY=:0.0

export EDITOR="$( which vim ) -X"


CVS_RSH=ssh


source $ZSH/oh-my-zsh.sh

if [ -e $HOME/.zprofile_local ];then
    source $HOME/.zprofile_local
fi

