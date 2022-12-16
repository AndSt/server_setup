#!/bin/bash

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('$SU_STORAGE/conda_installation/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "$SU_STORAGE/conda_installation/etc/profile.d/conda.sh" ]; then
        . "$SU_STORAGE/conda_installation/etc/profile.d/conda.sh"
    else
        export PATH="$SU_STORAGE/conda_installation/bin:$PATH"
    fi
fi
unset __conda_setup

# <<< conda initialize <<<
