#!/bin/bash

# Function to count files in the directory
function count_files {
    echo $(ls -1 | wc -l)
}

# Welcome message
echo "Welcome to the guessing game!"
correct_count=$(count_files)

while true; do
    # Prompt the user for a guess
    echo "How many files are in the current directory?"
    read guess

    # Validate the guess
    if [[ $guess -eq $correct_count ]]; then
        echo "Congratulations! You guessed it right!"
        break
    elif [[ $guess -lt $correct_count ]]; then
        echo "Your guess is too low. Try again."
    else
        echo "Your guess is too high. Try again."
    fi
done
