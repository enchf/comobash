#!/bin/bash

if [[ $# == 0 ]]; then TARGET="$HOME/.bash_profile"; else TARGET=$1; fi
CMD="source $(pwd)/bin/comobash.sh"
GREP=$(fgrep "$CMD" $TARGET -x -n)

if [[ -z $GREP ]]; then
    echo "# Comobash command line utils" >> $TARGET
    echo $CMD >> $TARGET
    echo "Installed in file $TARGET"
else 
    echo "Already installed in file $TARGET"
fi
