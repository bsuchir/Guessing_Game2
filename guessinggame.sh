check_match(){

	if [[ $1 -eq $2 ]]
                then
                let match=1
                echo "You guessed it right"
        elif [[ $1 -gt $2 ]]
        then
                echo "Please enter a lower value"
		let match=0
	else
                echo "Please enter a greater value"
		let match=0
        fi

	return "$match"
}



no_files=$(ls | wc -l)
#echo "No. of files is $no_files"

echo "What is the number of files in this directory?"
read user_no_files

let match=0
#echo "The value of match is: $match"

while [[ $match -ne 1 ]]
do
	check_match "user_no_files" "no_files"
	if [[ $match -eq 0 ]] 
	then
		read user_no_files 
	fi
done 


