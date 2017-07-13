#   -------------------------------
#   1. ENVIRONMENT CONFIGURATION
#   -------------------------------

#   Enable Colours
#   ------------------------------------------------------------
    export CLICOLOR=1

#   Define Colours ANSI 256 chosen to be close to solarised
#   ------------------------------------------------------------
#   SOLARIZED  HEX      XTERM/HEX
#   ---------  -------  -----------
#   yellow     #b58900  136 #af8700
#   orange     #cb4b16  166 #d75f00
#   red        #dc322f  160 #d70000
#   magenta    #d33682  125 #af005f
#   violet     #6c71c4  61 #5f5faf
#   blue       #268bd2  33 #0087ff
#   cyan       #2aa198  37 #00afaf
#   green      #859900  64 #5f8700

    VIOLET="\[\033[38;5;61;48;5;0m\]"
    RED="\[\033[38;5;160;48;5;0m\]"
    DEFAULT="\[\033[0m\]"

#   Change Prompt
#   ------------------------------------------------------------
    SUCCESSPS1="🤖 ${VIOLET}\w\$ ${DEFAULT}"
    FAILPS1="👻 ${RED}[\$?]\n\n"
    #export PS1="$( if [[ \$? != 0 ]]; then echo ${FAILPS1}; fi ) ${SUCCESSPS1}"
    export PS1=${SUCCESSPS1}

#   Better ls Colours (Solarized)
#   ------------------------------------------------------------
    export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD

#   Note: Solarised vim implemented in .vim/colors and .vimrc
#   ------------------------------------------------------------


export http_proxy="http://[username]:[password]@proxy.domain.name:port"
export https_proxy=$http_proxy
export HTTP_PROXY=$http_proxy
export HTTPS_PROXY=$http_proxy

export HTTP_PROXY_REQUEST_FULLURI=0 # or false
export HTTPS_PROXY_REQUEST_FULLURI=0
