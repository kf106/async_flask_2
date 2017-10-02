#!/bin/bash

if [ -z $BASH_VERSION ] ; then
	echo "You must run this script using bash" 1>&2
	exit 1
fi
set -x

# this will probably show python version 2.7
python --version

# this creates a copy of the python3 environment in a folder called venv
python3 -m venv venv

# this activates the virtual python3 environment
source venv/bin/activate

# which is why this will show version 3.5
python --version

# needs the wheel package first
pip install wheel

# and this now installs all the packages needed for the project in venv
pip install --upgrade -r requirements.txt

# when your project is complete use
# $ pip freeze > requirements.txt
# to make sure the requirements are up to date and the right packages are installed
# BUG: remove pkg-resources line in requirements.txt if it exists!
#     https://stackoverflow.com/questions/39577984/what-is-pkg-resources-0-0-0-in-output-of-pip-freeze-command
