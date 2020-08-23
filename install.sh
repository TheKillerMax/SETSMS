#!/bin/bash
#
# REQUISITOS
#
# VARIABLES
#
PWD=$(pwd)
source ${PWD}/Colors.sh
#
# CÓDIGO
#
sleep 0.5
clear
cd
echo -e "${rojo}
┌══════════════════════════════┐
█ ${blanco}Actualizando Repositorios... ${rojo}█TheKillerMax
└══════════════════════════════┘
"${blanco}
apt update && apt upgrade -y
sleep 0.5
clear
echo -e "${rojo}
┌══════════════════════┐
█ ${blanco}Instalando python... ${rojo}█
└══════════════════════┘"
pkg install -y python > /dev/null 2>&1
echo -e "${rojo}
┌═══════════════════════┐
█ ${blanco}Instalando python2... ${rojo}█
└═══════════════════════┘"
pkg install -y python2 > /dev/null 2>&1
echo -e "${rojo}
┌════════════════════════┐
█ ${blanco}Instalando requests... ${rojo}█
└════════════════════════┘"
pip install requests > /dev/null 2>&1
echo -e "${rojo}
┌═════════════════════┐
█ ${blanco}Instalando quack... ${rojo}█
└═════════════════════┘"
git clone https://github.com/entynetproject/quack > /dev/null 2>&1
cd quack
pip install -r requirements.txt > /dev/null 2>&1
chmod 711 quack
cd
echo -e "${rojo}
┌═══════════════════════┐
█ ${blanco}Instalando Impulse... ${rojo}█
└═══════════════════════┘"
git clone https://github.com/LimerBoy/Impulse > /dev/null 2>&1
cd Impulse
pip install -r requirements.txt > /dev/null 2>&1
cd
echo -e "${rojo}
┌═══════════════════════┐
█ ${blanco}Instalando SpamCall-1... ${rojo}█
└═══════════════════════┘"
git clone https://github.com/sandiwijayani1/SpamCall-1 > /dev/null 2>&1
cd SpamCall-1
chmod 711 SpamCall.py
cd
cd SETSMS
chmod 711 SETSMS.sh
clear
echo -e "${rojo}
┌═══════════════════════┐
█ ${blanco}REQUISITOS INSTALADOS ${rojo}█
█ ${blanco}EJECUTE EL COMANDO:   ${rojo}█
└═══════════════════════┘
┃
┃    ┌═════════════┐
└═>>>█ ${blanco}./SETSMS.sh ${rojo}█
     └═════════════┘
"${blanco}
