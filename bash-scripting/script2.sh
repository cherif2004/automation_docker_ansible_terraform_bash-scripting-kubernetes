#! /bin/bash 



echo " bienvenue administrateur système"

read -p "enter the name of your repository : " REPO_URL


    #define the of your image

    read -p "enter the name of your image please : " imageName

    #build of image
    echo " proces of building"
    echo " "
    echo " "
    docker build -t $imageName .
    
    echo " "
    echo " "

    #login 

    echo "proces of login"
    docker login 

    #tag of image

    docker tag $imageName:latest $REPO_URL:latest

    #push 

    docker push  $REPO_URL:latest && echo "votre image a été push avec succès"

   
 


