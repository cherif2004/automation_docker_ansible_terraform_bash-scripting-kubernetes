#!/bin/bash

#Ce script vous aidera à automatiser la creation des fichiers de configurations terraform

echo "1 -  Ce script vous aidera à automatiser la creation des fichiers de configurations terraform"


#nom du module

read -p "quel est le nom que vous souhaiterez donné à votre module :" $moduleName 

#creation des fichiers de configuration


if [ $1 == "[a-z]*" ] ; then
    mkdir -p module/$1
    #on se deplace vers le dossier 

   cd $moduleName

#creation des fichiers

touch main.tf variables.tf  outputs.tf Readme.md 

echo "# $moduleName" > Readme.md 

#affichage d'un message de confirmation à l'utilisateur 

echo "vos fichiers ont été crée avec succès : veuillez changez de nom!" 

else
    
    echo " le nom ne doit pas contenir de majuscule ou d'underscore"
fi





