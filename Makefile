
COWSAY_PATH=cowsay
#COWSAY_PATH=/usr/games/cowsay

run: 
	echo -e "\nThis is fine." | ${COWSAY_PATH} -n -f ./this-is-fine.cow

