#!/bin/bash
# Usage: ./run_notebook.sh <notebook.ipynb>
# Executes the notebook headless and writes <notebook>.executed.ipynb,
# plus any CSV/PNG the notebook itself saves. Backend is forced to Agg.

set -euo pipefail

NB="${1:-non_iid_targeted_kddcup99.ipynb}"
BASE="${NB%.ipynb}"
LOG="${BASE}.log"

export MPLBACKEND=Agg

echo "[run_notebook] executing ${NB}  ->  ${BASE}.executed.ipynb"
echo "[run_notebook] log: ${LOG}"
echo "[run_notebook] host: $(hostname)  nproc: $(nproc 2>/dev/null || echo '?')"
date

jupyter nbconvert \
    --to notebook \
    --execute "${NB}" \
    --output "${BASE}.executed.ipynb" \
    --ExecutePreprocessor.timeout=-1 \
    --ExecutePreprocessor.kernel_name=python3 \
    2>&1 | tee "${LOG}"

echo "[run_notebook] done"
date
