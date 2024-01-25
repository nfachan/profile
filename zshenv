path=(~/bin ~/scripts {/usr/local{,/go},/opt/local,/usr{,/X11},}/{s,}bin /opt/local/Library/Frameworks/Python.framework/Versions/Current/bin, ~/.cargo/bin)
manpath=({/usr/local,/opt/local,/usr{,/X11},}{/share,}/man)
fpath=(~/zfunc $fpath)
export MANPATH
umask 002
export LESS='-i -M -R'
export PAGER='less -s'
export EDITOR=vim
export HISTSIZE=10000
#export MANSECT="2:3:9:1:4:5:6:7:l:n"
export GOPATH=$HOME/go

# expansion and globbing
setopt extended_glob
if [ -f "$HOME/.cargo/env" ]; then
  . "$HOME/.cargo/env"
fi
