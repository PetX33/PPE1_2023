#!/usr/bin/env bash

#pour accepter *, en lançant le script mettre \* comme argument
Year="$1"
Month="$2"
NumLines="$3"

cat ./ann/$Year/$Month/*.ann | grep Location | cut -f 3 | sort | uniq -c | sort -nr | head -n "$NumLines"