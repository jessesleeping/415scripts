#!/bin/bash

PACKAGES=("postgresql" "python-pip")
PIP_PACKAGES=("virtualenv" "virtualenvwrapper")

# Install all the packages needed
apt-get update
for pkg in ${PACKAGES[@]}
do
    apt-get install ${pkg} -y
done

for ppkg in ${PIP_PACKAGES[@]}
do
    pip install ${ppkg}
done
