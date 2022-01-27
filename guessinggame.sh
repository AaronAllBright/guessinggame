#!/usr/bin/env bash

echo "Guess how many files in this directory!"

function guess_prompt {
        echo -n "Guess> "
        read userguess
}

filecount=$(ls -Al | grep '^-' | wc -l)

finished=false
while [ ! "$finished" = true ]
do
	guess_prompt
	if [[ userguess -eq filecount ]]
	then
		echo "Congratulations, that's it!"
		finished=true
	elif [[ userguess -gt filecount ]]
	then
		echo "Sorry, that's too high! Keep trying."
	elif [[ userguess -lt filecount ]]
	then
		echo "Sorry, that's too low! Keep trying."
	fi
done
