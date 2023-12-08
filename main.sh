#!/bin/bash

#comp 141 extra credit

mkdir output

cp TenLines.txt output

cd output

cat TenLines.txt > read.txt

pwd > pwd.txt

ls > ls.txt

cp TenLines.txt copy.txt

#The bottom two lines are me making an alias for the date command called today
#however when it ran the script does not recognize the command today
#we went over something like this in class and I believe I remeber the problem being the environment which the alias is saved to
#to solve this I created a function called today indstead

#alias today='date'
#today > date.txt

today() {
	date
}
today > date.txt

wc -w TenLines.txt > textcount.txt

processTest=$(ps -e | head -n 5)
echo "$processTest" > process.txt

ifconfig | head -n 5 > netstat.txt

mount | head -n 5 > mount.txt

mkfile -n b permissions.txt

chmod 777 permissions.txt

TESTENV1="test" 

cat TenLines.txt | grep '[A-Za-z][A-Za-z][A-Za-z]' > regex.txt

cd ..
