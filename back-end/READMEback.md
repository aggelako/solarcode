# solarcode

Install python 3.12.2

pip install virtualenv

virtualenv scenvcdemo
(Se powershell as admin Set-ExecutionPolicy RemoteSigned)
.\scenvdemo\Scripts\activate.ps1

pip install requirements.txt

Create __init__.py, config.py and extensions
set app env variable $env:FLASK_APP = "__init__.py"

flask db init to create db
flask db migrate
flask db upgrade

flask run --debug