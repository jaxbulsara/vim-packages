#!/bin/bash
# ~/.vim/pack/install.sh
# Make this script executable with `chmod u+x install.sh`
# Updates and installs vim 8+ packages

source ~/.vim/pack/functions.sh

# Package configuration
# use (* & wait) & structure to execute each group in a subshell.

# User Interface
(
    group user-interface
    package https://github.com/preservim/nerdtree.git &
    package https://github.com/vim-airline/vim-airline.git &
    package https://github.com/vim-airline/vim-airline-themes.git &
    wait
) &

# Linting
(
    group lint
    package https://github.com/dense-analysis/ale.git &
    wait
) &

# Python
(
    group python
    package https://github.com/davidhalter/jedi-vim.git &
    package https://github.com/jeetsukumaran/vim-pythonsense.git &
    wait
) &

wait

