declare -A COLOR
COLOR=(
   k $'%{\e[0;30m%}'  r $'%{\e[0;31m%}'  g $'%{\e[0;32m%}'  y $'%{\e[0;33m%}'
   b $'%{\e[0;34m%}'  m $'%{\e[0;35m%}'  c $'%{\e[0;36m%}'  w $'%{\e[0;37m%}'
  bk $'%{\e[1;30m%}' br $'%{\e[1;31m%}' bg $'%{\e[1;32m%}' by $'%{\e[1;33m%}'
  bb $'%{\e[1;34m%}' bm $'%{\e[1;35m%}' bc $'%{\e[1;36m%}' bw $'%{\e[1;37m%}'
   n $'%{\e[0m%}'
)

# Set up default colors
if [[ -z "$COLOR[$COLOR_HOST]" ]] {
  COLOR_HOST=by
}
if [[ -z "$COLOR[$COLOR_USER]" ]] {
  COLOR_USER=y
}

# Construct the prompt
PROMPT=""
PROMPT+="%(!/$COLOR[br]/$COLOR[bk])["
PROMPT+="%(!/$COLOR[r]/$COLOR[$COLOR_USER])%n"
PROMPT+="$COLOR[bk]@"
PROMPT+="$COLOR[$COLOR_HOST]%m "
PROMPT+="$COLOR[w]%2~ "
PROMPT+="%(?/$COLOR[bg]./$COLOR[br]!)"
PROMPT+="%(!/$COLOR[br]/$COLOR[bk])]"
PROMPT+="%(!/$COLOR[r]/$COLOR[$COLOR_USER])%#"
PROMPT+="$COLOR[n] "

# And the right prompt
function show-rprompt {
    RPROMPT=""
    RPROMPT+="${COLOR[bk]}["
    RPROMPT+="$VIMODE"
    RPROMPT+="$COLOR[bw]%D{%T}"
    RPROMPT+="$COLOR[bk]]"
    RPROMPT+="$COLOR[n]"
}

# When in VIM's "normal" mode, show this in the right prompt
function zle-line-init zle-keymap-select {
    VIM_PROMPT="NORMAL "
    VIMODE="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/}"
    show-rprompt
    zle reset-prompt
}

zle -N zle-line-init
zle -N zle-keymap-select

show-rprompt

# Set the window title to <user>@<host> <cwd>
precmd() {
  if [[ ${TERM} == (xterm|rxvt|screen)* ]] print -Pn $'\e]0;%n@%m: %~\a'
}

# Set the window title to the command the user entered.
preexec() {
  if [[ ${TERM} == (xterm|rxvt|screen)* ]] printf "\e]0;%s\a" "${1}"
}
