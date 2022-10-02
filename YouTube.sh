#!/bin/bash
source $HOME/youtube/Colors.sh

function YouTube {
	sleep 0.5
	clear
echo -e ${azul}"
${azul}┌══════════════════════════════════════════┐
__   __         _____      _
\ \ / /__  _   |_   _|   _| |__   ___
 \ V / _ \| | | || || | | | '_ \ / _ \

  | | (_) | |_| || || |_| | |_) |  __/
  |_|\___/ \__,_||_| \__,_|_.__/ \___|
			      BY: KING
${azul}└══════════════════════════════════════════┘
"${blanco}
}
#
# CÓDIGO
#
YouTube
echo -e -n "${azul}
┌══════════════════════════════┐
█ ${blanco}ESCRIBIR EL ENLACE DEL VIDEO ${azul}█
└══════════════════════════════┘
┃
┃    ┌══════════════════════════════════════════┐
└═>>>█ Ejemplo >>> ${blanco}https://youtu.be/g9_mPcOEBGQ ${azul}█
┃    └══════════════════════════════════════════┘
┃
└═>>> ${blanco}"
read -r Enlace

YouTube
echo -e -n "${azul}
┌════════════════════════════┐
█ ${blanco}ESCRIBIR UN NOMBRE PARA SU ${azul}█
█ ${blanco}(VIDEO/AUDIO) A DESCARGAR  ${azul}█
└════════════════════════════┘
┃
┃    ┌═══════════════════════════════════════════┐
└═>>>█ Ejemplo >>> ${blanco}KING001 ${azul}(Sin Espacios)        █
┃    └═══════════════════════════════════════════┘
┃
└═>>> ${blanco}"

read -r Nombre

YouTube
echo -e -n "${azul}
┌═══════════════════════════┐
█ ${blanco}ESCRIBIR LA RUTA DONDE SE ${azul}█
█ ${blanco}GUARDARÁ SU (AUDIO/VIDEO) ${azul}█
└═══════════════════════════┘
┃
┃    ┌══════════════════════════════┐
└═>>>█ Ejemplo >>> ${blanco}/sdcard/Download ${azul}█
┃    └══════════════════════════════┘
┃
└═>>> ${blanco}"

read -r Ruta

while :
do
YouTube
echo -e -n "${azul}
┌═════════════════════════════════┐
█ ${blanco}SELECCIONAR FORMATO DE DESCARGA ${azul}█
└═════════════════════════════════┘

${azul}┌═════════════════════════════════════┐
${azul}█ [${blanco}1${azul}] ┃ ${blanco}Video Completo (Todo)${azul}  ┃ ${blanco}mp4${azul}  █
${azul}█═════════════════════════════════════█
${azul}█ [${blanco}2${azul}] ┃ ${blanco}Solo Video (Sin Audio)${azul} ┃ ${blanco}webm${azul} █
${azul}█═════════════════════════════════════█
${azul}█ [${blanco}3${azul}] ┃ ${blanco}Solo Audio (Sin Video)${azul} ┃ ${blanco}m4a${azul}  █
${azul}█═════════════════════════════════════█
${azul}█ [${blanco}4${azul}] ┃ ${blanco}Solo Audio (Sin Video)${azul} ┃ ${blanco}mp3${azul}  █
${azul}└═════════════════════════════════════┘
┃
└═>>> ${blanco}"
read -r opcion_descarga

[ "$opcion_descarga" == "1" ]||[ "$opcion_descarga" == "2" ]||[ "$opcion_descarga" == "3" ]||[ "$opcion_descarga" == "4" ] && break

echo -e ${azul}"
┌═════════════════════┐
█ ${blanco}¡OPCIÓN INCORRECTA! ${azul}█
└═════════════════════┘
"
sleep 1.5
clear
done

case $opcion_descarga in
1)
YouTube
echo -e "${azul}
┌══════════════════════════════════════┐
█ ${blanco}Descargando Video Completo (Todo)... ${azul}█
└══════════════════════════════════════┘
"
youtube-dl -f mp4 $Enlace -o $Ruta/$Nombre.mp4 > /dev/null 2>&1
YouTube
echo -e "${azul}
┌═════════════════════════════════════════┐
█ ${blanco}VIDEO COMPLETO DESCARGADO CORRECTAMENTE ${azul}█
└═════════════════════════════════════════┘
┃
┌════════════┐
█ ${blanco}EN LA RUTA ${azul}█
└════════════┘
┃
└═>>>${blanco} $Ruta
${azul}┃
┌═══════════════┐
█ ${blanco}CON EL NOMBRE ${azul}█
└═══════════════┘
┃
└═>>>${blanco} $Nombre.mp4
"
;;
2)
YouTube
echo -e "${azul}
┌═══════════════════════════════════════┐
█ ${blanco}Descargando Solo Video (Sin Audio)... ${azul}█
└═══════════════════════════════════════┘
"
youtube-dl -f webm $Enlace -o $Ruta/$Nombre.webm > /dev/null 2>&1
YouTube
echo -e "${azul}
┌════════════════════════════════════════════┐
█ ${blanco}VIDEO (SIN AUDIO) DESCARGADO CORRECTAMENTE ${azul}█
└════════════════════════════════════════════┘
┃
┌════════════┐
█ ${blanco}EN LA RUTA ${azul}█
└════════════┘
┃
└═>>>${blanco} $Ruta
${azul}┃
┌═══════════════┐
█ ${blanco}CON EL NOMBRE ${azul}█
└═══════════════┘
┃
└═>>>${blanco} $Nombre.webm
"
;;
3)
YouTube
echo -e "${azul}
┌═══════════════════════════════════════┐
█ ${blanco}Descargando Solo Audio (Sin Video)... ${azul}█
└═══════════════════════════════════════┘
"
youtube-dl -f m4a $Enlace -o $Ruta/$Nombre.m4a > /dev/null 2>&1
YouTube
echo -e "${rojo}
┌════════════════════════════════════════════┐
█ ${blanco}AUDIO (SIN VIDEO) DESCARGADO CORRECTAMENTE ${azul}█
└════════════════════════════════════════════┘
┃
┌════════════┐
█ ${blanco}EN LA RUTA ${azul}█
└════════════┘
┃
└═>>>${blanco} $Ruta
${azul}┃
┌═══════════════┐
█ ${blanco}CON EL NOMBRE ${azul}█
└═══════════════┘
┃
└═>>>${blanco} $Nombre.m4a
"
;;
4)
YouTube
echo -e "${azul}
┌═══════════════════════════════════════┐
█ ${blanco}Descargando Solo Audio (Sin Video)... ${azul}█
└═══════════════════════════════════════┘
"
youtube-dl --extract-audio --audio-format mp3 $Enlace -o $Ruta/$Nombre.mp3 > /dev/null 2>&1
YouTube
echo -e "${azul}
┌════════════════════════════════════════════┐
█ ${blanco}AUDIO (SIN VIDEO) DESCARGADO CORRECTAMENTE ${azul}█
└════════════════════════════════════════════┘
┃
┌════════════┐
█ ${blanco}EN LA RUTA ${azul}█
└════════════┘
┃
└═>>>${blanco} $Ruta
${azul}┃
┌═══════════════┐
█ ${blanco}CON EL NOMBRE ${azul}█
└═══════════════┘
┃
└═>>>${blanco} $Nombre.mp3
"
esac

while :
do
echo -e -n "${azul}
┌═══════════════════════════════════════┐
█ ${blanco}¿QUIERE DESCARGAR OTRO (VIDEO/AUDIO)? ${azul}█
└═══════════════════════════════════════┘

┌══════════════┐
█ [${blanco}1${azul}] ┃${blanco}   SI${azul}   █
█══════════════█
█ [${blanco}2${azul}] ┃${blanco}   NO${azul}   █
└══════════════┘
┃
└═>>> "${blanco}
read -r opcion_reiniciar

[ "$opcion_reiniciar" == "1" ]||[ "$opcion_reiniciar" == "2" ] && break

echo -e ${azul}"
┌═════════════════════┐
█ ${blanco}¡OPCIÓN INCORRECTA! ${azul}█
└═════════════════════┘
"
sleep 1
YouTube
done

case $opcion_reiniciar in
1)
source $HOME/youtube/YouTube.sh
;;
2)
echo -e ""${azul}
esac

