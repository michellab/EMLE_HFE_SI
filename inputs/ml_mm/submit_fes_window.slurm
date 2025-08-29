#!/bin/bash
#€SBATCH --account=bdhbs30
#SBATCH --time=9999:00:00        # Run for a max of 1 hour

#SBATCH --partition=main    # gpu for BEDE
#SBATCH --nodes=1           # Resources from a single node
#SBATCH --gres=gpu:1        # One GPU per node (plus 25% of node CPU and RAM per GPU)

# Capture first positional argumnet
SCRIPT=$1
WINDOW=$2
SOLUTE=$3
SOLVENT=$4
DENSITY=$5
NITERATIONS=$6
EMLE_MODEL=$7

# Export environmental variables
python -u ../${SCRIPT}.py ${SCRIPT} ${WINDOW} --solute ${SOLUTE} --solvent ${SOLVENT} --density ${DENSITY} --niterations ${NITERATIONS} --emle-model ${EMLE_MODEL} > ${SCRIPT}_${WINDOW}.output 2> ${SCRIPT}_${WINDOW}.errors
