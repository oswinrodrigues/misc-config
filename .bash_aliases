# General
# -------

alias cp='cp -iv'                           # Preferred 'cp' implementation
alias mv='mv -iv'                           # Preferred 'mv' implementation
alias ll='ls -FGlAhp'                       # Preferred 'ls' implementation
alias ls='ls -GFh'                          # Preferred 'ls' implementation
alias less='less -FSRXc'                    # Preferred 'less' implementation
alias mkdir='mkdir -pv'                     # Preferred 'mkdir' implementation

mcd () { mkdir -p "$1" && cd "$1"; }        # Makes new dir and jumps inside
cs() { builtin cd "$@"; ls; }               # Always list directory contents upon cd

alias .1='cd ../'                           # Go back 1 directory level
alias .2='cd ../../'                        # Go back 2 directory levels
alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias .5='cd ../../../../../'               # Go back 5 directory levels

alias which='type -all'                     # Find executables
alias path='echo -e ${PATH//:/\\n}'         # Echo all executable Paths
alias show_options='shopt'                  # Display bash options settings
alias fix_stty='stty sane'                  # Restore terminal settings when screwed up

# Full Recursive Directory Listing
alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'' | less'

# Search manpage given in agument '1' for term given in argument '2' (case insensitive)
# Displays paginated result with colored search terms and two lines surrounding each hit.
# Example: mans mplayer codec
mans () { man $1 | grep -iC2 --color=always $2 | less }

# To remind yourself of an alias (given some part of it)
showa () { /usr/bin/grep --color=always -i -a1 $@ ~/Library/init/bash/aliases.bash | grep -v '^\s*$' | less -FSRXc ; }
