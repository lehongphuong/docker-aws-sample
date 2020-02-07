# Django CRM Project - Contact Management Project 

I am trying to create a Tutorial on How yo Create CRM or Contact Management System in Django. Basically this tutorial is creating while explaining video tutorial. This is the series of Django CRM Tutorial.

### Setup
1. Create a folder and put all the files inside it.
2. Create a virtual environtment - `virtualenv env`
3. Activate VirtualENV - ubuntu : `source env/bin/activate` || windows : `. .\env\Scripts\activate`
4. Run requirements.txt - `pip install -r requirements.txt`
5. Run the Application - `python manage.py runserver`
6. Migrate



### Setup with docker
1. Build Image and Container: `docker-compose build`
2. Migration database: `docker-compose run web python /code/manage.py migration`
3. Create supseruser: `docker-compose run web python /code/manage.py createsupperuser`
4. Run application with attach log: `docker-compose up`
5. Run application with no attach: `docker-compose up -d`
6. Run application with no attach and build: `docker-compose up -d --build`

