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
    FAILPS1="👻 ${RED}[\$?] \n\n${DEFAULT}"
    #export PS1="$( if [[ \$? != 0 ]]; then echo ${FAILPS1}; fi ) ${SUCCESSPS1}"
    export PS1=${SUCCESSPS1}

#   Better ls Colours (Solarized)
#   ------------------------------------------------------------
    export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD

#   Note: Solarised vim implemented in .vim/colors and .vimrc
#   ------------------------------------------------------------

# Avoid succesive duplicates in the bash command history.
export HISTCONTROL=ignoredups

# Append commands to the bash command history file (~/.bash_history)
# instead of overwriting it.
shopt -s histappend

# Append commands to the history every time a prompt is shown,
# instead of after closing the session.
PROMPT_COMMAND='history -a'

# Set the proxy if reuired
export http_proxy="http://[username]:[password]@proxy.domain.name:port"
export https_proxy=$http_proxy
export HTTP_PROXY=$http_proxy
export HTTPS_PROXY=$http_proxy

export HTTP_PROXY_REQUEST_FULLURI=0 # or false
export HTTPS_PROXY_REQUEST_FULLURI=0

# Homebrew completions https://docs.brew.sh/Shell-Completion
if type brew &>/dev/null; then
  HOMEBREW_PREFIX="$(brew --prefix)"
  if [[ -r "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh" ]]; then
    source "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh"
  else
    for COMPLETION in "${HOMEBREW_PREFIX}/etc/bash_completion.d/"*; do
      [[ -r "$COMPLETION" ]] && source "$COMPLETION"
    done
  fi
fi

# Add bash aliases.
if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi
