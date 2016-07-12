#!/bin/bash

lambda=(0.01 0.1 1. 10)
basis=(50 60 70 80 90 100)
        
module load python 
module load h5py 

for lam in ${lambda[*]}; do
    for bas in ${basis[*]}; do
        echo $lam 
        echo $bas
        echo submitted a job
        sbatch bash_exec.sl 
    done
done

