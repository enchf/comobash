#!/bin/bash

if [[ $# == 0 ]]; then TARGET="$HOME/.bash_profile"; else TARGET=$1; fi
SCRIPT="$(pwd)/bin/comobash.sh"
CMD="source $SCRIPT"
GREP=$(fgrep "$CMD" $TARGET -x -n)

if [[ -z $GREP ]]; then
    echo "" >> $TARGET
    echo "# Comobash command line utils" >> $TARGET
    echo "export COMOBASH_TARGET=$TARGET" >> $TARGET
    echo "export COMOBASH_SCRIPT=$SCRIPT" >> $TARGET
    echo $CMD >> $TARGET
    echo "Installed in file $TARGET"
    source $TARGET
else 
    echo "Already installed in file $TARGET"
fi
