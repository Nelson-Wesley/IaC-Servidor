#!/bin/bash
echo "Servidor sendo atualizado..."
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y
echo "Servidor atualizado!"

echo "Adquerindo arquivos do site..."

cd /tmp
 wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

 unzip main.zip
 cd linux-site-dio
 cp -R * var/www/html/
 echo "Arquivo enviado!"