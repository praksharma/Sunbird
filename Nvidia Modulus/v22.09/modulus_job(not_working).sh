#!/bin/bash
#SBATCH --nodes 1
#SBATCH --cpus-per-task 2
#SBATCH --time 05:00:00
#SBATCH --ntasks=1
#SBATCH --job-name jupyter-lab
#SBATCH -o $(pwd)/output.txt
#SBATCH -e $(pwd)/error.txt
#SBATCH --gres=gpu:2
#SBATCH --account=scw1901
#SBATCH --partition=accel_ai
####SBATCH --nodelist=scs2043

# get tunneling info

port=8888
node=$(hostname -s)
user=$(whoami)

# image_path = "/home/scratch/s.1915438/modulus22.09_apptainer/modulus_22.09.img"
# home_dir = "/home/s.1915438/"

module load apptainer/1.0.3 

# run jupyter notebook
apptainer exec --contain --nv --cleanenv --bind "/home/s.1915438/":/data,/tmp:/tmp --env CUDA_VISIBLE_DEVICES=$CUDA_VISIBLE_DEVICES --home /data  "/home/scratch/s.1915438/modulus22.09_apptainer/modulus_22.09.img" jupyter-lab --no-browser --port=${port} --ip=${node}
# apptainer exec --contain --nv --cleanenv --bind "$(pwd)":/data,/tmp:/tmp --env CUDA_VISIBLE_DEVICES=$CUDA_VISIBLE_DEVICES --home /data  modulus_22.09.img jupyter-lab --no-browser --port=${port} --ip=0.0.0.0

