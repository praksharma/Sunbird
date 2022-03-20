#!/bin/bash
#SBATCH --nodes 1
#SBATCH --cpus-per-task 5
#SBATCH --time 03:00:00
#SBATCH --ntasks=1
#SBATCH --job-name jupyter-lab
#SBATCH -o /home/s.1915438/jupyter_log/jupyter-lab-%J.log
#SBATCH -e /home/s.1915438/jupyter_log/jupyter-lab-%J.log
#SBATCH --gres=gpu:1
#SBATCH --account=scw1901
#SBATCH --partition=accel_ai

# get tunneling info

port=8888
node=$(hostname -s)
user=$(whoami)


# run jupyter notebook
module load anaconda/3
source activate ml
jupyter-lab --no-browser --port=${port} --ip=${node}
