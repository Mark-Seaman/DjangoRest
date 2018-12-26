# Sensei Admin Views

## Course Views

Django admin is used to present the Course data models to the user.  This means that only a
superuser can see or modify the Course data.

The views work off the Rest API interface

* Add    - Post     - admin/sensei/course/
* List   - Get      - admin/sensei/course/
* Edit   - Put      - admin/sensei/course/id/change/
* Delete - Delete   - admin/sensei/course/id/delete/


## Student Views

Django admin is used to present the Course data models to the user.  This means that only a
superuser can see or modify the Course data.

The views work off the Rest API interface

* Add    - Post     - admin/sensei/student/
* List   - Get      - admin/sensei/student/
* Edit   - Put      - admin/sensei/student/id/change/
* Delete - Delete   - admin/sensei/student/id/delete/


## Lesson Views

Django admin is used to present the Course data models to the user.  This means that only a
superuser can see or modify the Course data.

The views work off the Rest API interface

* Add    - Post     - admin/sensei/lesson/
* List   - Get      - admin/sensei/lesson/
* Edit   - Put      - admin/sensei/lesson/id/change/
* Delete - Delete   - admin/sensei/lesson/id/delete/


## Setup Admin Views

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

