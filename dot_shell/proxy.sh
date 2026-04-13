export PROXY_PORT=7897

proxy_on() {
  export http_proxy="http://127.0.0.1:$PROXY_PORT"
  export https_proxy="http://127.0.0.1:$PROXY_PORT"
  export ALL_PROXY="socks5://127.0.0.1:$PROXY_PORT"
  printf 'proxy enabled on %s\n' "$PROXY_PORT"
}

proxy_off() {
  unset http_proxy
  unset https_proxy
  unset ALL_PROXY
  printf 'proxy disabled\n'
}

alias pon="proxy_on"
alias poff="proxy_off"
