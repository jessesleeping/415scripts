#!/bin/bash

PACKAGES=("postgresql" "python-pip" "python-dev" "libpq-dev")
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

# Configure postgres
sudo -u postgres createuser vagrant
sudo -u postgres createdb vagrant