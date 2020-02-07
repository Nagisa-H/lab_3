#!/bin/bash
# Authors : Nagisa Her
# Date: 2/7/2020

#Problem 1 Code: Use grep command to search file for regular expression
#Make sure to document how you are solving each problem!
echo "Please enter a filename."
read filename
echo "Please enter a regular expression."
read regExp
echo "Expression: " $regExp "Filename: " $filename
grep -e $regExp $filename
#Problem 2 Code: Output number of phone numbers
echo "Number of lines with phone numbers: "
grep -c '[0-9]\{3\}-[0-9]\{3\}-[0-9]\{4\}' $filename
#Problem 3 Code: Print numbers that start with 303
echo "Phone numbers with the area code (303)"
grep -o '303-[0-9]\{3\}-[0-9]\{4\}' $filename
#Problem 4 Code: Insert 10 geocities.com emails into a file
echo "Creating file containing geocities.com emails...done!"
grep "@geocities.com" $filename >> email_results.txt
