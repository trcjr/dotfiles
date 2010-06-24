## background processes aren't killed on exit of shell
#setopt AUTO_CONTINUE
## don’t write over existing files with >, use >! instead
setopt NOCLOBBER
## watch other user login/out
#watch=notme

setopt \
    no_beep \
    correct \
    auto_list \
    complete_in_word \
    auto_pushd \
    complete_aliases \
    extended_glob \
    zle

