#!/bin/bash

if [ -z $BASH_VERSION ] ; then
	echo "You must run this script using bash" 1>&2
	exit 1
fi
set -x

# this activates the virtual python3 environment
source venv/bin/activate

# this runs the application
python app.py
