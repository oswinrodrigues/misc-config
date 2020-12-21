# Nuvation-specific
# -----------------

alias nuvmake="make -j $(nuvproc -m 1.6)"
alias nuvlint3="export PYTHONPATH=$PYTHONPATH:$(pwd) && pylint3 -j $(nuvproc -m 0.5) --rcfile=config/pylintrc"
alias nuvlint2="export PYTHONPATH=$PYTHONPATH:$(pwd) && pylint -j $(nuvproc -m 0.5) --rcfile=config/pylintrc"
alias nuvssh='sudo ifconfig lo0 alias 127.0.222.222 up && ssh -L 127.0.222.222:1194:10.202.10.0:1194 -t ORodrigues@wdcsshgateway.nuvation.com ssh -N ORodrigues@sshendpoint.nuvation.com'

# General
# -------

function cs () {
    cd "$@" && ls
}
