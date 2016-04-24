bindkey -v
bindkey -M vicmd $'\e[2~' vi-insert
bindkey -M vicmd $'\e[3~' delete-char
bindkey -M vicmd _ beginning-of-line
bindkey -M vicmd '^A' beginning-of-line
bindkey -M vicmd $'\e[1~' beginning-of-line
bindkey -M vicmd '^E' end-of-line
bindkey -M vicmd $'\e[4~' end-of-line
bindkey -M vicmd $'\e[5~' beep # pgup
bindkey -M vicmd $'\e[6~' beep # pgdn
bindkey -M vicmd $'\eOd' vi-backward-blank-word
bindkey -M vicmd $'\eOc' vi-forward-blank-word

bindkey -M viins $'\e[A' up-history
bindkey -M viins $'\e[B' down-history
bindkey -M viins '^R' history-incremental-search-backward
bindkey -M viins ' ' magic-space
bindkey -M viins $'\e[2~' overwrite-mode
bindkey -M viins $'\e[3~' delete-char
bindkey -M viins '^A' beginning-of-line
bindkey -M viins $'\e[1~' beginning-of-line
bindkey -M viins $'\e[7~' beginning-of-line
bindkey -M viins $'\eOH' beginning-of-line
bindkey -M viins '^E' end-of-line
bindkey -M viins $'\e[4~' end-of-line
bindkey -M viins $'\e[8~' end-of-line
bindkey -M viins $'\eOF' end-of-line
bindkey -M viins $'\e[5~' beep # pgup
bindkey -M viins $'\e[6~' beep # pgdn
bindkey -M viins '^?' backward-delete-char
bindkey -M viins $'\eOd' vi-backward-blank-word
bindkey -M viins $'\eOc' vi-forward-blank-word

# Delay after switching to vim normal mode; default is 40
export KEYTIMEOUT=1
