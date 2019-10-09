#!/bin/bash

set -eu

RAPIDS_VERSION="${1:-0.10}"
XGBOOST_VERSION="${2:-1.0.0-SNAPSHOT}"

echo "Installing Matplotlib"
conda install -y matplotlib

echo "Installing RAPIDS $RAPIDS_VERSION packages"
echo "Please standby, this will take a few minutes..."

# install RAPIDS packages
conda install -y -c rapidsai-nightly/label/xgboost -c rapidsai-nightly -c nvidia -c conda-forge python=3.6 cudatoolkit=10.0 cudf=$RAPIDS_VERSION cuml cugraph pynvml xgboost=$XGBOOST_VERSION