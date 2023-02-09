#!/bin/bash

echo "Inicializando script"
echo "Criando diretórios, grupos e adicionando root como dono"
mkdir /publico /adm /ven /sec

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

chown root:root /publico
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Criando usuários"

echo "Usuários ADM"

useradd carlos -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM

echo "Usuários VEN"

useradd debora -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN

echo "Usuários Sec"

useradd josefina -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC

echo "Especificando permissões de diretórios"

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Finalizando script"
