clear
echo "\e[1;32m
 ____    _    _____ _____ _____  _    ____       _              _     
/ ___|  / \  |  ___| ____|_   _|/ \  / ___|     | |_ ___   ___ | |___ 
\___ \ / _ \ | |_  |  _|   | | / _ \| |  _ _____| __/ _ \ / _ \| / __|
 ___) / ___ \|  _| | |___  | |/ ___ \ |_| |_____| || (_) | (_) | \__ \\
|____/_/   \_\_|   |_____| |_/_/   \_\____|      \__\___/ \___/|_|___/\e[0m
                                                                      
Este script descarga y configura una parte importante de herramientas tecnicas usadas en el marco del marco de trabajo SAFETAG (https://safetag.org), asi como pone a disposicion una guia en html en el directorio safetag-tools en el escritorio. Se asume su ejecucion en una instancia nueva de Kali 2020.4

Presiona cualquier tecla para continuar    "

read hola
printf %"$(tput cols)"s |tr " " "-"

echo "Algunas de las herramientas a instalar requieren crear cuentas de usuario, si ya las tienes ignora este mensaje y presiona cualquier tecla.. \n Si necesitas crear estas cuentas sigue los enlaces a continuacion:

\e[1;32m--> Nessus Essentials (analizador de vulnerabilidades)\e[0m --> https://es-la.tenable.com/products/nessus/nessus-essentials \n
\e[1;32m--> Maltego Community Edition (investigacion)\e[0m -->  https://www.maltego.com/ce-registration/ \n
\e[1;32m--> WPScan (Analizador de vulnerabilidades para Wordpress)\e[0m --> https://wpscan.com/api (Version free) \n\n\

Puedes hacer clic en los enlaces con la tecla Ctrl presionada o clic secundario, Open Link para abrirlos en un navegador web
Una vez terminado el proceso presiona cualquier tecla en esta ventana para continuar"

read hola
printf %"$(tput cols)"s |tr " " "-"

# General
sudo apt update
sudo apt -y install alien python3-pip
mkdir /tmp/safetag-install
mkdir /home/kali/Desktop/safetag-tools
echo "\e[1;32m-- Extrayendo el manual en ~/Desktop/safetag-tools \e[0m"
tar -xvf manual.tar.gz -C /home/kali/Desktop


echo "\e[1;32m-- Instalando Zenmap\e[0m"
cd /tmp/safetag-install
wget https://nmap.org/dist/zenmap-7.91-1.noarch.rpm
sudo alien -d zenmap-7.91-1.noarch.rpm
sudo dpkg -i /tmp/safetag-install/zenmap_7.91-2_all.deb

echo "\e[1;32m-- Instalando Nikto\e[0m"
cd /home/kali/Desktop/safetag-tools
git clone https://github.com/sullo/nikto

echo "\e[1;32m-- Instalando Joomscan\e[0m"
cd /home/kali/Desktop/safetag-tools
git clone https://github.com/rezasp/joomscan.git

echo "\e[1;32m-- Instalando Raccoon\e[0m"
sudo pip install raccoon-scanner

echo "\e[1;32m-- Instalando Droopescan\e[0m"
cd /home/kali/Desktop/safetag-tools
git clone https://github.com/droope/droopescan

echo "\e[1;32m-- Instalando Sublist3r\e[0m"
sudo apt -y install sublist3r

echo "\e[1;32m-- Instalando ClamAV\e[0m"
sudo apt -y install clamav clamtk

echo "\e[1;32m-- Instalando Nessus\e[0m"
echo "\e[1;32m \nDescargar en la pagina que saldra en 20segs la version Nessus-8.12.1-debian6_amd64.deb en la carpeta Downloads (por defecto en Firefox) \n Una vez esté descargado el programa pulsar cualquier tecla para continuar \e[0m"
sleep 20
firefox https://www.tenable.com/downloads/nessus?loginAttempted=true 2>/dev/null &
read hola
sudo dpkg -i /home/kali/Downloads/Nessus-*.deb

printf %"$(tput cols)"s |tr " " "-"