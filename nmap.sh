#!/bin/bash

# Comprueba si el usuario tiene privilegios de root
if [ "$(id -u)" != "0" ]; then
   echo "Este script debe ejecutarse con privilegios de root." 1>&2
   exit 1
fi

# Dirección de red a escanear (puedes ajustarla según tus necesidades)
network="192.168.1.0/24"

# Archivo para almacenar los resultados del escaneo
output_file="resultado_nmap.txt"

# Realiza el escaneo de la red local con nmap
nmap -p- -sV -oN $output_file $network

# Imprime un mensaje de finalización
echo "Escaneo completado. Resultados guardados en $output_file"
