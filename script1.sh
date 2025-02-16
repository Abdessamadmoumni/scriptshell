#!/bin/bash
deploy()
{
local source=$1 
local target=$2  
find $source -mindepth 1 -maxdepth 1 ! -name "config.json" -exec cp -r {} ./$target \;
    echo " copy done de dev vers $target "
}
 dev="./project/dev"
 prod="./project/prod"
 staging="./project/staging"
read -p "pour copy de dev vers staging tapez 0 ,et de stagins vers prod tapez 1 : " valeur
if [ $valeur -eq 0 ]; then 
deploy $dev $staging
elif [ $valeur -eq 1 ]; then
deploy $staging $prod
else
echo " valeur invalid just 0 ou 1 pour copy "

 fi
