# zsh only

_calc() {
  python3 -c "from math import *; print(eval('$*'))"
}

alias c='noglob _calc'
