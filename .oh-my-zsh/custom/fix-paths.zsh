source $ZSH/custom/functions.zsh
#export MANPATH=/opt/local/share/man:${MANPATH}
export DISPLAY=:0.0

if [ -d /opt/local/share/man ];
then
    export MANPATH=/opt/local/share/man:${MANPATH}
fi

BEFORE_PATHS=(/usr/local/bin /opt/local/bin /opt/local/sbin /usr/local/bin /usr/local/sbin $HOME/perl5/bin $HOME/.local/bin ${HOME}/bin)
for p in $BEFORE_PATHS
do
    if [ -d ${p} ]; then;
        pathmunge ${p}
    fi
done
#./.zprofile:export PERL5LIB="$HOME/perl5/lib/perl5/i486-linux-gnu-thread-multi:$HOME/perl5/lib/perl5:$PERL5LIB"
#./.oh-my-zsh/custom/fix-paths.zsh:export PERL5LIB=${PERL5LIB}:${HOME}/.local/lib/perl5/site_perl/5.10.1

