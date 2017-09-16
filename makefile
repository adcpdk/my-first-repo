README.md: guessinggame.sh
	echo "Title: Guessing game\n" > README.md
	date >> README.md
	echo "\nThe number of lines of code contained in guessinggame.sh:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

