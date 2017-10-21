all: readme.md

readme.md:
	touch readme.md
	echo "# Guessing Game" > readme.md 
	date >> readme.md 
	wc -l guessinggame.sh | egrep -o "[0-9]+"  >> readme.md 
 
clean:
	rm readme.md 

