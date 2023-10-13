#!/usr/bin/env bash

echo "Locations en 2016" > locations.txt
cat ./ann/2016/*/*.ann | grep Location | wc -l >> locations.txt
echo "Locations en 2017" >> locations.txt
cat ./ann/2017/*/*.ann | grep Location | wc -l >> locations.txt
echo "Locations en 2018" >> locations.txt
cat ./ann/2018/*/*.ann | grep Location | wc -l >> locations.txt
