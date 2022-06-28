#!/bin/bash
#SBATCH --nodes 1
#SBATCH --cpus-per-task 8
#SBATCH --time 06:00:00
#SBATCH --ntasks=1
#SBATCH --job-name Nvidia-modulus-jupyter-lab
#SBATCH -o /scratch/s.1915438/jupyter_log/jupyter-lab-%J.log
#SBATCH -e /scratch/s.1915438/jupyter_log/jupyter-lab-%J.log
#SBATCH --gres=gpu:2
#SBATCH --account=scw1901
#SBATCH --partition=accel_ai

# get tunneling info

port=8888
node=$(hostname -s)
user=$(whoami)


# run jupyter notebook
cd /scratch/s.1915438
source modulus_pysdf/modulus_pysdf/bin/activate

# set environment variable for PySDF
cd /scratch/s.1915438/Modulus_source/Modulus/external
export LD_LIBRARY_PATH=$(pwd)/lib/:${LD_LIBRARY_PATH}

cd /scratch/s.1915438
# Run Jupyter lab
jupyter-lab --no-browser --port=${port} --ip=${node}
