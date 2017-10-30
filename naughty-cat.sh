#!/bin/bash



echo -e "\nPlease wait..." 
(
sudo apt-get install pv > /dev/null
)
echo -e "\nLoading...\n" | pv -qL 30 
echo -e "........................................."	
echo -e "Press ctrl+c to quit whenever you like to :)" | pv -qL 30 	
echo -e "........................................."
(
sudo apt-get install oneko > /dev/null
) &


show() {
if [ "$o" == "i am a cat" ]; then
	(	
	oneko;
	) &
	echo -e "\n\n.........................................................."
	echo -e "Now close all the tabs on the screen & play with the cat..\nHope you liked it, didn't you..?" | pv -qL 30
	echo -e ".........................................................."
else 
	echo -e ".............................................."	
	echo -e "Please type 'i am a cat' (you have typed '$o')" | pv -qL 40
	echo -e ".............................................."	
	Type
fi
}

Type() {
echo -e "\n\nType 'i am a cat', then move your cursor & see the magic-->" | pv -qL 40
echo -e "Also, try leaving the cursor unmoved for 5 seconds & see what it does-->" | pv -qL 40
read o
show
}

start() {
echo -e "\nNow you can start your fun.. Enjoy.. :)" | pv -qL 30
sleep 1
Type
}

start




