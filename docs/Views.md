# Sensei Rest API 

## Course API

Django admin is used to present the Course data models to the user.  This means that only a
superuser can see or modify the Course data.

The views work off the Rest API interface

* Add    - Post     - api/sensei/course/
* List   - Get      - api/sensei/course/
* Edit   - Put      - api/sensei/course/id/change/
* Delete - Delete   - api/sensei/course/id/delete/


## Student API

Django admin is used to present the Course data models to the user.  This means that only a
superuser can see or modify the Course data.

The views work off the Rest API interface

* Add    - Post     - api/sensei/student/
* List   - Get      - api/sensei/student/
* Edit   - Put      - api/sensei/student/id/change/
* Delete - Delete   - api/sensei/student/id/delete/


## Lesson API

Django admin is used to present the Course data models to the user.  This means that only a
superuser can see or modify the Course data.

The views work off the Rest API interface

* Add    - Post     - api/sensei/lesson/
* List   - Get      - api/sensei/lesson/
* Edit   - Put      - api/sensei/lesson/id/change/
* Delete - Delete   - api/sensei/lesson/id/delete/


## Test the API

Run the server

```
$ python manage.py runserver
```

Browse to admin page "http://localhost:8000/api".  Login to edit the objects.

