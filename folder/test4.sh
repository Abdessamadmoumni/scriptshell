#!/bin/bash
compteur=2
while [ $compteur -le 3 ]; do
echo "compteur:$compteur"
((compteur++))
done