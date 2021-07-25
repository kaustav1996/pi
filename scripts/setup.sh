#!/usr/bin/env bash
set -e

# Setup python virtual environment
rm -rf venv
python3 -m venv venv
. venv/bin/activate
pip install -r setup-requirements.txt

# Install git hooks
pre-commit install --install-hooks --overwrite
