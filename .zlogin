if [ -e $HOME/.zshrc_local ];then
    source $HOME/.zshrc_local
fi

case "$-" in *i*) byobu-launcher -xRR; esac;
