# Definitions of useful aliases and functions.
# Set up by default to use GNU Utilities installed by brew on Mac OS.
# If installing in GNU/Linux then delete the 'g' prefixed version and uncomment the standard one.

# Make some possibly destructive commands more interactive.
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'

# Add some easy shortcuts for formatted directory listings and add a touch of color.
alias ll='ls -lF'
alias la='ls -alF'
alias ls='ls -F'

# Make grep more user friendly by highlighting matches, recursively searching,
# and exclude grepping through .svn and .git folders.
alias grep='grep --color=auto --exclude-dir={\.svn,\.git} --recursive'

# skip virtual file systems, human readable output
# alias du='du -h --exclude=/{proc,sys,dev}'
alias du='gdu -h --exclude=/{proc,sys,dev}'

# Search for big files from the root
# alias dubig='sudo du -a --exclude=/{proc,sys,dev} / | sort -rh | head -n 20'
alias dubig='sudo gdu -a --exclude=/{proc,sys,dev} / | sort -rh | head -n 20'
