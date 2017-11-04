#!/bin/bash

module load singularity
echo "Started $(date)"
echo "Args $*"
run.sh "${IN_DIR}" "${METADATA}"
echo "Ended $(date)"
