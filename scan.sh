#!/bin/bash

echo "Selecciona una opción de escaneo:"
echo "1. Escaneo rápido (Top 1000 puertos)"
echo "2. Escaneo de servicios y versiones"
echo "3. Escaneo completo (Todos los puertos)"
echo "4. Escaneo de red (Descubre dispositivos en la red)"
echo "5. Escaneo de scripts de vulnerabilidad"
echo "6. Escaneo de sistemas operativos remotos"
echo "7. Escaneo de versiones de software remoto"
echo "8. Salir"

read -p "Ingresa el número de la opción deseada: " opcion

case $opcion in
    1)
        echo "Realizando escaneo rápido..."
        nmap -F 127.0.0.1
        ;;
    2)
        echo "Realizando escaneo de servicios y versiones..."
        nmap -sV 127.0.0.1
        ;;
    3)
        echo "Realizando escaneo completo..."
        nmap -p- 127.0.0.1
        ;;
    4)
        echo "Realizando escaneo de red..."
        nmap -sn 192.168.1.0/24
        ;;
    5)
        echo "Realizando escaneo de scripts de vulnerabilidad..."
        nmap --script vuln 127.0.0.1
        ;;
    6)
        echo "Realizando escaneo de sistemas operativos remotos..."
        nmap -O 127.0.0.1
        ;;
    7)
        echo "Realizando escaneo de versiones de software remoto..."
        nmap -sV 127.0.0.1
        ;;
    8)
        echo "Saliendo..."
        exit
        ;;
    *)
        echo "Opción no válida. Saliendo..."
        ;;
esac
