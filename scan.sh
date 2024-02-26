#!/bin/bash

# Función para imprimir el título en color amarillo y negrita
print_title() {
    echo -e "\e[1;36m$1\e[0m"
}

print_title "SCAN-IP"

echo "Introduce la IP que deseas escanear:"
read -p "IP: " ip

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
        echo "Realizando escaneo rápido en $ip..."
        nmap -F "$ip"
        ;;
    2)
        echo "Realizando escaneo de servicios y versiones en $ip..."
        nmap -sV "$ip"
        ;;
    3)
        echo "Realizando escaneo completo en $ip..."
        nmap -p- "$ip"
        ;;
    4)
        echo "Realizando escaneo de red en $ip..."
        nmap -sn "$ip"
        ;;
    5)
        echo "Realizando escaneo de scripts de vulnerabilidad en $ip..."
        nmap --script vuln "$ip"
        ;;
    6)
        echo "Realizando escaneo de sistemas operativos remotos en $ip..."
        nmap -O "$ip"
        ;;
    7)
        echo "Realizando escaneo de versiones de software remoto en $ip..."
        nmap -sV "$ip"
        ;;
    8)
        echo "Saliendo..."
        exit
        ;;
    *)
        echo "Opción no válida. Saliendo..."
        ;;
esac
