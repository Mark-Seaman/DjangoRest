from rest_framework import serializers

from sensei.models import Lesson


class LessonSerializer(serializers.ModelSerializer):
    class Meta:
        model = Lesson
        fields = ('lesson', 'title', 'content', 'date', 'course')