
if [ -z $OH_MY_ZSH__FIXED_PATHS ]; then
    source $HOME/.oh-my-zsh/custom/003-fix-paths.zsh
    OH_MY_ZSH__FIXED_PATHS="done"
    export OH_MY_ZSH__FIXED_PATHS
fi
