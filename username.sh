#! /bin/bash
# username.sh
# Karolina Michalewska

echo "Please enter a username with 3-12 characters."
echo "Your username must start with a lowercase letter."
echo "Your username may include lowercase letters, digits, and underscore."
echo "Username: "
read username
while echo "$username" | egrep -v "^[0-9][a-z][_]{3,12}$" > /dev/null 2>&1
do
	echo "You must enter a valid username - 3-12 characters only!"
	echo "Try again: "
	read username
done
echo "Thank you"
