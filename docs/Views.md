# Sensei Custom Views

## Doc View

The Doc View displays Markdown text from a document file as HTML.

sensei/views.py

```
from django.views.generic import TemplateView
from subprocess import PIPE, Popen

class DocView(TemplateView):
    template_name = 'sensei/doc.html'
    
    def get_context_data(self, **kwargs):
        doc = self.kwargs.get('title')
        text = markdown_to_html(doc)
        return dict(doc=doc, text=text)

    
def markdown_to_html(doc):
    text = open('docs/'+doc).read()
    return text_to_html(text)
    
    
def text_to_html(text):
    p = Popen('pandoc', stdin=PIPE, stdout=PIPE)
    return p.communicate(text)[0]
```

project/urls.py

```
from django.conf.urls import url
from sensei.views import DocView

urlpatterns = [
    url(r'^(?P<title>[\w/\-_.]*)$',   DocView.as_view()),
]
```


## Lesson View

Django admin is used to present the Course data models to the user.  This means that only a
superuser can see or modify the Course data.

The views work off the Rest API interface

* Add    - Post     - api/sensei/lesson/
* List   - Get      - api/sensei/lesson/
* Edit   - Put      - api/sensei/lesson/id/change/
* Delete - Delete   - api/sensei/lesson/id/delete/

sensei/views.py

```
from django.views.generic import ListView
from .models import Lesson

class ListLessons(ListView):
    model = Lesson
```

project/urls.py

```
from django.conf.urls import url
from sensei.views import ListLessons

urlpatterns = [
    url(r'^$', ListLessons.as_view(), name='home'),
]
```


## Test the API

Run the server

```
$ python manage.py runserver
```

Browse to pages

* [http://localhost:8000](http://localhost:8000) to list lessons
* [http://localhost:8000/Index.md](http://localhost:8000/Index.md) to show documentation

