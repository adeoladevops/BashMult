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
        for (( i = 1; i <= 12; i++ ))
        do
            echo "$numb * $i = $((numb * i))"
        done
    elif [[ "$sort" == "d" ]]; then
        # Descending order using C-style loop
        for (( i = 12; i >= 1; i-- ))
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
            for (( i = 1; i <= 12; i++ ))
            do
                echo "$numb * $i = $((numb * i))"
            done
        elif [[ "$sort" == "d" ]]; then
            for (( i = 12; i >= 1; i-- ))
            do
                echo "$numb * $i = $((numb * i))"
            done
        fi
    else
        # Partial table based on user's specified range and order
        if [[ "$sort" == "a" ]]; then
            for (( i = start; i <= end; i++ ))
            do
                echo "$numb * $i = $((numb * i))"
            done
        elif [[ "$sort" == "d" ]]; then
            for (( i = end; i >= start; i-- ))
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

