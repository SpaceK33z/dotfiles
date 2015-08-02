zstyle ':completion:*' auto-description 'Specify: %d'
zstyle ':completion:*' completer _expand _complete
zstyle ':completion:*' completions 1
zstyle ':completion:*' file-sort name
zstyle ':completion:*' format $'%{\e[0;37m%}Completions for %d:'
zstyle ':completion:*' glob 1
zstyle ':completion:*' group-name ''
zstyle ':completion:*' ignore-parents parent pwd ..
zstyle ':completion:*' insert-unambiguous true
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-prompt 'At %p: Hit TAB for more, or the character to insert'
zstyle ':completion:*' matcher-list '' 'l:|=* r:|=*' 'r:|[-._]=* r:|=*' '+m:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' max-errors 1 numeric
zstyle ':completion:*' menu select=2
zstyle ':completion:*' original false
zstyle ':completion:*' select-prompt 'Scrolling active: current selection at %p'
zstyle ':completion:*' substitute 1
zstyle ':completion:*:warnings' format 'No matches for: %d'

# Ssh/hostname completion
zstyle -e ':completion:*:*:ssh:*' users 'reply=()'
zstyle -e ':completion:*:*:scp:*' users 'reply=()'
# zstyle -e ':completion:*:hosts' hosts '[[ -r ~/.zhosts ]] && reply=(${${(f)"$(<~/.zhosts)"}:#\#*}) || reply=()'
zstyle -e ':completion:*:hosts' hosts '[[ -r ~/.ssh/known_hosts ]] && reply=(${${${${${(f)"$(<~/.ssh/known_hosts)"}:#[0-9]*}%%\ *}%%,*}//*=}) || reply=()'
