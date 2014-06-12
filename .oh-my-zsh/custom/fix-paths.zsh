
POSSIBLE_FUNCTIONS_PATHS=(
$ZSH
${HOME}/.oh-my-zsh
)
if [ `eval functions | grep -w splitstringby2 | wc -l` -eq 0 ];then
    for p in ${(Oa)POSSIBLE_FUNCTIONS_PATHS}
    do
        fp=${p}/custom/002-functions.zsh
        if [ -e ${fp} ]; then;
            source $fp
            break
        fi
    done
fi
#export MANPATH=/opt/local/share/man:${MANPATH}
#export DISPLAY=:0.0

if [ -d /opt/local/share/man ];
then
    export MANPATH=/opt/local/share/man:${MANPATH}
fi

BEFORE_PATHS=(
${HOME}/bin
$HOME/.local/bin
$HOME/perl5/bin
/usr/local/bin
/usr/local/sbin
/opt/local/bin
/opt/local/sbin
/usr/sbin
/sbin
/usr/bin
/bin
)
for p in ${(Oa)BEFORE_PATHS}
do
    PATH=$( remove_duplicate_strings "$PATH" ":" )
    if [ -d ${p} ]; then;
        pathmunge ${p}
    fi
done
