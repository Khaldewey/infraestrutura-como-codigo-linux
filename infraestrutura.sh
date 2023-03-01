#!/bin/ban 

echo "Criando diretórios..." 

cd / 
mkdir publico adm ven sec 


chmod 777 /publico/
chmod 770 /adm/
chmod 770 /ven/ 
chmod 770 /sec/

echo "Criando grupos..." 

groupadd GRP_ADM  
groupadd GRP_VEN 
groupadd GRP_SEC  

chown root:GRP_ADM /adm/
chown root:GRP_VEN /ven/
chown root:GRP_SEC /sec/

echo "Criando usuários..."

useradd carlos -c "Administrador" -s /bin/bash -m -p $(openssl passwd padrao) -G GRP_ADM 
useradd maria -c "Administrador" -s /bin/bash -m -p $(openssl passwd padrao) -G GRP_ADM 
useradd joao -c "Administrador" -s /bin/bash -m -p $(openssl passwd padrao) -G GRP_ADM  
useradd debora -c "Vendedor" -s /bin/bash -m -p $(openssl passwd padrao) -G GRP_VEN 
useradd sebastiana -c "Vendedor" -s /bin/bash -m -p $(openssl passwd padrao) -G GRP_VEN 
useradd roberto -c "Vendedor" -s /bin/bash -m -p $(openssl passwd padrao) -G GRP_VEN 
useradd josefina -c "Secretario" -s /bin/bash -m -p $(openssl passwd padrao) -G GRP_SEC  
useradd amanda -c "Secretario" -s /bin/bash -m -p $(openssl passwd padrao) -G GRP_SEC 
useradd rogerio -c "Secretario" -s /bin/bash -m -p $(openssl passwd padrao) -G GRP_SEC 


