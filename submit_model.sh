#!/bin/bash
#SBATCH --gres=gpu:1
#SBATCH --mail-type=ALL
#SBATCH --mail-user=<your_username>

WORK_DIR="/vol/bitbucket/kst24/iso/iBackup"
CUDA_VERSION="11.8.0"

export PATH=/vol/bitbucket/kst24/iso/iBackup/:$PATH
source "/vol/cuda/${CUDA_VERSION}/setup.sh"

pip3 install -r "${WORK_DIR}/requirements.txt"
python3 -u "${WORK_DIR}/train.py"