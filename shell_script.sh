#!/bin/bash

#ECHO
echo Hello world

#VARIABLES (no space)
NAME="Ajinkya"
echo "$NAME"
echo "${NAME}"

#USER INPUT
read -p "Enter name: " NAME
echo "Hello $NAME"

#IF
if [ "$NAME"=="Ajinkya" ]
then
	echo "Your name is Ajinkya"
elif [ "$NAME" == "Virat"]
then
	echo "Your name is Virat"
else
	echo "Your name is $NAME"
fi

#Comparison
NUM1=10
NUM2=20
if [ "$NUM1" -gt "$NUM2" ]
then
	echo "$NUM1 is greater than $NUM2"
else 
	echo "$NUM1 is less than $NUM2"
fi
# eq ne gt ge lt le

#FILE CONDITIONS
FILE="test.txt"
if [ -f "$FILE" ]
then 
	echo "$FILE is a file"
else 
	echo "$FILE is not a file"
fi

FILE="test.txt"
if [ -e "$FILE" ]
then 
	echo "$FILE exists"
else 
	echo "$FILE does not exist"
fi

#CASE
read -p "Are you 21 or over? Y/N " ANS
case "$ANS" in 
	[yY] | [Yy][eE][sS])
		echo "You are above 21"
		;;
	[nN] | [nN][oO])
		echo "You are not above 21"
		;;
	*)
		echo "Enter Y/Yes or N/No"
		;;
esac

#FOR LOOP
NAMES="Ajinkya Virat"
for NAME in $NAMES
	do 
		echo "$NAME"
done


#WHILE LOOP
CUR=0
while [ "$CUR" -le "5" ]
	do
		echo "$CUR"
		((CUR++))
done

#FUNCTION
function hello() {
	echo "hello world"
}

hello

function greet() {
	echo "Hello, I am $1 and I am $2"
}

greet "Ajinkya" "21"

#CREATE FOLDER AND WRITE TO A FILE
mkdir hello 
touch "hello/world.txt"
echo "Hello world" >> "hello/world.txt"
echo "Created hello/word.txt"