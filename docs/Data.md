# Data Management

## Database Connection

The database setting are configured in the **settings.py** file that is in the library_project
directory.

The database file for SQL Lite is located in **library_project/sensei.db**.

Here are the settings for the local dev server.

```python
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.sqlite3',
        'NAME': os.path.join(BASE_DIR, 'library_project', 'sensei.db'),
    }
}
```

## Data Table Structure

Database structures are defined **sensei/models.py**.  The ORM (Object Relational Mapping)
converts this Python code into Database tables and SQL code to access them.

All access to the data is done through Python objects.


## Modify the Models
The models are defined in **sensei/models.py**.

```python
    from django.db import models
    from datetime import datetime

    class Course(models.Model):
        name    = models.CharField(max_length=20)
        title   = models.CharField(max_length=200)
        author  = models.CharField(max_length=100)
        teacher = models.CharField(max_length=100)
        description = models.TextField()

        def __str__(self):
            return self.title


    class Student(models.Model):
        name   = models.CharField(max_length=20)
        domain = models.CharField(max_length=100)
        course = models.ForeignKey(Course)

        def __str__(self):
            return self.name

    class Lesson(models.Model):
        lesson  = models.IntegerField()
        title   = models.CharField(max_length=40)
        content = models.CharField(max_length=200)
        date    = models.DateField()
        course  = models.ForeignKey(Course)

        def __str__(self):
            return 'Lesson %02d. %s - %s' % (self.lesson, self.title, self.date)
```

This code defines three tables that are connected together.  The tables created are

    sensei_course
    sensei_student
    sensei_lesson
    
    
## Sync the Models
The migration utility in Django is used to create the new tables from the old ones.

```
$ python manage.py makemigrations sensei
$ python manage.py migrate
```
    
This will update the database tables as needed.  This operation must be performed 
as each change is made to the Python data models.



