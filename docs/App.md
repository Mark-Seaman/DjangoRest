# Sensei App


## Create sensei app

Use the Django **startapp** script to build the directory structure for the **sensei**
application.

```
$ python manage.py startapp sensei
```

Directory Structure

```
.
├── library
│   ├── Pipfile
│   └── Pipfile.lock
├── library_project
│   ├── __init__.py
│   ├── sensei.db
│   ├── settings.py
│   ├── urls.py
│   └── wsgi.py
├── manage.py
├── sensei
│   ├── __init__.py
│   ├── admin.py
│   ├── apps.py
│   ├── models.py
│   ├── tests.py
│   └── views.py

```

## Setup Django App

Edit sensei_project/settings.py

```
INSTALLED_APPS = [
    # System
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',
    
    # User
    'sensei.apps.SenseiConfig',
]
```

## Test App

Run the server

```
$ python manage.py runserver
```

Browse to home page "http://localhost:8000". 

