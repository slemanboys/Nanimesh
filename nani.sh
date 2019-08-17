#!/bin/bash
#sin

RED=$(tput setaf 1) 
GREEN=$(tput setaf 2) 
CYAN=$(tput setaf 6) 
WHITE=$(tput setaf 7) 
begin=$(date +"%s")
echo -e "${RED} "
echo "  Sin . (bash Nanime grabber)"
echo "${GREEN}"

#get
read -p "${WHITE}Link: " link
echo -e "\n"

echo -e "reading source for /${GREEN}$link ..
${WHITE}"

wget -q -nv -O curl.txt https://kato.kireisubs.org/api/?download=${link};
echo -e "${GREEN} "
cat curl.txt | grep "http" 
rm curl.txt
echo -e "\n"

#length
termin=$(date +"%s")
difftimelps=$(($termin-$begin))
echo "${WHITE}$(($difftimelps / 60)) minutes and $(($difftimelps % 60)) sec. elapsed ${RED}Nanimesh"

