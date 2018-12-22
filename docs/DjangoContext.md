# Django Setup

Before we can do any interesting work we must build a development environment to work in.

Technology & Tools

* Python 2.7
* Django 1.11
* pipenv
* Linux/ Mac OSX

## Create Project Directory

Build a location for our project

```
$ cd
$ mkdir Rest
$ cd Rest
$ mkdir library
$ cd library
```

## pipenv

Use **pipenv** to create a new virtual environment for our project.

```
pip install pipenv
pipenv install django
```

Run the new virtual environment as a subshell.  Use **exit** to end the development session.

```
pipenv shell
```


## Create library code project

Use **django-admin** to start a new project.  

```
django-admin startproject library_project .
```

This will create to following directory structure.

```
.
├── library
│   ├── Pipfile
│   └── Pipfile.lock
├── library_project
│   ├── __init__.py
│   ├── settings.py
│   ├── urls.py
│   └── wsgi.py
├── manage.py

```


## Test Django Setup

Create the database

```
dj migrate
dj runserver
```

Run the web server

```
$ python manage.py runserver
```

Browse to home page "http://localhost:8000". 

