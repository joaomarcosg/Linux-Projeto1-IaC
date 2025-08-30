#!/bin/bash

echo "Creating directories..."

mkdir /publica
mkdir /adm
mkdir /ven
mkdir /sec

echo "Creating user groups..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Creating users..."

useradd -s /bin/bash -m -p "$(openssl passwd -6 Senha123)" carlos -G GRP_ADM
useradd -s /bin/bash -m -p "$(openssl passwd -6 Senha123)" maria -G GRP_ADM
useradd -s /bin/bash -m -p "$(openssl passwd -6 Senha123)" joao -G GRP_ADM

useradd -s /bin/bash -m -p "$(openssl passwd -6 Senha123)" debora -G GRP_VEN
useradd -s /bin/bash -m -p "$(openssl passwd -6 Senha123)" sebastiana -G GRP_VEN
useradd -s /bin/bash -m -p "$(openssl passwd -6 Senha123)" roberto -G GRP_VEN

useradd -s /bin/bash -m -p "$(openssl passwd -6 Senha123)" josefina -G GRP_SEC
useradd -s /bin/bash -m -p "$(openssl passwd -6 Senha123)" amanda -G GRP_SEC
useradd -s /bin/bash -m -p "$(openssl passwd -6 Senha123)" rogerio -G GRP_SEC

echo "Specifying directory permissions..."

chown root:GRP_ADM /adm
chown root:GRP_ADM /ven
chown root:GRP_ADM /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publica

echo "finishing..."

