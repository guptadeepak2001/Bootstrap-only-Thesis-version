#!/bin/bash
#PBS -N fip_noniid_tgt_kdd
#PBS -l select=1:ncpus=40:mem=64gb
#PBS -l walltime=48:00:00
#PBS -j oe
#PBS -o pbs_fip_noniid_tgt_kdd.log
#PBS -q cpu-general

set -euo pipefail
cd "$PBS_O_WORKDIR"

# Activate conda env
source "$HOME/miniconda3/etc/profile.d/conda.sh"
conda activate fip

export MPLBACKEND=Agg
export OMP_NUM_THREADS=1   # multiprocessing handles parallelism; avoid oversubscription

echo "[pbs] host=$(hostname) cores=$(nproc) cwd=$PWD"
date

bash ./run_notebook.sh non_iid_targeted_kddcup99.ipynb

date
echo "[pbs] done"
