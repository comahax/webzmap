#!/bin/bash
sudo cp ~/webzmap/sources.list /etc/apt/sources.list
sudo apt-get update
sudo apt-get install -y zmap
sudo apt-get install -y python-pip
sudo -H pip install -r ~/webzmap/requirements.txt -i https://pypi.mirrors.ustc.edu.cn/simple/
sudo python ~/webzmap/manage.py migrate
sudo python ~/webzmap/manage.py createsuperuser << EOF
root
apple@apple.com
123qweasd
123qweasd
EOF
sudo python ~/webzmap/manage.py runserver 0.0.0.0:8000 &
