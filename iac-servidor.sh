#!/bin/bash

echo "------------------------------------------"
echo "  PROVISIONAMENTO DE SERVIDOR WEB APACHE "
echo "------------------------------------------"

echo "[1] Atualizando o servidor..."
apt-get update -y
apt-get upgrade -y

echo "[2] Instalando dependências (Apache e Unzip)..."
apt-get install apache2 -y
apt-get install unzip -y

echo "[3] Baixando arquivos da aplicação..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "[4] Descompactando e movendo para o diretório do Apache..."
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

echo "------------------------------------------"
echo "  PROJETO FINALIZADO COM SUCESSO! :)"
echo "------------------------------------------"
