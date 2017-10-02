@echo off
python -m venv venv

rem  This activates the virtual python environment
call venv/scripts/activate
rem  This will show version 3.5
python --version

rem  Needs the wheel package first
pip install wheel

rem  and this now installs all the packages needed for the project in venv
pip install --upgrade -r requirements.txt

rem  When your project is complete use
rem    pip freeze > requirements.txt
rem  to make sure the requirements are up to date and the right packages are installed
rem  BUG: remove pkg-resources line in requirements.txt if it exists!
rem      https://stackoverflow.com/questions/39577984/what-is-pkg-resources-0-0-0-in-output-of-pip-freeze-command
