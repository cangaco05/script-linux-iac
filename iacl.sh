#! /bin/bash

echo "Criando Diretório..."

mkdir /publica
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criação de Grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criação de Usuarios..."

useradd carlos -c "Carlos Silva" -s /bin/bash -m -p $(openssl passwd 123456) -G GRP_ADM
useradd maria  -c "Maria Silva" -s /bin/bash -m -p $(openssl passwd 123456) -G GRP_ADM
useradd joao -c "João Silva" -s /bin/bash -m -p $(openssl passwd 123456) -G GRP_ADM

useradd debora -c "Debora Santos" -s /bin/bash -m -p $(openssl passwd 123456) -G GRP_VEN
useradd sebastiana -c "Sebastiana Santos" -s /bin/bash -m -p $(openssl passwd 123456) -G GRP_VEN
useradd roberto -c "Roberto Santos" -s /bin/bash -m -p $(openssl passwd 123456) -G GRP_VEN

useradd josefina -c "Josefina Souza" -s /bin/bash -m -p $(openssl passwd 123456) -G GRP_SEC
useradd amanda -c "amanda Souza" -s /bin/bash -m -p $(openssl passwd 123456) -G GRP_SEC
useradd rogerio -c "Rogerio Souza" -s /bin/bash -m -p $(openssl passwd 123456) -G GRP_SEC

echo "Dono dos Diretorios ....."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Permissões de Usuarios para Pastas"

chmod 777 /publica
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Finalizado Scripts "



