#!/bin/bash
#$ -N sum_test
#$ -q class8i
#$ -pe openmp 8

# Module load gcc compiler version 4.8.2
module load  gcc/4.9.2
module load MATLAB/r2015a
# Runs a bunch of standard command-line
# utilities, just as an example:
export OMP_NUM_THREADS=1
#export OMP_NUM_THREADS=4
echo "Script began:" `date`
echo "Node:" `hostname`
echo "Current directory: ${PWD}"

echo ""
echo "=== Running 5 trials of Mergesort on 10 million elements ... ==="
for trial in 1 2 3 4 5 ; do
  echo "*** Trial ${trial} ***"
  ./test1
done

echo ""
echo "=== Done! ==="

# eof
