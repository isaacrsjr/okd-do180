#!/bin/bash
echo "Preparando a pasta de compilação"
rm -fr build
mkdir -p build
cp -ap nodejs-source/* build
rm build/*.sh

# a criação da imagem reclama se ele não consegue ler a pasta do banco de dados, 
# mesmo que não seja necessário para criar a imagem
sudo rm -rf {linked,kubernetes}/data

sudo docker build -t s5c7tg2/todonodejs --build-arg NEXUS_BASE_URL=localhost .
