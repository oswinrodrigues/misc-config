# Nuvation-specific
# -----------------

# On dev machine (Pingu server or CERISE VM)
# Replace "nuvproc -m <num>" with "nproc" for VM
alias nuvmake="make -j $(nuvproc -m 1.6) -C ~/bms-device/fw"
alias nuvlint3="export PYTHONPATH=$PYTHONPATH:~/bms-device &&
                pylint3 -j $(nuvproc -m 0.5) --rcfile=~/bms-device/config/pylintrc"
alias nuvlint2="export PYTHONPATH=$PYTHONPATH:~/bms-device &&
                pylint -j $(nuvproc -m 0.5) --rcfile=~/bms-device/config/pylintrc"
alias nuvtestbms="~/bms-device/fw/bin/x86/bms_test.exe -c"
alias nuvtestsc="~/bms-device/fw/bin/x86/sc_test.exe -c"
alias nuvtestpi="~/bms-device/fw/bin/x86/pi_test.exe -c"
alias nuvtest="nuvtestbms && nuvtestsc && nuvtestpi"

# On VM only
alias nuvmnt="sudo mount                                                         \
              --types cifs                                                       \
              --source //pingu.bms.nuvation.com/orodrigues/bms-device/fw/bin     \
              --target /mnt/pingu-builds/                                        \
              --options user=orodrigues,uid=1000,gid=1000"
alias nuvflashsc="~/bms-device/py3/tools/flash.py sc                             \
                  --programmer BusBlaster                                        \
                  --usb nebb13                                                   \
                  --sc_firmware /mnt/pingu-builds/tiva/sc.bin                    \
                  --sc_bootloader /mnt/pingu-builds/tiva_small/sc_bootloader.bin \
                  --mass_erase"
alias nuvflashpi="~/bms-device/py3/tools/flash.py pi                             \
                  --programmer BusBlaster                                        \
                  --usb nebb17                                                   \
                  --pi_firmware /mnt/pingu-builds/stm32/pi.bin                   \
                  --pi_bootloader /mnt/pingu-builds/stm32/pi_bootloader.bin      \
                  --mass_erase"
alias nuvflashtar="~/bms-device/py/tools/http_upgrade.py tar                     \
                   --tarball /mnt/pingu-builds/upgrade.tar"
alias nuvflash="nuvflashsc && nuvflashpi"

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
