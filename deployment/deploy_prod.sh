#!/bin/sh

ssh root@143.110.240.81 <<EOF
  cd drfblogproject
  git pull
  source /opt/envs/drfblogproject/bin/activate
  pip install -r requirements.txt
  ./manage.py makemigrations
  ./manage.py migrate 
  sudo service gunicorn restart
  sudo service nginx restart
  exit
EOF
