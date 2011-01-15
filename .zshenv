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

#export DISPLAY=:0.0

#export EDITOR="$( which vim ) -X"


CVS_RSH=ssh

export MODULEBUILDRC="$HOME/perl5/.modulebuildrc"
export PERL_MM_OPT="INSTALL_BASE=$HOME/perl5"
export PERL5LIB="$HOME/perl5/lib/perl5/i486-linux-gnu-thread-multi:$HOME/perl5/lib/perl5:$PERL5LIB"

FILES_TO_SOURCE=($HOME/perl5/perlbrew/etc/bashrc $HOME/.zprofile_local)
for p in $FILES_TO_SOURCE
do
    if [ -e ${p} ]; then;
        source ${p}
    fi
done

#alias cvsstat='cvs -n update 2>&1 | grep -P '\''(^(A|R|M|\?)|update aborted|warning)'\'''

if [ -z $OH_MY_ZSH__FIXED_PATHS ]; then
    source $HOME/.oh-my-zsh/custom/003-fix-paths.zsh
    OH_MY_ZSH__FIXED_PATHS="done"
    export OH_MY_ZSH__FIXED_PATHS
fi

if [[ "$COLORTERM" == "gnome-terminal" ]]; then
    if [[ "$TERM" == "xterm" ]]; then
        export TERM=xterm-256color
    fi
fi
