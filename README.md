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
1. Build Image and Container: `sudo docker-compose build`
2. Migration database: `sudo docker-compose run web python /code/manage.py makemigrations`
2. Migration database: `sudo docker-compose run web python /code/manage.py migrate`
3. Create supseruser: `sudo docker-compose run web python /code/manage.py createsupperuser`
4. Run application with attach log: `sudo docker-compose up`
5. Run application with no attach: `sudo docker-compose up -d`
6. Run application with no attach and build: `sudo docker-compose up -d --build`


### aws
curl -o lightsail-compose.sh https://raw.githubusercontent.com/mikegcoleman/todo/master/lightsail-compose.sh

curl -o lightsail-compose.sh https://raw.githubusercontent.com/lehongphuong/docker-aws-sample/master/lightsail-compose.sh

chmod +x ./lightsail-compose.sh

./lightsail-compose.sh