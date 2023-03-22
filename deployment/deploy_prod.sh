#!/bin/sh

ssh root@128.199.25.122 <<EOF
  cd drfblogproject
  git pull
  source /opt/envs/drfblogproject/bin/activate
  pip install -r requirements.txt
  ./manage.py makemigrations
  ./manage.py migrate  --run-syncdb
  sudo service gunicorn restart
  sudo service nginx restart
  exit
EOF
