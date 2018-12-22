# Sensei Models

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


# Run the new Data Models

Sync the models to create Database changes

```
$ python manage.py makemigrations sensei
$ python manage.py migrate
```

Run the web server

```
$ python manage.py  runserver
```

