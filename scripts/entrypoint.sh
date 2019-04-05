#!/bin/bash

. intel/bin/compilervars.sh intel64
export PATH="$HOME/bin:$PATH"
set +x
echo "running:"
echo "$@"
exec "$@"
