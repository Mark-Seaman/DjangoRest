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
$ mkdir Rest Rest/library

```

## pipenv

Use **pipenv** to create a new virtual environment for our project.

```
$ pip install pipenv
$ cd Rest/library
$ pipenv install django
```

Run the new virtual environment as a subshell.  Use **exit** to end the development session.

```
$ pipenv shell
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
$ python manage.py migrate
```

Run the web server

```
$ python manage.py runserver
```

Browse to home page "http://localhost:8000". 


## Linux Shell Context

Configure version control.   Clone the Git repo **git@github.com:Mark-Seaman/DjangoRest.git**.

Now clone your new repo 

```
$ git clone git@github.com:your-name/DjangoRest.git.
```

This will let you push code changes to your own github repo.

Create a shell function to perform a large commit.  This will make it easy to update your
remote code with a single command.

```
$ function commit {
    git add . && git commit -m "$*" && git pull && git push
}

# Create a commit with a commit message
$ commit All my recent changes
```
