
#!/bin/bash

# Prompt the user to enter a number
read -p "Enter a number for the multiplication table you want to see: " numb

# Ask if the user wants the full or partial table
read -p "Do you want the Full table (F) or Partial table (P)? Enter F or P: " ans

# Convert choice to lowercase to handle F or f and P or p
ans=${ans,,}

# Check if the user wants the full table
if [[ "$ans" == "f" ]]; then
    # Full table from 1 to 12
    for i in 1 2 3 4 5 6 7 8 9 10 11 12
    do
        echo "$numb * $i = $((numb * i))"
    done

# If the user wants a partial table
elif [[ "$ans" == "p" ]]; then
    # Ask for starting and ending numbers for the partial table
    read -p "Enter the starting number: " start
    read -p "Enter the ending number: " end

    # Check if the start is greater than the end (improper range)
    if (( start > end )); then
        echo "Improper range! Displaying the full table instead:"
        for i in 1 2 3 4 5 6 7 8 9 10 11 12
        do
            echo "$numb * $i = $((numb * i))"
        done
    else
        # Partial table from start to end
        for i in $(seq $start $end)
        do
            echo "$numb * $i = $((numb * i))"
        done
    fi
else
    echo "Invalid choice! Please enter F or P."
fi

