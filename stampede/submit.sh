#!/bin/bash

set -u

sbatch -A iPlant-Collabs -N 1 -n 1 -t 24:00:00 -p normal -J fizkin run.sh -i /work/03137/kyclark/pam-morris/filtered/fasta -o /work/03137/kyclark/pam-morris/filtered/fizkin --metadata /work/03137/kyclark/pam-morris/filtered/meta.tab
