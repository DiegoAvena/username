#! /bin/bash
# username.sh
# Diego Avena
echo "Enter a username: "
read -r USERNAME
while echo "$USERNAME" | grep -E  -v "^[a-z][0-9a-z_]{2,11}$" > /dev/null 2>&1
do
	echo "You must enter a valid username that follows these rules: "
	echo "Rule 1: Contains at least 3 but no more than 12 characters"
	echo "Rule 2: Contains only lower case letters, digits, and the underscore character"
	echo "Rule 3: Starts with a lower case letter"
	echo "Enter a username: "
	read -r USERNAME
done
echo "Thank you"
