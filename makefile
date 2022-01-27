all: README.md

README.md:
	echo "# Bash Guessing Game\n" > README.md
	echo -n "Generated at: " >> README.md
	date >> README.md
	echo -n "\nguessinggame.sh was " >> README.md
	wc -l < guessinggame.sh >> README.md
	echo " lines long at the time of running make" >> README.md
