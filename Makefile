
COWSAY_PATH=cowsay
#COWSAY_PATH=/usr/games/cowsay

run: this-is-fine.cow
	echo -e "\nThis is fine." | ${COWSAY_PATH} -n -f ./this-is-fine.cow

this-is-fine.cow: this-is-fine_unescaped.cow
	# escape backslashes
	cat $< | sed 's/\\/\\\\/g' > $@ 
