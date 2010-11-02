source $ZSH/custom/functions.zsh
export MANPATH=/opt/local/share/man:${MANPATH}
export DISPLAY=:0.0

export PERL5LIB=${HOME}/.local/lib/perl5/site_perl/5.10.1


#export PATH=${HOME}/bin:${HOME}/.epic/bin:/sys/sdf/bin:${HOME}/.gem/ruby/1.8/bin:${PATH}
if [ -d $HOME/android-sdk-mac_86/tools ];
MANPATH=/opt/local/share/man:${MANPATH}

if [ -d /opt/local/share/man ];
then
    export MANPATH=/opt/local/share/man:${MANPATH}
fi

if [ -d $HOME/android-sdk-mac_86/tools ];
then
    pathmunge $HOME/android-sdk-mac_86/tools
fi

if [ -d /opt/local/bin ];
then
    pathmunge /opt/local/bin
fi

if [ -d /opt/local/sbin ];
then
    pathmunge /opt/local/sbin
fi

if [ -d ${HOME}/.local/bin ];
then
    pathmunge ${HOME}/.local/bin
fi

if [ -d ${HOME}/bin ];
then
    pathmunge ${HOME}/bin
fi
#BEFORE_PATHS="${HOME}/.local/bin /usr/local"
#echo "before"
#echo $PATH
#for path in $BEFORE_PATHS
#do
#    pathmunge ${path}
#    export PATH
#done
#echo "after"
#echo $PATH
