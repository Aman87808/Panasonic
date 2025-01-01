# Panasonic 3sc

# Worked on the project PANASONIC.

# In my role at PANSONIC, I designed and developed the RESTful API and databases system using Django that played a pivotal role in enhancing data management,security,and user access control

# The website contains information about the employees working in different departments (HR, Technical, Finance) and the permission they have according to their department,role and position. According to 
  permissions given they can we only permitted areas on the website.
  
# implemented features like Login,Logout, Authentications,Complex CRUD Operations.Query Management,Events,etc.

# Tech Stack Used: Python,Django,DjangoRestFramework,postgreSQL

# 3sc

# for dumping data into json file
python manage.py dumpdata > filename.json
# For specific app
python manage.py dumpdata appname > filename.json


# for loading dumped data into db

python manage.py loaddata filename.json

# TO run celery 
celery -A panasonic worker -l INFO
# celery task with log
celery -A panasonic worker --loglevel=info

#CELERY BEAT SERVER
celery -A panasonic.celery beat


