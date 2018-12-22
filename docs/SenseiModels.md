# Sensei Models

# Run the server
dj migrate
dj runserver


# Create sensei app

dj startapp sensei
e sensei_project/settings.py
dj createsuperuser
e sensei/admin.py


# Create views

e sensei/models.py        # Class student
e sensei_project/urls.py  # admin, include
e sensei/urls.py          
e sensei/views.py         # StudentListView
e sensei/student_list.py  # Students


# Create book api

dj startapp api
e sensei_project/settings.py
e sensei_project/urls.py
e api/urls.py
e api/views.py
e api/serializers.py


# Test the api

curl http://localhost:8000/api/


