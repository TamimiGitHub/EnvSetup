#!/bin/bash

# https://www.gnu.org/savannah-checkouts/gnu/bash/manual/bash.html#The-Set-Builtin
set -euo pipefail

## for loop with vars

# Check necessary environment variables
for envvar in \
    ENV1 \
    ENV2 \
    ENV3 \
; do
  if [ -z "${!envvar}" ]; then
    echo "\$${envvar} is not set!"
    exit 1
  fi
done
