#!/bin/bash

red="\e[0;91m"
blue="\e[0;94m"
expand_bg="\e[K"
blue_bg="\e[0;104m${expand_bg}"
red_bg="\e[0;101m${expand_bg}"
green_bg="\e[0;102m${expand_bg}"
green="\e[0;92m"
white="\e[0;97m"
bold="\e[1m"
uline="\e[4m"
reset="\e[0m"

echo -e """

──────────────────────────────────────────────────────────────────────────────────────────────────────────────────
─██████──────────██████─██████████████─██████──██████─██████████████─██████──██████─████████████████───██████████─
─██░░██████████████░░██─██░░░░░░░░░░██─██░░██──██░░██─██░░░░░░░░░░██─██░░██──██░░██─██░░░░░░░░░░░░██───██░░░░░░██─
─██░░░░░░░░░░░░░░░░░░██─██░░██████░░██─██░░██──██░░██─██░░██████████─██░░██──██░░██─██░░████████░░██───████░░████─
─██░░██████░░██████░░██─██░░██──██░░██─██░░██──██░░██─██░░██─────────██░░██──██░░██─██░░██────██░░██─────██░░██───
─██░░██──██░░██──██░░██─██░░██████░░██─██░░██████░░██─██░░██████████─██░░██──██░░██─██░░████████░░██─────██░░██───
─██░░██──██░░██──██░░██─██░░░░░░░░░░██─██░░░░░░░░░░██─██░░░░░░░░░░██─██░░██──██░░██─██░░░░░░░░░░░░██─────██░░██───
─██░░██──██████──██░░██─██░░██████░░██─██░░██████░░██─██████████░░██─██░░██──██░░██─██░░██████░░████─────██░░██───
─██░░██──────────██░░██─██░░██──██░░██─██░░██──██░░██─────────██░░██─██░░██──██░░██─██░░██──██░░██───────██░░██───
─██░░██──────────██░░██─██░░██──██░░██─██░░██──██░░██─██████████░░██─██░░██████░░██─██░░██──██░░██████─████░░████─
─██░░██──────────██░░██─██░░██──██░░██─██░░██──██░░██─██░░░░░░░░░░██─██░░░░░░░░░░██─██░░██──██░░░░░░██─██░░░░░░██─
─██████──────────██████─██████──██████─██████──██████─██████████████─██████████████─██████──██████████─██████████─
──────────────────────────────────────────────────────────────────────────────────────────────────────────────────
"""

sleep 1

read -p "Nama: " uname

echo -e "\n${green}Hai $uname! Anda diminta untuk menjawab 2 soalan sebelum diberi akses ke ruang Cik Mahsuri${reset}"

sleep 1

echo -e "\n${white}Siapakah pereka cipta Jalur Gemilang Malaysia?${reset}" 

echo -e ""
echo -e "${green}[+] Jawapan: ${reset}"
echo -e "A. Tun Abdul Razak \nB. Tunku Abdul Rahman \nC. Mohamed bin Hamzah"

echo -e ""
read -p "[+] Pilih jawapan: " answer



check_ans(){

        if [ "$answer" == "A" ];then

                echo -e "\n${red}${bold}SALAH!${reset}"

        elif [ "$answer" == "B" ];then

                echo -e "\n${red}${bold}SALAH!${reset}"

        elif [ "$answer" == "C" ];then

                echo -e "\n${green}${bold}BETUL!${reset}"
                expect -c 'spawn ssh mahsuri@localhost; expect "password:"; send "Zs8Tm4x8K&1%\r";interact'

        fi

}

sleep 1

echo -e ${white}"\nApakah rukun negara Malaysia yang pertama ?"${reset}

echo -e ""
echo -e ${green}"[+] Jawapan: "${reset}
echo -e "A. Kesetiaan kepada raja & negara \nB. Keluhuran Perlembagaan \nC. Kepercayaan kepada tuhan"

echo -e ""
read -p "[+] Pilih jawapan: " answer

check_ans
