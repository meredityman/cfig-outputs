#!/bin/bash

REMOTE=Ishtar:/home/meredityman/cfig/Code/cfig-sd-docker/cfig-outputs
scriptDir=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
filename=$(basename "$0")
rclone sync -vvv --update --filter "- $filename" --filter "- .git*" $REMOTE "$scriptDir"/outputs
