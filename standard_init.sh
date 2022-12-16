#!/bin/bash

SETUP_DIR=$SU_STORAGE/server_setup


# source all exports
for file in "${SETUP_DIR}"/exports/*; do
    source $file
done

# source all aliases
for file in "${SETUP_DIR}"/aliases/*; do
    source $file
done

# initialize python and its environments
source $SETUP_DIR/virtualenvs/init_conda.sh

