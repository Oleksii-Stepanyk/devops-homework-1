#!/bin/bash

add() {
    echo "Enter name"
    read name
    echo "Enter number"
    read number
    echo "Enter email"
    read email
    echo "$name $number $email" >> $HOME/homework/book.txt
    echo "Contact added."
}

search() {
    echo "Enter data"
    read data
    grep "$data" $HOME/homework/book.txt || echo "No contact found."
}

remove() {
    echo "Enter data"
    read data
    grep -v "$data" $HOME/homework/book.txt > tmp.txt && mv tmp.txt $HOME/homework/book.txt
}

touch $HOME/homework/book.txt
if [[ "$1" == "add" ]]; then add
elif [[ "$1" == "search" ]]; then search
elif [[ "$1" == "remove" ]]; then remove
fi