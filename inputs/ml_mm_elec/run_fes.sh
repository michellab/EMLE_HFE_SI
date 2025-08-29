#!/bin/bash
export FES_ML_LOG_LEVEL="DEBUG"
export FES_ML_DEBUG_LEVEL=1

# Define input
NUM_WINDOWS=6
SCRIPT="ml_mm_elec"
SOLUTE='c1ccccc1'
SOLVENT='[H:2][O:1][H:3]'
DENSITY=0.997
NITERATIONS=1100
EMLE_MODEL="ligand_bespoke_patched_species.mat"

# Loop to submit jobs
for i in $(seq 0 $NUM_WINDOWS); do
    # Create a unique job name for each submission
    WINDOW=$i

    OUTPUT_DIR=OUTPUT_$i
    mkdir $OUTPUT_DIR
    cd $OUTPUT_DIR
    echo "Submitting window $i"
    cp ../*mat .

    # Submit the job
    sbatch -J ${WINDOW}_${SCRIPT} ../submit_fes_window.slurm ${SCRIPT} ${WINDOW} ${SOLUTE} ${SOLVENT} ${DENSITY} ${NITERATIONS} ${EMLE_MODEL}

    cd ..
done
echo "All jobs have been submitted."
