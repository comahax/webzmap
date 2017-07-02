#!/usr/bin/expect
spawn sudo python /home/ubuntu/webzmap/manage.py createsuperuser
expect "username:"
send "root\r"
expect "Email address:"
send "apple@apple.com\r"
expect "password:"
send "123qweasd\r"
expect "password:"
send "123qweasd\r"
expect eof
