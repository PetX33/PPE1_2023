#!/usr/bin/env bash

TEXT=$1

while read -r LINE
do
    grep -oE '\w+' $LINE | tr '[:upper:]' '[:lower:]'
done < "$1"