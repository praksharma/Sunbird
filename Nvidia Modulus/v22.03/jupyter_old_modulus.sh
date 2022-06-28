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
source env/modulus/bin/activate
jupyter-lab --no-browser --port=${port} --ip=${node}
