# Set pager
if [[ -f =less ]] 2> /dev/null {
  export PAGER=less
}
if [[ -f =most ]] 2> /dev/null {
  export PAGER=most
}

# Set editor
unset VISUAL
if [[ -f =vi ]] 2> /dev/null {
  export EDITOR=vi
}
if [[ -f =vim ]] 2> /dev/null {
  export EDITOR=vim
}
