#!/bin/bash
#sudo cp ~/webzmap/createsuperuser.py /usr/local/lib/python2.7/dist-packages/django/contrib/auth/management/commands/
#old
sudo cp ~/webzmap/sources1.list /etc/apt/sources.list
sudo apt-get update -y
sudo apt-get install -y python-pip
sudo -H pip install -r ~/webzmap/requirements.txt -i https://pypi.mirrors.ustc.edu.cn/simple/
sudo apt-get install -y expect
#new source
sudo cp ~/webzmap/sources2.list /etc/apt/sources.list
sudo apt-get update -y
sudo apt-get install -y zmap
sudo python ~/webzmap/manage.py migrate
sudo python ~/webzmap/manage.py zmapd start
#sudo python ~/webzmap/manage.py createsuperuser << EOF
#root
#apple@apple.com
#123qweasd
#123qweasd
#EOF
sudo expect ~/webzmap/user.sh
sudo python ~/webzmap/manage.py runserver 0.0.0.0:8000 &
