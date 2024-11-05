This contains the script for both the list for and C styled For Loops for this project with user interaction<br>
The user is asked to enter what Multiplication table he wishes to view, then follow up with a question of<br>
whether to show in full or partial with view in ascending order or otherwise.<br>
The ones without "order" has no sorting features<br>
Cheers!!!<br>



********************Listform For Loop********************


#!/bin/bash<br>

#Get user input for the number, table choice, and order preference<br>

    read -p "Enter a number for the multiplication table you want to see: " numb
    read -p "Do you want the Full table (F) or Partial table (P)? Enter F or P: " ans

#Convert choice to lowercase<br>

    ans=${ans,,}

#Ask for order preference (ascending or descending)<br>

    read -p "Do you want to see the table in Ascending (A) or Descending (D) order? Enter A or D: " sort

#Convert order to lowercase<br>

    sort=${sort,,}<br>
    if [[ "$ans" == "f" ]]; then

#Full table from 1 to 12

    if [[ "$sort" == "a" ]]; then

#Ascending order using C-style loop

        for i in 1 2 3 4 5 6 7 8 9 10 11 12
        do
            echo "$numb * $i = $((numb * i))"
        done
    elif [[ "$sort" == "d" ]]; then

#Descending order using C-style loop

        for i in 12 11 10 9 8 7 6 5 4 3 2 1
        do
            echo "$numb * $i = $((numb * i))"
        done
    else
        echo "Invalid sorting selected! Please enter A or D."
    fi
    elif [[ "$ans" == "p" ]]; then

#Ask for starting and ending numbers for partial table

    read -p "Enter the starting number: " start
    read -p "Enter the ending number: " end

#Check for improper range

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
#Partial table based on user's specified range and order

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

![image](https://github.com/user-attachments/assets/2eb0b820-9513-4ae4-a8db-f645c0c89a31)


********************C-Stlyed For Loop********************


#!/bin/bash

#Get user input for the number, table choice, and order preference<br>

    read -p "Enter a number for the multiplication table you want to see: " numb
    read -p "Do you want the Full table (F) or Partial table (P)? Enter F or P: " ans

#Convert choice to lowercase<br>

    ans=${ans,,}  # Convert choice to lowercase

#Ask for order preference (ascending or descending)<br>

    read -p "Do you want to see the table in Ascending (A) or Descending (D) order? Enter A or D: " sort

#Convert order to lowercase<br>

    sort=${sort,,}  
    if [[ "$ans" == "f" ]]; then
    
#Full table from 1 to 12

    if [[ "$sort" == "a" ]]; then

#Ascending order using C-style loop

        for (( i = 1; i <= 12; i++ ))
        do
            echo "$numb * $i = $((numb * i))"
        done
    elif [[ "$sort" == "d" ]]; then

#Descending order using C-style loop

        for (( i = 12; i >= 1; i-- ))
        do
            echo "$numb * $i = $((numb * i))"
        done
    else
        echo "Invalid sorting selected! Please enter A or D."
    fi
    elif [[ "$ans" == "p" ]]; then

#Ask for starting and ending numbers for partial table

    read -p "Enter the starting number: " start
    read -p "Enter the ending number: " end

#Check for improper range

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

#Partial table based on user's specified range and order

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

![image](https://github.com/user-attachments/assets/0ea95970-4a4c-41b8-a9a8-89b1fff405e4)

