bindkey "^[[H" beginning-of-line # home
bindkey "^[[F" end-of-line # end
bindkey $'\e[3~' delete-char
bindkey _ beginning-of-line
bindkey '^A' beginning-of-line
bindkey $'\e[1~' beginning-of-line
bindkey '^E' end-of-line
bindkey $'\e[4~' end-of-line
bindkey $'\e[5~' beep # pgup
bindkey $'\e[6~' beep # pgdn

bindkey $'\e[A' up-history
bindkey $'\e[B' down-history
bindkey '^R' history-incremental-search-backward
bindkey ' ' magic-space
bindkey $'\e[2~' overwrite-mode
bindkey $'\e[3~' delete-char
bindkey '^A' beginning-of-line
bindkey $'\e[7~' beginning-of-line
bindkey $'\eOH' beginning-of-line
bindkey '^E' end-of-line
bindkey $'\e[8~' end-of-line
bindkey $'\eOF' end-of-line
bindkey $'\e[5~' beep # pgup
bindkey $'\e[6~' beep # pgdn
bindkey '^?' backward-delete-char
