# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

#bash-completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
	. $(brew --prefix)/etc/bash_completion
fi

export CLICOLOR=1
# \h:\W \u\$
export PS1='\[\033[01;35m\]\h@\[\033[01;31m\] \W\$\[\033[00m\] '

# source .xsh_profile
if [ -f ~/git/x-setting/.xsh_profile ]; then
	. ~/git/x-setting/.xsh_profile
fi
