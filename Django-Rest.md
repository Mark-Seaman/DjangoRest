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


# Create sensei app

dj startapp sensei
e sensei_project/settings.py
dj createsuperuser
e sensei/admin.py


# Create views

e sensei/models.py        # Class student
e sensei_project/urls.py  # admin, include
e sensei/urls.py          
e sensei/views.py         # StudentListView
e sensei/student_list.py  # Students


# Create book api

dj startapp api
e sensei_project/settings.py
e sensei_project/urls.py
e api/urls.py
e api/views.py
e api/serializers.py


# Test the api

curl http://localhost:8000/api/


