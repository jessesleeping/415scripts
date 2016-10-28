#!/bin/bash

PIP_PACKAGES=("Django" "psycopg2" "textract" "pytz")
HOMEDIR="/home/vagrant"

# Create the virtual environment
source /usr/local/bin/virtualenvwrapper.sh
mkvirtualenv django
# Inside the python virtual env

for ppkg in ${PIP_PACKAGES[@]}
do
  pip install ${ppkg}
done

# Download the source code
wget "http://15415.courses.cs.cmu.edu/fall2016/hws/HW7/cmu_paper_clean.tar"
tar xvf cmu_paper_clean.tar
rm cmu_paper_clean.tar

# Deactivate the virtual env
deactivate

# Modify the .profile
echo 'source /usr/local/bin/virtualenvwrapper.sh' >> ~/.profile
echo 'workon django' >> ~/.profile
