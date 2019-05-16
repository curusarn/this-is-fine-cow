
COWSAY_PATH=cowsay
#COWSAY_PATH=/usr/games/cowsay

run: this-is-fine.cow
	echo -e "\nThis is fine." | ${COWSAY_PATH} -n -f ./this-is-fine.cow

fire: this-is-fine-w-fire.cow
	echo -e "\nThis is fine." | ${COWSAY_PATH} -n -f ./this-is-fine-w-fire.cow

this-is-fine.cow: this-is-fine_unescaped.cow
	# escape backslashes
	cat $< | sed 's/\\/\\\\/g' > $@ 

this-is-fine-w-fire.cow: this-is-fine-w-fire_unescaped.cow
	# escape backslashes
	cat $< | sed 's/\\/\\\\/g' > $@ 
