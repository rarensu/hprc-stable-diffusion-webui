#!/bin/bash
#########################################################
# Uncomment and change the variables below to your need:#
#########################################################

#module load GCC/10.3.0 OpenMPI/4.1.1 PyTorch/1.12.1-CUDA-11.3.1 torchvision 
#git CMake

# Install directory without trailing slash
install_dir="$SCRATCH"

# Name of the subdirectory
clone_dir="stable-diffusion-webui"

# Caches for automatic downloads
export XDG_CACHE_HOME=$install_dir/$clone_dir/cache
export TRANSFORMERS_CACHE=$install_dir/$clone_dir/cache/transformers
export HF_HOME=$install_dir/$clone_dir/cache/huggingface
export MPLCONFIGDIR=$install_dir/$clone_dir/cache/matplotlib
export PIP_CACHE_DIR=$install_dir/$clone_dir/cache/pip

# Commandline arguments for webui.py, for example: export COMMANDLINE_ARGS="--medvram --opt-split-attention"
export SD_ROOT="${SD_ROOT:-/sw/hprc/sw/StableDiffusion/latest}"
export MODELS_ROOT="${MODELS_ROOT:-/sw/hprc/sw/StableDiffusion/models}"
export LINK_MODELS="Yes"
export COMMANDLINE_ARGS="$LAN_CMD_ARGS --enable-insecure-extension-access --xformers"

# python3 executable
python_cmd="python3.10"
export PYTHONNOUSERSITE=TRUE

# git executable
#export GIT="git"

# python3 venv without trailing slash (defaults to ${install_dir}/${clone_dir}/venv)
#venv_dir="venv"

# script to launch to start the app
#export LAUNCH_SCRIPT="launch.py"

# install command for torch
#export TORCH_COMMAND="pip install torch==1.12.1+cu113 --extra-index-url https://download.pytorch.org/whl/cu113"

# Requirements file to use for stable-diffusion-webui
#export REQS_FILE="requirements_versions.txt"

# Fixed git repos
#export K_DIFFUSION_PACKAGE=""
#export GFPGAN_PACKAGE=""

# Fixed git commits
#export STABLE_DIFFUSION_COMMIT_HASH=""
export CODEFORMER_COMMIT_HASH="14746a4"
#export BLIP_COMMIT_HASH=""
export CODEFORMER_REPO="https://github.com/soulteary/CodeFormer.git"

# Uncomment to enable accelerated launch
#export ACCELERATE="True"

# Uncomment to disable TCMalloc
#export NO_TCMALLOC="True"

###########################################
