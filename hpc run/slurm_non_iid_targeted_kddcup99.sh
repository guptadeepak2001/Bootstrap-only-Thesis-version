#!/bin/bash
#SBATCH --job-name=fip_noniid_tgt_kdd
#SBATCH --output=slurm_%x_%j.out
#SBATCH --error=slurm_%x_%j.err
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=16
#SBATCH --mem=32G
#SBATCH --time=24:00:00
# If agastya exposes a partition, uncomment and set the right name:
# #SBATCH --partition=cpu

set -euo pipefail
cd "$SLURM_SUBMIT_DIR"

# Activate conda env
source "$HOME/miniconda3/etc/profile.d/conda.sh"
conda activate fip

export MPLBACKEND=Agg
export OMP_NUM_THREADS=1   # avoid oversubscription: multiprocessing handles parallelism

bash ./run_notebook.sh non_iid_targeted_kddcup99.ipynb
