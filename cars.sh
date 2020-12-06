#! /bin/bash
# cars.sh
# Ori Garibi

menuOpts=0

echo "Car Inventory"

while [ "$menuOpts" -ne "3" ]
do
	echo "Menu Options"
	echo "1: Enter a new car"
	echo "2: Display list"
	echo "3: Save and exit"
	read -r menuOpts

	case "$menuOpts" in
		"1") echo "Year: "
		read -r year
		echo "Make: "
		read -r make
		echo "Model: "
		read -r model
		myCar="$year:$make:$model"
		echo "$myCar" >> My_old_cars;;
		"2") sort My_old_cars;;
		"3") echo "Thank you";;
	esac

done
