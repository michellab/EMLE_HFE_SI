#!/bin/bash
#SBATCH --time=168:00:00        # Run for a max of 1 hour
#SBATCH --partition=main
#SBATCH --nodes=1           # Resources from a single node
#SBATCH --gres=gpu:1        # One GPU per node (plus 25% of node CPU and RAM per GPU)

# Capture first positional argumnet
SCRIPT=$1
WINDOW=$2
SOLUTE=$3
SOLVENT=$4
DENSITY=$5
NITERATIONS=$6

# Export environmental variables
python -u ../${SCRIPT}.py ${SCRIPT} ${WINDOW} --solute ${SOLUTE} --solvent ${SOLVENT} --density ${DENSITY} --niterations ${NITERATIONS} > ${SCRIPT}_${WINDOW}.output 2> ${SCRIPT}_${WINDOW}.errors
