cd /scratch/s.1915438
source modulus_pysdf/modulus_pysdf/bin/activate

# set environment variable for PySDF
cd /scratch/s.1915438/Modulus_source/Modulus/external
export LD_LIBRARY_PATH=$(pwd)/lib/:${LD_LIBRARY_PATH}

cd /scratch/s.1915438
# Run Jupyter lab
jupyter-lab
