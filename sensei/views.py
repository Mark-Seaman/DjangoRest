# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.shortcuts import render
from django.views.generic import ListView, TemplateView
from subprocess import PIPE, Popen

from .models import Lesson


class ListLessons(ListView):
    model = Lesson
    
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