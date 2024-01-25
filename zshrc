start_red='%{[31m%}'
end='%{[39m%}'
start_purple='%{[35m%}'
export PS1="${start_red}%m${end}:${start_purple}%~${end}%(2L.{%L}.)%(1j.(%j).)%(?..[%?])%# "

alias vi='vim'
alias vim='vim -o'
alias root='sudo su root'
if [ `uname` = 'Linux' ]; then
	alias ls='ls -F --color=auto'
else
	alias ls='ls -FG'
fi

#alias ps='ps -o pid,ppid,%cpu,%mem,stat,wchan,start,user,tt,command'

# directories
#setopt auto_cd			# bare directory is like cd <directory>
setopt auto_pushd		# automatically push all directories
DIRSTACKSIZE=4

# completion
setopt no_list_beep		# don't beep on ambiguous completions
setopt complete_in_word		# allow completion in the middle of a word

# history

autoload -U history-search-end
#zle -N history-beginning-search-backward-end history-search-end
#zle -N history-beginning-search-forward-end history-search-end
bindkey "\e" history-incremental-search-backward
bindkey "\e" history-incremental-search-forward

function spawnquark {
	(infrastructure/quark/broker.py --data-dir ~/quark-data --port 9999 --http-port 8888 & sleep 1; infrastructure/quark/worker.py --data-dir ~/quark-data --port 9999)
}

# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' completions 1
zstyle ':completion:*' glob 1
zstyle ':completion:*' max-errors 2
zstyle ':completion:*' substitute 1
zstyle :compinstall filename '/Users/neal/.zshrc'

autoload -U compinit
compinit
# End of lines added by compinstall

autoload -U vcs_info
autoload -U zcalc
autoload -U zargs
autoload -U zmv

eval "$(direnv hook zsh)"
