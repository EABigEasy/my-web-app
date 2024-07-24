#!/bin/bash

sudo apt update
sudo apt install -y nginx
sudo systemctl start nginx
sudo systemctl enable nginx

sudo cp -r /home/ec2-user/my-web-app/src/* /var/www/html/
sudo systemctl restart nginx
