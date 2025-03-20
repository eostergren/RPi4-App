!/bin/bash
#
# This script mounts pi4 locally using sshfs
#

PROJECT_DIR=$(dirname $0)/..

echo project dir - ${PROJECT_DIR}

ls ${PROJECT_DIR}

source ${PROJECT_DIR}/scripts/script-env.sh


set -e
if [ "$#" -gt 0 ]; then
    PI4=$1
fi

echo "DHU Address: ${PI4}"
echo "Mountpoint: ${MNT}"

if [[ ! -d ${MNT} ]]; then
    sudo mkdir -p ${MNT}
    sudo chown ${USER}:${USER} ${MNT}
fi

sudo umount ${MNT} || true
sshfs root@${PI4}:/ -o reconnect ${MNT}

echo "Done"

