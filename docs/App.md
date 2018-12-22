# Sensei App


# Create sensei app
Use the Django **startapp** script to build the directory structure for the **sensei**
application.

```
$ python manage.py startapp sensei
$ 
$ python manage.py createsuperuser
$ 
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

Edit sensei/admin.py

```
from django.contrib import admin
from .models import Course, Lesson, Student

admin.site.register(Course)
admin.site.register(Student)
admin.site.register(Lesson)
```

## Test the Admin Views

Create a superuser

```
$ python manage.py createsuperuser
```

Run the server

```
$ python manage.py runserver
```

Browse to admin page "http://localhost:8000/admin".  Login to edit the objects.

