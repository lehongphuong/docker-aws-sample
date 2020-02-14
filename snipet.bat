install python learn django

1. install python 2.7
https://www.python.org/downloads/release/python-2715/
after add path value for directory C:\Python27 make can use python command

2. download file get-pip.py at link(https://bootstrap.pypa.io/get-pip.py) and copy to forder C:\Python27
after run command: python get-pip.py
after add path value for directory C:\Python27\Scripts make can use pip command

3. pip install virtualenv

pip install awsebcli

pip install virtualenvwrapper-win

pip install django

pip install Django==1.11.14
pip install Django==2.2

4. create project django
django-admin startproject PythonWeb

5. start project
python manage.py runserver

can change port : python manage.py runserver 8080

6. create startapp(web app)
python manage.py startapp home
python manage.py migrate

6.1 sau khi create model thì cần add vào install_app của setting.py và run migrage bên dưới
python manage.py makemigrations blog

- create sql
	python manage.py sqlmigrate polls 0001

7. testcase
python manage.py test home

sau khi update model để nó cập nhập vào database thì cần chạy các lệnh sau
python manage.py makemigrations herokuapp
python manage.py sqlmigrate herokuapp 0001
python manage.py migrate
python manage.py runserver

0003_auto_20190628_0604

7.1 nếu muốn xóa model cũ và thêm lại model thì comment hết model và chạy lệnh
python manage.py makemigrations
sau đó mở các model muốn tạo ra và chạy lại lệnh
python manage.py makemigrations


8. pip install Jinja2

9. & python -m pip install -U pylint

10. create supperuser
python manage.py createsuperuser


11. deploy to server aws ec2
connect to linux with putty
#install django
sudo apt-get update
sudo apt-get install python-pig python-dev git
sudo pip install django==1.5.4

#test django
python
from django import get_version
get_version()

12. run server aws alway
sudo apt-get update
sudo apt-get install screen

screen -S djangoRun
screen -r djangoRun

python manage.py runserver 0.0.0.0:8000

ctrl+a and then d

screen -ls

13. pull data
git clone https://github.com/lehongphuong/django.git django1
cd django1 

cd django
git fetch --all
git clean -dfx
git reset --hard origin/master
git reset -- hard HEAD
git pull
python manage.py migrate
python manage.py runserver 0.0.0.0:8000


14. create template for admin
https://github.com/geex-arts/django-jet

 
pip install django-jet
python manage.py migrate jet
pip install google-api-python-client==1.4.1
python manage.py collectstatic
python manage.py migrate dashboard

15. http://18.211.128.209:8000/


16. connect với firebase
pip install Pyrebase
https://github.com/thisbejim/Pyrebase?hl=vi

tại view khởi tạo connection


hướng dẫn deploy django to heroku
https://www.codementor.io/jamesezechukwu/how-to-deploy-django-app-on-heroku-dtsee04d4

// nếu bị lỗi thì chạy lệnh này
heroku config:set DISABLE_COLLECTSTATIC=1 --app apitranslate
heroku config:set DISABLE_COLLECTSTATIC=1 --app hello-it-pdu
heroku config:set DISABLE_COLLECTSTATIC=1 --app manage-train
heroku config:set DISABLE_COLLECTSTATIC=1 --app chatbot-ai-grand
heroku config:set DISABLE_COLLECTSTATIC=1 --app manage-train-be
heroku config:set DISABLE_COLLECTSTATIC=1 --app book-ticket-be

- cài tensorflow
	nó chỉ hợp với python 3.5.2

-chạy chế độ admin cmd
	pip3 install --upgrade tensorflow

- test thử
	tắt cmd và mở lại
	python
	from tensorflow as tf
	
19. install python 3.7.3 trên máy ảo
Hướng dẫn => https://tecadmin.net/install-python-3-7-on-ubuntu-linuxmint/
sudo apt-get install build-essential checkinstall
sudo apt-get install libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev libffi-dev zlib1g-dev
cd /usr/src
sudo wget https://www.python.org/ftp/python/3.7.3/Python-3.7.3.tgz
sudo tar xzf Python-3.7.3.tgz
cd Python-3.7.3
sudo ./configure --enable-optimizations
sudo make altinstall
python3.7 -V

20. install pip3
sudo apt install python3-pip
python3.7 -m pip install pip

21. get reference of project
pip install pipreqs
pipreqs D:\AMachineLearning\apitranslate
pipreqs D:\AMachineLearning\HelloItPdu

22. cài đặt trên linux thường sẽ không được và không có quyền cần phải cài như sau
sudo python3.7 -m pip install -r requirements.txt

23. run django
python3.7 manage.py migrate
python3.7 manage.py runserver 0.0.0.0:8000

24. deploy amazon web service with gunicorn
sudo -H pip3 install --upgrade pip
sudo -H pip3 install virtualenv

virtualenv env
source env/bin/activate
manage.py makemigrations
manage.py createsuperuser
manage.py collectstatic
sudo ufw allow 8000
apitranslate/python3.7 manage.py runserver 0.0.0.0:8080
cd ~/apitranslate
gunicorn --bind 0.0.0.0:8080 djangoherokuapp.wsgi
deactivate

sudo nano /etc/systemd/system/gunicorn.service

$ sudo systemctl start gunicorn
$ sudo systemctl enable gunicorn
$ sudo systemctl status gunicorn

26. install django rest full service
pip3 install djangorestframework
pip3 install markdown       # Markdown support for the browsable API.
pip3 install django-filter  # Filtering support

conda install djangorestframework
conda install markdown        
conda install django-filter   
hướng dẫn https://sunscrapers.com/blog/ultimate-tutorial-django-rest-framework-part-1/

Ngoài ra cần update 
# STATICFILES_STORAGE = 'whitenoise.django.GzipManifestStaticFilesStorage'
STATICFILES_STORAGE = 'whitenoise.storage.CompressedManifestStaticFilesStorage'


20. heroku run bash 
heroku run bash --app chatbot-ai-grand
heroku run bash --app manage-train
heroku run bash --app manage-train-be
heroku run bash --app book-ticket-be
python manage.py makemigrations
python manage.py migrate 
python manage.py createsuperuser
python manage.py loaddata db.json



git remote add origin https://github.com/lehongphuong/chatbot-ai-grand.git
git push origin master

21. admin template https://jet.readthedocs.io/en/latest/install.html
python manage.py migrate jet
python manage.py migrate dashboard
python manage.py collectstatic
pipreqs D:\AWePos\manage-train-be


22. dump and load data https://coderwall.com/p/mvsoyg/django-dumpdata-and-loaddata
backup data:
	python manage.py dumpdata --indent 2 >db.json
	python manage.py dumpdata --indent 2 --exclude auth.permission --exclude contenttypes >db1.json
restore data:
	python manage.py loaddata db.json
	python manage.py loaddata db1.json
 
23. Delete schema on Postgres SQL
DROP SCHEMA public CASCADE;
CReaTE SCHEMA public;


class Trip(models.Model):
    id = models.AutoField
    company = models.ForeignKey(Company, on_delete=models.CASCADE)
    train = models.ForeignKey(Train, on_delete=models.CASCADE)
    start_date = models.DateField()
    start_time_train = models.TimeField()
    end_time_train = models.TimeField() 
    type_ticket = models.IntegerField(default=0)
    price_origin = models.FloatField(max_length=20)
    price = models.FloatField(max_length=20)
	
	
class Trip(models.Model):
    id = models.AutoField
    company = models.ForeignKey(Company, on_delete=models.CASCADE)
    train = models.ForeignKey(Train, on_delete=models.CASCADE)
    start_date = models.DateField()
    start_time_train = models.TimeField()
    end_time_train = models.TimeField() 
    type_ticket = models.IntegerField(default=0)
    price_origin = models.FloatField(max_length=20)
    price = models.FloatField(max_length=20)