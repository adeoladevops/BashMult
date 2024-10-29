#!/bin/bash

# Get user input for the number, table choice, and order preference
read -p "Enter a number for the multiplication table you want to see: " numb
read -p "Do you want the Full table (F) or Partial table (P)? Enter F or P: " ans
ans=${ans,,}  # Convert choice to lowercase

# Ask for order preference (ascending or descending)
read -p "Do you want to see the table in Ascending (A) or Descending (D) order? Enter A or D: " sort
sort=${sort,,}  # Convert order to lowercase

if [[ "$ans" == "f" ]]; then
    # Full table from 1 to 12
    if [[ "$sort" == "a" ]]; then
        # Ascending order using C-style loop
        for i in 1 2 3 4 5 6 7 8 9 10 11 12
        do
            echo "$numb * $i = $((numb * i))"
        done
    elif [[ "$sort" == "d" ]]; then
        # Descending order using C-style loop
        for i in 12 11 10 9 8 7 6 5 4 3 2 1
        do
            echo "$numb * $i = $((numb * i))"
        done
    else
        echo "Invalid sorting selected! Please enter A or D."
    fi

elif [[ "$ans" == "p" ]]; then
    # Ask for starting and ending numbers for partial table
    read -p "Enter the starting number: " start
    read -p "Enter the ending number: " end

    # Check for improper range
    if (( start > end )); then
        echo "You've entered improper range! Displaying the full table instead:"
        if [[ "$sort" == "a" ]]; then
	#displaying in ascending order
            for 1 in 1 2 3 4 5 6 7 8 9 10 11 12
            do
                echo "$numb * $i = $((numb * i))"
            done
        elif [[ "$sort" == "d" ]]; then
	#displaying in descending order
            for i in 12 11 10 9 8 7 6 5 4 3 2 1
            do
                echo "$numb * $i = $((numb * i))"
            done
        fi
    else
        # Partial table based on user's specified range and order
        if [[ "$sort" == "a" ]]; then
	#User selected ascending order
            for i in $(seq $start $end)
            do
                echo "$numb * $i = $((numb * i))"
            done
        elif [[ "$sort" == "d" ]]; then
	#User selected decending order	
	for i in $(seq $end -1 $start)
            do
                echo "$numb * $i = $((numb * i))"
            done
        else
            echo "Invalid sorting selected! Please enter A or D."
        fi
    fi
else
    echo "Invalid table choice! Please enter F or P."
fi

