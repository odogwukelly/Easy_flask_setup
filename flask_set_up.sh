#! /bin/bash

echo "  ==========================================================="
echo "  ~~~~~~~~~~~~~~~~~~~~~~~ WELCOME TO ~~~~~~~~~~~~~~~~~~~~~~~~"
echo "  ==========================================================="
echo "    ()  ()  ()()      ()()()()()  ()()()   ()()()  ()    () " 
echo "    () ()    ()       ()  ()  ()  ()      ()       ()    () "
echo "    ()()     ()  ()()     ()      ()()()  ()       ()()()() " 
echo "    () ()    ()           ()      ()      ()       ()    () "
echo "    ()  ()  ()()         ()()     ()()()   ()()()  ()    () "
echo "  ==========================================================="
echo "  ~~~~~~~ A Shell script to set up flask application ~~~~~~~~"
echo "  ==========================================================="
echo

echo -e "Enter your application name/title:  \c"
read appName
# create app directory
mkdir $appName
echo "1. $appName created successfully................. (100%)"

touch $appName/run.py $appName/config.py $appName/.env $appName/.gitignore
chmod +x $appName/run.py
echo "2. $appName/ files created successfully................. (100%)"

mkdir $appName/app 
touch $appName/app/__init__.py
echo "3. app/__init__.py files created successfully................. (100%)"

mkdir $appName/app/admin $appName/app/user $appName/app/static $appName/app/templates
echo "4. app/ directories created successfully................ (100%)"


# creating files for admin directory
touch $appName/app/admin/__init__.py $appName/app/admin/routes.py $appName/app/admin/form.py $appName/app/admin/models.py
echo "5. app/admin/ files created successfully................ (100%)"

# creating files for user directory
touch $appName/app/user/__init__.py $appName/app/user/routes.py $appName/app/user/form.py $appName/app/user/models.py
echo "6. app/user/ files created successfully................ (100%)"


echo "from app import app
from flask import render_template

@app.route('/')
def index():
    return render_template('user/index.html')

" > $appName/app/user/routes.py
echo "7. /app/user/routes.py files created successfully................ (100%)"


# creating directory in static directory
mkdir $appName/app/static/css $appName/app/static/assets
echo "8. /app/static directories created successfully................ (100%)"

# creating directory and files in templates directory
mkdir $appName/app/templates/admin $appName/app/templates/user
touch $appName/app/templates/user/index.html


# index.html sample code 
echo "<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>Welcome to ki~tech flask-set-up </h>
</body>
</html>" > $appName/app/templates/user/index.html

echo "9. /app/templates directories and /user/index.html file created successfully ................ (100%)"

# for run.py file
echo "from app import app

if __name__ == '__main__':
    app.run()" > $appName/run.py

echo "10. $appName/run.py file created successfully................ (100%)"


# for __init__.py file
echo "from flask import Flask
from config import Config  

app = Flask(__name__) 
app.config.from_object(Config)


from app.admin import form
from app.admin import models
from app.admin import routes

from app.user import routes
from app.user import form
from app.user import models" > $appName/app/__init__.py

echo "11. $appname/app/__init__.py file created successfully................ (100%)"

# for config.py file
echo "import os

class Config():
    DEBUG = True
    SECRET_KEY = os.environ.get('SECRET_KEY')" > $appName/config.py 

echo "12. $appName/config file created successfully................ (100%)"

# for .env file
echo "SECRET_KEY = '3456789olr6789ijhy78ikmnyokgyui'" > $appName/.env
echo "13. $appName/.env file created successfully................ (100%)"

# for gitignore file
echo ".env
/myEnv" > $appName/.gitignore
echo "14. $appName/.gitignore file created successfully................ (100%)"

pip install flask 
echo "15. flask module installed successfully................ (100%)"

pip install dotenv
echo "16. dotenv installed successfully................ (100%)"

pip freeze > $appName/requirements.txt
echo "17. added modules successfully to requirements.txt file................ (100%)"
echo
echo "  =============================================="
echo "    installation was successful......... (100%)"
echo "                    END...."
echo "  =============================================="
python $appName/run.py