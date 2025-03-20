#!/bin/bash
# 
# This script is used by vscode to start gdbserver on the pi4
#

PROJECT_DIR=$(dirname $0)
#/../..
echo ${PROJECT_DIR}
source ${PROJECT_DIR}/script-env.sh

if [ "$#" -lt 1 ]; then
    echo "usage: $0 <APP> <ADDR>"
    echo "Fail: <APP> argument is mandatory."
    exit 1
fi

APP="$1"

if [ "$#" -gt 1 ]; then
    RPI4=$2
fi

echo "Deploying ${APP} to target..."

# kill gdbserver on target and delete old binary
ssh root@${RPI4} "sh -c '/usr/bin/killall -q gdbserver; exit 0'"

# Must match endsPattern in tasks.json
echo "Starting GDB Server on Target"

# start gdbserver on target
ssh -t root@${RPI4} "sh -c 'gdbserver localhost:3000 ${APP}'"
