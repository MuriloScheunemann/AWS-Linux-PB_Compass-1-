#!/bin/bash

DATAHORA=$(date +"%d/%m/%y-%T")
STATUS=$(systemctl is-active httpd)

if [ $STATUS = "active" ]; then
  echo -e "$DATAHORA - servico:Apache - status:Ativo - O Apache está\e[;32;01m ONLINE \e[m " >> /mnt/EFS/murilo/online
else
  echo -e "$DATAHORA - servico:Apache - status:Inativo - O Apache está\e[;31;01m OFFLINE \e[m " >> /mnt/EFS/murilo/offline
fi