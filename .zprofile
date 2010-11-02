
#export BAT_CHARGE=~/bin/batcharge.py

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
if [ -e "/u01" ]; then
    ORACLE_HOME=/u01/app/oracle/produc/10.2.0_client
else
    ORACLE_HOME=/usr/local/oracle
fi

#pathmunge $ORACLE_HOME/bin after
LD_LIBRARY_PATH=$ORACLE_HOME/lib
#export PERL5LIB=/Users/trcjr/.local/lib/perl5/site_perl/5.12.1
export PERL5LIB=/usr/local/vwh/library/perl:/usr/local/vwh/library/CPAN
NLS_LANG=AMERICAN_AMERICA.AL32UTF8
LANG=en_US.UTF-8

export CVS_RSH ORACLE_HOME LD_LIBRARY_PATH PERL5LIB NLS_LANG LANG
export NLS_DATE_FORMAT=dd-MON-yyyy

source $ZSH/oh-my-zsh.sh
