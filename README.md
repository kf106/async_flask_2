# Asynchronous data-push using Flask-SocketIO

Example of asynchronous flask communication with web page. It can be used as a template for producting Python 3.5 applications that use a web page for monitoring live datastreams.

This repository is a sample flask application that updates a webpage using a background thread for all users connected, by outputting a new random number every 5s.

It is based on the very useful Flask-SocketIO code from Miguel Grinberg, and does the same as Shane Lynn's async_flask demo, but for Python 3.5.

https://github.com/miguelgrinberg/Flask-SocketIO

https://github.com/shanealynn/async_flask/

To use - please clone the repository and then set up your virtual environment using the requirements.txt file with pip and venv. You can achieve this automatically with:


    ./install.sh

Switch to the virtual environment and start the application with:

    ./run.sh

Visit http://localhost:5000 to see the updating numbers.
