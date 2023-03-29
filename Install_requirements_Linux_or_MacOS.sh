#!/usr/bin/env bash


function activate_shell {
    python3 -m venv env
    source ./env/bin/activate
}

function enable_jupyter_extensions {
    jupyter contrib nbextension install --sys-prefix
    jupyter nbextension enable contrib_nbextensions_help_item/main
    jupyter nbextension enable hide_input/main
    jupyter nbextension enable exercise/main
    jupyter nbextension enable exercise2/main
    jupyter nbextension enable collapsible_headings/main
    jupyter nbextension enable init_cell/main
}

function install_requirements {
    pip install --upgrade pip
    pip install wheel
    pip install --requirement requirements.txt
}

function start_notebook {
    jupyter notebook
}

activate_shell

install_requirements

# enable_jupyter_extensions

# start_notebook
