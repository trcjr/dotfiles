# Aliases

alias syn='nohup ~/synergy-1.3.1/synergyc -f -n blackbook 192.168.0.243 &'
alias syn2='nohup ~/synergy-1.3.1/synergyc -f -n blackbook 192.168.1.110 &'
alias syn3='nohup ~/synergy-1.3.1/synergyc -f -n blackbook 192.168.0.181 &'
alias syn4='nohup ~/synergy-1.3.1/synergyc -f -n blackbook 192.168.1.98 &'
alias syn5='nohup ~/synergy-1.3.1/synergyc -f -n blackbook bluey.local &'
#alias cpanp='sudo PERL5LIB="/Users/trcjr/.local/lib/perl5/site_perl/5.10.1" cpanp'
alias ll='ls -l'
#alias duhs="/usr/bin/du -sk * | sort -nr | cut -f2 | awk -F "\n" '{print "\""$1"\""}' | xargs /usr/bin/du -sh"
#
#
#

## apt specific
alias sa='sudo apt-get'
alias sai='sudo apt-get install'
alias sau='sudo apt-get update'
alias saug='sudo apt-get upgrade'
alias sar='sudo apt-get remove'
alias saar='sudo apt-get autoremove'
alias sap='sudo apt-get --purge autoremove'
alias acp='apt-cache policy'
alias acs='apt-cache show'
alias acd='apt-cache depends'

## admin specific
alias stf='sudo tail -f'
alias stn='sudo tail -n'
alias sv='sudo vim'

## play safe
alias 'rm=rm -i'
alias 'mv=mv -i'
alias 'cp=cp -i'
alias 'mkdir=mkdir -p'
alias 'dus=du -ms * | sort -n'
alias 'v=vim'
alias 'j=jobs -l'
alias 'tf=tail -f'
alias 'rh=rehash'
alias 'q=exit'
alias 'h=history'
alias 'gist=pygist.py'

## useful args
alias -g L='| less'
alias -g H='| head'
alias -g S='| sort'
alias -g T='| tail'


## rtorrent
alias rtorrent='stty stop undef; stty start undef; /usr/bin/rtorrent'

alias pmver="$( which perl ) -le '\$m = shift; eval qq(require \$m) or die qq(module \"\$m\" is not installed\\n); (\$f = \$m) =~ s@::@/@g; \$f .= \".pm\"; print qq(Location: \$INC{\$f}); if (not defined \$m->VERSION) { print qq(\"\$m\" has no VERSION specified\\n) } else { print qq(Version: ), \$m->VERSION }'" 
