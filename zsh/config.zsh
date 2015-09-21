if [[ -n $SSH_CONNECTION ]]; then
  export PS1='%m:%3~$(git_info_for_prompt)%# '
else
  export PS1='%3~$(git_info_for_prompt)%# '
fi

export CLICOLOR=true
export GREP_OPTIONS="--color=auto"

eval "$(dircolors)"

fpath=($ZSH/functions $fpath)

autoload -U $ZSH/functions/*(:t)

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=5000
DIRSTACKSIZE=20

# Directory history
setopt auto_cd auto_pushd pushd_minus pushd_silent pushd_to_home
# Completion and globbing
setopt complete_in_word extended_glob list_packed
# History
setopt extended_history hist_ignore_dups hist_ignore_space
# Mistake protection
setopt noclobber rm_star_silent
# Misc
setopt nobeep rc_quotes

zle -N newtab

# prevent new files from being created group and world writable
umask 022
