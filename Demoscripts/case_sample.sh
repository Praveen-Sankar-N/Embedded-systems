#!/bin/bash

read -p "enter a value" var

case $var in

    1) 
        echo "you have entered 1"
        ;;

    2) 
        echo "you have entered 2"
        ;;

    string) 

        echo "you entered string"
        ;;

    *) 
        echo "no match found"
        ;;

esac


