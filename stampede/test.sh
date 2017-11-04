#!/bin/bash

#SBATCH -A iPlant-Collabs
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -t 02:00:00
#SBATCH -p development
#SBATCH -J fizkin
#SBATCH --mail-type BEGIN,END,FAIL
#SBATCH --mail-user kyclark@email.arizona.edu

sbatch
singularity run -B $SCRATCH/centrifuge/test:/data centrifuge-bubble-0.0.1.img -d /data/reports -o /data/out -e "Homo sapiens, synthetic construct" -t "Pacific Ocean Virome"
