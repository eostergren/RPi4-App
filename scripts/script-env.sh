#Basic environment shared between scripts

export PROJECT_DIR=$(dirname $(realpath ${BASH_SOURCE}))/../..

export PI4=raspberrypi4-64
export MNT="/mnt/rpi4"

export TEST_RESULT_DIR=test

bold=$(tput bold)
normal=$(tput sgr0)

function info() {
    echo "[nx] ${bold}> $@${normal}"
}
