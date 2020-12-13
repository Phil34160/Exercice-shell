#!/bin/bash
#
#script exo 1
#
function creer {
    mkdir tmp
    touch tmp/myfile.txt
    echo -e "\n\nle fichier "myfile.txt" est créé !"
}
function random {
    for i in {1..10}; do echo $RANDOM >> tmp/myfile.txt; done
    echo -e "\n\nmyfile.txt est maintenant rempli de chiffres sur les 10 premières lignes !"
}
function effacer {
    rm tmp/myfile.txt
    rmdir tmp
    echo -e "\n\nje suis comme neuf !"
}

while [ true ]
do {
    clear; #nettoie ma fenetre de shell
    read -s -n1 -p "c - Créer un fichier 
r - Générer des aléatoires
e - Effacer le fichier 
q - Quitter" choice;
    case "$choice" in
    c ) creer; sleep 2 ;;
    r ) random; sleep 2 ;;
    e ) effacer; sleep 2;;
    q ) echo -e "\n\nAu revoir !"; sleep 2; exit 0;;
    esac
}
done

