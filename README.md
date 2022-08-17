# safetag-tools
Script de instalación de herramientas para SAFETAG y guía de uso básico de herramientas

## Requisitos
1. Una instancia de Kali Linux activa que use zsh (probado en la versión 2020.4)
2. Usar el usuario kali que viene por defecto en la instalación limpia (si se usa otro usuario ajustar el script `install.sh` acorde a las necesidades)

## Instalar las herramientas usadas en evaluaciones SAFETAG
1. Abrir un terminal
2. ```git clone https://github.com/cguerrave/safetag-tools```
3. ```cd safetag-tools```
4. ```./install.sh```
5. Seguir las instrucciones en pantalla (se pedirá la clave del usuario kali al menos una vez)
6. Al final de la instalación se creará el directorio ```safetag-tools``` en el escritorio del usuario Kali que contendrá algunas herramientas que no se instalan de forma global y además el directorio ```manual``` que tiene una guía de uso de las heramientas configuradas, para abrirla hacer doble clic en ```index.html```

## Herramientas incluídas
- BurpSuite
- ClamAV
- Dirb
- Droopescan
- Ettercap
- Joomscan
- Maltego
- Raccoon
- Recon-ng
- SQLmap
- Sublist3r
- theHarvester
- Wireshark
- Zaproxy
- Nessus
- Nikto
- WPScan
- Zenmap
