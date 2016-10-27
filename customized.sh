#!/bin/bash

PIP_PACKAGES=("Django" "python-psycopg2" "textract")
HOMEDIR="/home/vagrant"

# Create the virtual environment
source /usr/local/bin/virtualenvwrapper.sh
mkvirtual django
# Inside the python virtual env

for ppkg in ${PIP_PACKAGES[@]}
do
  pip install ${ppkg}
done

# Download the source code

# Deactivate the virtual env
deactivate

# Modify the .profile
echo 'source /usr/local/bin/virtualenvwrapper.sh' >> ~/.profile
echo 'workon django' >> ~/.profile
