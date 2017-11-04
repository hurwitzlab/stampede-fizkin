#!/bin/bash

set -u

module load singularity

IMG="fizkin.img"

if [[ -e "$IMG.xz" ]]; then
    xz -d "$IMG.xz"
fi

if [[ ! -e "$IMG" ]]; then
    echo "Cannot find Singularity image \"$IMG\""
    exit 1
fi

singularity run "$IMG" "$@"
