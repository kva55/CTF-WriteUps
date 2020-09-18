#!/bin/bash
#Run with sudo

printf "\nFor CTF purposes."
printf "\nhttps://github.com/elyseefranchuk\n"

#Needs name for home dir. Sets up gdb peda
printf "\nWhat is your username: "
read name

echo "Would you like to do"
echo "1) CTF Bundle"
echo "2) Update & CTF Bundle - recommended"
echo "3) exit"

installtools() {
   echo "$(tput setaf 2)INSTALLING STEGANOGRAPHY TOOLS $(tput sgr0)"
   yes | apt install steghide
   yes | apt install stegosuite
   yes | apt install binwalk
   yes | gem install zsteg
   yes | apt install foremost
   yes | apt install sonic-visualiser
   yes | apt install audacity

   echo "$(tput setaf 2)INSTALLING ENUMERATION AND PRIVILEGE ESCALATION TOOLS$(tput sgr0)"
   mkdir enum_scripts
   yes | apt install dirbuster
   wget https://raw.githubusercontent.com/rebootuser/LinEnum/master/LinEnum.sh -P enum_scripts

   echo "$(tput setaf 2)INSTALLING REVERSE ENGINEERING TOOLS$(tput sgr0)"
   mkdir RETools
   wget https://ghidra-sre.org/ghidra_9.1.2_PUBLIC_20200212.zip -P RETools
   yes | apt install gdb
   git clone https://github.com/longld/peda.git
   mv peda RETools
   rm peda
   echo 'source RETools/peda/peda.py' >> /home/$name/.gdbinit #Step may need to be done manually
   echo "$(tput setaf 2)INSTALLING WEB APP TOOLS$(tput sgr0)"
   mkdir WebAppTools
   yes | apt install sqlmap
   wget https://github.com/sensepost/JBaah/raw/master/dist/JBaah.jar -P WebAppTools
   yes | apt install sqlmap


   echo "$(tput setaf 2)INSTALLING FORENSIC TOOLS$(tput sgr0)"
   yes | apt install volatility
   yes | apt install wireshark
}

read answer

if (($answer == 1)); then
   installtools

elif (($answer == 2)); then
   yes | apt update && yes | apt upgrade
   installtools

elif (($answer ==3)); then
   exit -0

else
  exit -1
fi
