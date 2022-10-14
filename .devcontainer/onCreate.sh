#!/bin/bash

## Setup script run inside the development Docker container after creation.

# Install poetry:
python3 -m pip install poetry

# Create a virtual environment for development:
cd /workspaces/python-jupyter-devcontainer
python3 -m venv .venv
source .venv/bin/activate

# Install requirements:
poetry install
