#!/bin/bash

# Set pipefail flag so we propogate exit of ${val} 
set -o pipefail

# Command to execute, which we'll display first
cmd="./ss.sh hello"
echo cmd=${cmd}

# Time and evaluate the command capturing stdout and stderr
# to z.txt. This includes the time the command took
( time eval ${cmd} ) 2>& 1 | tee z.txt
