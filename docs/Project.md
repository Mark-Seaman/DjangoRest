# Sensei Digital Classroom Project

This code is built from the instructions found in **Rest APIs with Django** book.

MyBook is getting very old now and is being replaced with newer code.  This is a complete
reconstruction of the entire infrastructure.

This project uses lightweight development processes to reduce the amount of rework required
later.


## Milestones

The project will be built with a series of Milestones.  Each milestone produces a unique
set of features that are immediately useful.

Each Milestone will be documented to allow other programmers to replicate the results.

### 1. Project Setup

* Version Control is done by **git@github.com:Mark-Seaman/DjangoRest.git**.
* Django admin and other scripts are used to produce the Django app framework.

### 2. Sensei App

* Models are created for Course, Student, Lesson.
* Admin views are used to create objects without writing any custom UI code.
* Interactive testing is done on objects.
* A few simple objects are created to try out the models.

### 3. Basic Student Views

* Custom views allow users to interact with student data.
* Views - Add, List, Edit, Delete, Details

### 4. Documents

* All of the steps for the Milestones are documented in the **docs** folder.
* A simple document viewer allows the project documents (written in Markdown) to be 
displayed within the app.


## MyBook Server

The code produced at each milestone is applied to the existing infrastructure on the MyBook
server.  MyBook is hosted at Digital Ocean and support a number of different end-point domains.

* shrinking-world.com
* shrinking-world.org
* markseaman.org
* markseaman.info
* seamanslog.com
* seamansguide.com
* spiritual-things.org

This strategy of leverage provides the following advantages.

* A pristine and simple environment is used to develop new code logic.
* Features are not intergrated into MyBook until they are properly tested.
* The Sensei project code is open-sourced and available for anyone to use.
* This process is used as a teaching platform for others.
