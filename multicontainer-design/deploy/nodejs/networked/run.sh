#!/bin/sh

if [ -d "/data/mysql" ]; then
  sudo rm -fr /data/mysql/
fi

echo "Create database volume..."
mkdir -p /data/mysql/ 

# TODO Adicione docker run para a imagem mysql aqui
sudo docker run \
     	-d --name s5c7tg1-mysql \
     	-e MYSQL_DATABASE=items \
     	-e MYSQL_USER=user1 \
     	-e MYSQL_PASSWORD=mypa55 \
     	-e MYSQL_ROOT_PASSWORD=r00tpa55 \
     	-v /data/mysql:/var/lib/mysql \
     	-p 30306:3306 s5c7tg1/mysql-57

docker network connect --ip 10.88.100.101 s5c7tg1-net s5c7tg1-mysql

echo "Espere 9 segundos ... Carregando o docker s5c7tg1-mysql "
sleep 9

# TODO Adicione um docker run aqui para a imagem do todonodejs

sudo docker run -d --name  s5c7tg1-todoapi \
            	-e MYSQL_DATABASE=items \
            	-e MYSQL_USER=user1 \
            	-e MYSQL_PASSWORD=mypa55 -p 30080:30080 \
                   --net s5c7tg1-net \
            	s5c7tg1/todonodejs
