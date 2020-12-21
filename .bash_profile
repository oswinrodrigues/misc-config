# Set architecture flags
export ARCHFLAGS="-arch x86_64"
# Ensure user-installed binaries take precedence
export PATH=/usr/local/bin:$PATH
# Load .bashrc if it exists
test -f ~/.bashrc && source ~/.bashrc

# Git branch in prompt.
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/[\1]/'
}
branch="\$(parse_git_branch)"

black="\[\033[00m\]"
green="\[\033[32;1m\]"
yellow="\[\033[33;1m\]"
blue="\[\033[01;34m\]"
cyan="\[\033[36;1m\]"
white="\[\033[m\]"

PS1="$green[\h]$yellow[\W]$cyan$branch$white\$ "
export PS1
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export EDITOR=/usr/local/bin/code

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH
# Setting PATH for Python 3.3
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.3/bin:${PATH}"
export PATH
# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH

# Aliases
# Git
alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit'
alias gd='git diff'
alias go='git checkout '
alias gk='gitk --all&'
alias gx='gitx --all'

# Terminal
alias cp='cp -iv'                           # Preferred 'cp' implementation
alias mv='mv -iv'                           # Preferred 'mv' implementation
alias mkdir='mkdir -pv'                     # Preferred 'mkdir' implementation
alias ll='ls -FGlAhp'                       # Preferred 'ls' implementation
alias ls='ls -GFh'
alias less='less -FSRXc'                    # Preferred 'less' implementation
# cs() { builtin cd "$@"; ls; }               # Always list directory contents upon 'cs'
alias cd..='cd ../'                         # Go back 1 directory level (for fast typers)
alias .1='cd ../'                           # Go back 1 directory level
alias .2='cd ../../'                        # Go back 2 directory levels
alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias .5='cd ../../../../../'               # Go back 5 directory levels
alias .6='cd ../../../../../../'            # Go back 6 directory levels
alias edit='code'                           # edit:         Opens any file in VS Code editor
alias f='open -a Finder ./'                 # f:            Opens current directory in MacOS Finder
alias ~="cd ~"                              # ~:            Go Home
alias c='clear'                             # c:            Clear terminal display
alias which='type -all'                     # which:        Find executables
alias path='echo -e ${PATH//:/\\n}'         # path:         Echo all executable Paths
alias show_options='shopt'                  # Show_options: display bash options settings
alias fix_stty='stty sane'                  # fix_stty:     Restore terminal settings when screwed up
alias cic='set completion-ignore-case On'   # cic:          Make tab-completion case-insensitive
mcd () { mkdir -p "$1" && cd "$1"; }        # mcd:          Makes new Dir and jumps inside
trash () { command mv "$@" ~/.Trash ; }     # trash:        Moves a file to the MacOS trash
ql () { qlmanage -p "$*" >& /dev/null; }    # ql:           Opens any file in MacOS Quicklook Preview
alias DT='tee ~/Desktop/terminalOut.txt'    # DT:           Pipe content to file on MacOS Desktop

#   lr:  Full Recursive Directory Listing
#   ------------------------------------------
alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'' | less'

#   mans:   Search manpage given in agument '1' for term given in argument '2' (case insensitive)
#           displays paginated result with colored search terms and two lines surrounding each hit.             Example: mans mplayer codec
#   --------------------------------------------------------------------
    mans () {
        man $1 | grep -iC2 --color=always $2 | less
    }

#   showa: to remind yourself of an alias (given some part of it)
#   ------------------------------------------------------------
    showa () { /usr/bin/grep --color=always -i -a1 $@ ~/Library/init/bash/aliases.bash | grep -v '^\s*$' | less -FSRXc ; }
