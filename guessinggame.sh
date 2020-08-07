#!/usr/bin/env bash
#guessinggame.sh
echo "Files in working directory:"
input=$(ls | wc -l)

function number {
echo "Guessing Number:"
read number
}

number

while :
do
  expr "$number" + 1 
  if [[ $? -gt 1 ]]; then
    echo "Enter a number!"
    number
  elif [[ $number -eq $input ]]; then
    echo "Great! the number is $number."
    break
  elif [[ $number -lt $input ]]; then
    echo "Guessed number is too low!"
    number
  else
    echo "Guessed number is too high!"
    number
  fi
done