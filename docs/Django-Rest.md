# Setup Django Rest Framework

# Create directory

cd
mkdir Rest
d Rest/
mkdir sensei
d sensei/


# Make sure python3 is installed

brew install python3
python3 --version

export PATH=$p:$p/bin:/bin:/sbin:/usr/local/sbin:/usr/local/bin:/opt/local/bin:/usr/bin:/usr/local/mysql/bin


# Run new python

brew link python
brew link --overwrite python

python3 --version


# Setup pipenv

pip3 install pipenv
pipenv install django
pipenv shell


# Create library code project

mkdir django
django-admin startproject sensei_project .


# Run the server
dj migrate
dj runserver

