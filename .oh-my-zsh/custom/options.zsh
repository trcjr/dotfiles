## background processes aren't killed on exit of shell
#setopt AUTO_CONTINUE
## don’t write over existing files with >, use >! instead
setopt NOCLOBBER
## watch other user login/out
setopt extendedglob
setopt sh_word_split
#watch=notme
