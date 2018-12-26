from django.conf.urls import url

from .views import LessonAPIView


urlpatterns = [
    url(r'^$', LessonAPIView.as_view()),
]
