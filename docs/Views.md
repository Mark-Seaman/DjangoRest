# Sensei Views

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


## Custom Views

### Create views

```
e sensei/models.py        # Class student
e sensei_project/urls.py  # admin, include
e sensei/urls.py          
e sensei/views.py         # StudentListView
e sensei/student_list.py  # Students
```


### Run the server

```
dj migrate
dj runserver
```

