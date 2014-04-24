# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export NLS_LANG=AMERICAN_AMERICA.AL32UTF8

export TZ="America/New_York"

# Disable shared history
unsetopt share_history

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME="trcjr"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
export USE_BOLD_PROMPT="true"
export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"
#export NO_GIT_PROMPT_INFO="true"
export NO_VIRTUALENV_PROMPT_INFO="true"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git git-extras github perlbrew rvm encode64 git-flow virtualenvwrapper)

source $ZSH/oh-my-zsh.sh
unsetopt correct_all
unsetopt share_history

export PATH=node_modules/.bin:$HOME/bin:$HOME/.local/bin:$HOME/perl5/bin:$PATH:/sbin:/usr/sbin:/usr/local/sbin

export EDITOR=vim
export MANPATH=/home/tcampbell/.local/share/man:/home/tcampbell/perl5/man:/usr/local/vwh/library/perl5/man:/usr/kerberos/man:/usr/local/share/man:/usr/share/man/en:/usr/share/man:/usr/X11R6/man:/usr/local/man


if [ -e $HOME/.zshrc_local ];then
    source $HOME/.zshrc_local
fi


## Only set the theme using prompt if it is found in available prompts
#autoload -U promptinit; promptinit
#if echo $( prompt -l ) | egrep "${ZSH_THEME}" > /dev/null; then
#    prompt $ZSH_THEME
#fi

#export DISPLAY=:0.0

#export EDITOR="$( which vim ) -X"


CVS_RSH=ssh

#alias cvsstat='cvs -n update 2>&1 | grep -P '\''(^(A|R|M|\?)|update aborted|warning)'\'''


if [[ "$COLORTERM" == "gnome-terminal" ]]; then
    if [[ "$TERM" == "xterm" ]]; then
        export TERM=xterm-256color
    fi
fi
