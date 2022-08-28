#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /vendas

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VENDAS

echo "Criando usuários..."

useradd user1 -m -s /bin/bash -p $(openssl passwd "senha123") -G GRP_ADM
useradd user2 -m -s /bin/bash -p $(openssl passwd "senha123") -G GRP_VENDAS
useradd user3 -m -s /bin/bash -p $(openssl passwd "senha123") -G GRP_VENDAS

echo "Definindo permissões diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VENDAS /vendas

chmod 770 /adm
chmod 770 /vendas
chmod 777 /publico 

echo "Script finalizado!"



