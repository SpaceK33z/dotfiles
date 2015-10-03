# Set pager
export PAGER=less
export LESS="-iMSx4 -FX"

# Set editor
unset VISUAL
if [[ -f =vi ]] 2> /dev/null {
  export EDITOR=vi
}
if [[ -f =vim ]] 2> /dev/null {
  export EDITOR=vim
}
