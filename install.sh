#!/bin/bash
source $HOME/youtube/Colors.sh
function YouTube {
	sleep 0.5
	clear
echo -e ${verde}"
▄▄▄    ▄▄▄                     ▄▄▄▄▄▄▄▄            ▄▄
 ██▄  ▄██                      ▀▀▀██▀▀▀            ██
  ██▄▄██    ▄████▄   ██    ██     ██     ██    ██  ██▄███▄    ▄████▄
   ▀██▀    ██▀  ▀██  ██    ██     ██     ██    ██  ██▀  ▀██  ██▄▄▄▄██
    ██     ██    ██  ██    ██     ██     ██    ██  ██    ██  ██▀▀▀▀▀▀
    ██     ▀██▄▄██▀  ██▄▄▄███     ██     ██▄▄▄███  ███▄▄██▀  ▀██▄▄▄▄█
    ▀▀       ▀▀▀▀     ▀▀▀▀ ▀▀     ▀▀      ▀▀▀▀ ▀▀  ▀▀ ▀▀▀      ▀▀▀▀▀
"${blanco}
}
#
# CÓDIGO
#
YouTube
echo -e "${verde}
┌══════════════════════════════┐
█ ${blanco}Actualizando Repositorios... ${verde}█
└══════════════════════════════┘
"
apt update && apt upgrade -y
YouTube
echo -e "${verde}
┌════════════════════┐
█ ${blanco}Instalando curl... ${verde}█
└════════════════════┘"
pkg install -y curl > /dev/null 2>&1
echo -e "${verde}
┌════════════════════┐
█ ${blanco}Instalando wget... ${verde}█
└════════════════════┘"
pkg install -y wget > /dev/null 2>&1
echo -e "${verde}
┌══════════════════════┐
█ ${blanco}Instalando python... ${verde}█
└══════════════════════┘"
pkg install -y python > /dev/null 2>&1
echo -e "${verde}
┌═══════════════════════┐
█ ${blanco}Instalando python2... ${verde}█
└═══════════════════════┘"
pkg install -y python2 > /dev/null 2>&1
echo -e "${verde}
┌══════════════════════┐
█ ${blanco}Instalando ffmpeg... ${verde}█
└══════════════════════┘"
pkg install -y ffmpeg > /dev/null 2>&1
echo -e "${verde}
┌══════════════════════════┐
█ ${blanco}Instalando youtube-dl... ${verde}█
└══════════════════════════┘
"
cd
curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /data/data/com.termux/files/usr/bin/youtube-dl > /dev/null 2>&1
chmod a+rx /data/data/com.termux/files/usr/bin/youtube-dl > /dev/null 2>&1
cd $HOME/YouTube
chmod 711 YouTube.sh
YouTube
echo -e "${verde}
┌═══════════════════════┐
█ ${blanco}REQUISITOS INSTALADOS ${verde}█
█  ${blanco}EJECUTE EL COMANDO   ${verde}█
└═══════════════════════┘
┃
┃    ┌══════════════┐
└═>>>█ ${blanco}./YouTube.sh ${verde}█
     └══════════════┘

"${blanco}
