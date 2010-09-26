export MANPATH=/opt/local/share/man:${MANPATH}
export DISPLAY=:0.0

export PERL5LIB=${HOME}/.local/lib/perl5/site_perl/5.10.1


export PATH=${HOME}/bin:${HOME}/.epic/bin:/sys/sdf/bin:${HOME}/.gem/ruby/1.8/bin:${PATH}

if [[ -d $HOME/android-sdk-mac_86/tools ]];
then
    export PATH=$PATH:$HOME/android-sdk-mac_86/tools
fi

export PATH=${PATH}:/usr/local/bin



if [[ -d /opt/local/bin ]];
then
    export PATH=$PATH:/opt/local/bin
fi

if [[ -d /opt/local/sbin ]];
then
    export PATH=$PATH:/opt/local/sbin
fi

