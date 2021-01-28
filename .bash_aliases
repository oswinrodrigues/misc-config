# Nuvation-specific
# -----------------

# On dev machine (Pingu or CERISE VM)
# Replace "nuvproc -m <num>" with "nproc" for VM
alias nuvmake="make -j $(nuvproc -m 1.6)"
alias nuvlint3="export PYTHONPATH=$PYTHONPATH:$(pwd) && pylint3 -j $(nuvproc -m 0.5) --rcfile=config/pylintrc"
alias nuvlint2="export PYTHONPATH=$PYTHONPATH:$(pwd) && pylint -j $(nuvproc -m 0.5) --rcfile=config/pylintrc"
alias nuvmnt="sudo mount -t cifs //pingu.bms.nuvation.com/orodrigues/ /mnt/pingu/ -o user=orodrigues,uid=1000,gid=1000" # On VM
# On local machine (personal, at-home)
alias nuvpn='sudo python3 ~/nuvpn_tunnel_magic.py' # See http://git.bms.nuvation.com/-/snippets/55 for script
alias nuvcode='code --folder-uri "vscode-remote://ssh-remote+PINGU/home/orodrigues/bms-device"'

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
