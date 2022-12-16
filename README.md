# Server Setup for SLURM

This is my personal setup for SLURM environments.
It is designed to support machine learning research.

## Installation

### 1. Adapt .bashrc

Add to .bashrc file (change SU_STORAGE variable to wherever you want your data to live). 
Needs to be accesible on gateway server and SLURM compute nodes:

````bash
# User specific aliases and functions

export SU_STORAGE=/path/to/my/home/directory

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# if it is run interactively, initialize gateway
source $SU_STORAGE/server_setup/init_gateway.sh
````

### 3. Clone Repo

Clone this repository to $SU_STORAGE directory
````
git@github.com:AndSt/server_setup.git
````

### 3. Install Conda

Install Anaconda by 
   1. downloading .sh installation file from https://www.anaconda.com/products/distribution, and 
   2. installing under $SU_STORAGE/conda_installation
   3. run conda init, and delete conda initialization routine in .bashrc

### (Optional) 4. Adapt server_setup to your wishes

...

## Features

- Automatically detects whether you're on login node or cluster, and runs different initialization scripts
- Sets environment variables for Conda, pip and Huggingface caches
- Adds a bunch of useful git commands

