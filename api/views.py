# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from rest_framework import generics
from sensei.models import Lesson
from .serializers import LessonSerializer

class LessonAPIView(generics.ListAPIView):
    queryset = Lesson.objects.all()
    serializer_class = LessonSerializer
    
