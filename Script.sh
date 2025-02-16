#!/bin/bash
 #proj="./project/"
#file="./project/*"
# if grep -q "config.json" "$proj" ; then

 dev="./project/dev"
 prod="./project/prod"
 staging="./project/staging"

# for file in $proj; do 
#  if [ -f "$file" ]; then

# cf="/config.json"
# while [ ! -d "$cf" ]; do
#    if [ -d "$dev" ]; then
#     if [ -d "$prod" ]; then
#      if [ -d "$staging" ]; then

read -p "pour copy de dev vers staging tapez 0 ,et de stagins vers prod tapez 1 : " valeur
if [ $valeur -eq 0 ]; then 
find $dev -mindepth 1 -maxdepth 1 ! -name "config.json" -exec cp -r {} ./$staging \;
          echo " copy done de dev vers staging "

elif [ $valeur -eq 1 ]; then
find $staging -mindepth 1 -maxdepth 1 ! -name "config.json" -exec cp -r {} ./$prod \;

         echo " copy done de staging vers prod "
else
echo " valeur invalid just 0 ou 1 pour copy "

 fi
# done