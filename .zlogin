#if [ -e $HOME/.zshrc_local ];then
#    source $HOME/.zshrc_local
#fi
#
#if [ $( which byobu-launcher > /dev/null 2>&1 ; echo -n $? ) -lt 1 ]; then
#    case "$-" in *i*) byobu-launcher -T xterm-256color -xRR; esac;
#fi
