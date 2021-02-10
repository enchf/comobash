#!/bin/bash

if [[ $# == 0 ]]; then TARGET="$HOME/.bash_profile"; else TARGET=$1; fi
CMD="source $(pwd)/bin/comobash.sh"

echo $TARGET
echo $CMD
