#! /bin/bash

if ping -c 1 google.com; then
       animate_text() {
    text="you have a working internet connection"
    length=${#text}

    while true; do
        for ((i = 0; i < length; i++)); do
            clear
            printf "%s%s\n" "${text:0:i}" "${text:i:1}"
            sleep 0.1
        done

        for ((i = length - 2; i > 0; i--)); do
            clear
            printf "%s%s\n" "${text:0:i}" "${text:i:1}"
            sleep 0.1
        done
    done
}

animate_text
else 
        animate_text() {
    text="You dont have a working internet connection"
    length=${#text}

    while true; do
        for ((i = 0; i < length; i++)); do
            clear
            printf "%s%s\n" "${text:0:i}" "${text:i:1}"
            sleep 0.1
        done

        for ((i = length - 2; i > 0; i--)); do
            clear
            printf "%s%s\n" "${text:0:i}" "${text:i:1}"
            sleep 0.1
        done
    done
}

animate_text
fi
