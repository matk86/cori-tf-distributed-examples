#!/bin/bash -l

#SBATCH -p regular
#SBATCH -C haswell
#SBATCH -o batch_outputs/slurm_%N.%j.out
#SBATCH -e batch_outputs/slurm_%N.%j.out
#SBATCH --qos=premium
#rm -rf ./logs/*
if [ ! -d "logs" ]; then
  mkdir logs
fi
module load deeplearning
srun python -u main.py $@
