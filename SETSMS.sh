#!/bin/bash
#
# Created by: TheKillerMax
#
# VARIABLES
#
PWD=$(pwd)
source ${PWD}/Colors.sh
#
# FUNCIONES
#
function SETSMS {
	sleep 0.5
	clear
echo -e "${rojo}
   ▄▄▄▄    ▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄    ▄▄▄▄    ▄▄▄  ▄▄▄    ▄▄▄▄TheKillerMax
 ▄█▀▀▀▀█   ██▀▀▀▀▀▀  ▀▀▀██▀▀▀  ▄█▀▀▀▀█   ███  ███  ▄█▀▀▀▀█
 ██▄       ██           ██     ██▄       ████████  ██▄
  ▀████▄   ███████      ██      ▀████▄   ██ ██ ██   ▀████▄
      ▀██  ██           ██          ▀██  ██ ▀▀ ██       ▀██
 █▄▄▄▄▄█▀  ██▄▄▄▄▄▄     ██     █▄▄▄▄▄█▀  ██    ██  █▄▄▄▄▄█▀
  ▀▀▀▀▀    ▀▀▀▀▀▀▀▀     ▀▀      ▀▀▀▀▀    ▀▀    ▀▀   ▀▀▀▀▀
"${blanco}
}
function PHONE {
echo -e -n "${rojo}
┌════════════════════════════┐
█ ${blanco}INGRESE EL NÚMERO OBJETIVO ${rojo}█
└════════════════════════════┘
┃    ┌══════════════════════════┐
└═>>>█ EJEMPLO => ${blanco}+56944071775 ${rojo}█
┃    └══════════════════════════┘
┃
└═>>> "${blanco}
read -r phone
}
#
# CÓDIGO
#
SETSMS
PHONE
cd
cd quack
python quack --tool SMS --target ${phone} --threads 60 --timeout 90
cd
cd Impulse
python impulse.py --method SMS --time 90 --threads 60 --target ${phone}
cd
cd SpamCall-1
python SpamCall.py
cd
echo -e "${rojo}
┌═══════════════════════┐
█ ${blanco}CREADOR: TheKillerMax ${rojo}█
└═══════════════════════┘"