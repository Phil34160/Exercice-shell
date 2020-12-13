#!/bin/bash
#Menu interactif
echo
sed -n '/^#/'p menu.txt #recup l'affichage du menu
echo "Choisissez les éléments ci-dessus afin de constituer la carte du jour (obligatoirement 1 de chaque), puis appuyer sur q pour terminer :"
while [ $choices!=q ]; 
do
read choices;
case $choices in
    1 ) sed -n 18p menu.txt; e=`sed -n 18p menu.txt`;pe=12;; #les variables prix seront affectées par le choix des cas
    2 ) sed -n 19p menu.txt; e=`sed -n 19p menu.txt`;pe=8;;
    3 ) sed -n 20p menu.txt; e=`sed -n 20p menu.txt`;pe=3;;
    4 ) sed -n 24p menu.txt; p=`sed -n 24p menu.txt`;pp=17;;
    5 ) sed -n 25p menu.txt; p=`sed -n 25p menu.txt`;pp=23;;
    6 ) sed -n 26p menu.txt; p=`sed -n 26p menu.txt`;pp=27;;
    7 ) sed -n 28p menu.txt; p=`sed -n 28p menu.txt`;pp=5;;
    8 ) sed -n 33p menu.txt; d=`sed -n 33p menu.txt`;pd=9;;
    9 ) sed -n 34p menu.txt; d=`sed -n 34p menu.txt`;pd=1;;
    10 ) sed -n 39p menu.txt; b=`sed -n 39p menu.txt`;pb=3;;
    11 ) sed -n 40p menu.txt; b=`sed -n 40p menu.txt`;pb=8;;
    q ) clear;break;;
esac
done
echo "Carte du jour : "; echo; #affichage de la carte du jour
sed -n '13,17p' menu.txt;
echo "$e";
sed -n '21,23p' menu.txt;
echo "$p";
sed -n '30,32p' menu.txt;
echo "$d";
sed -n '36,38p' menu.txt;
echo "$b";
sed -n '41,42p' menu.txt;

echo "Séléctionnez la quantité de plats :";
read -n2 -p "Nbre d'entrée: " qe;
read -n2 -p "Nbre de plats: " qp;
read -n2 -p "Nbre de desserts: " qd;
read -n2 -p "Nbre de boissons: " qb;clear;
echo -e "\nRecap des quantités choisies :"
echo "Entrées : $qe"
echo "Plats : $qp"
echo "Desserts : $qd"
echo "Boissons : $qb"
clear;
echo "Appuyer sur 1 afin d'obtenir votre note ou 2 pour annuler: ";
euro=€;
read note
case $note in #calcul non factorisé de la TVA !
    1 ) total=`echo "(($pe*$qe)+($pp*$qp)+($pd*$qd)+($pb*$qb))" | bc -l | sed "s/\,/./g"`;
        total1=`echo "$total*11.67" | bc -l | sed "s/\,/./g"`;
        total2=`echo "$total1/100" | bc -l | sed "s/\,/./g"`;
        notefinale=`echo "$total + $total2" | bc -l | sed "s/\,/./g"`;
        x=`echo "$notefinale" | sed "s/\([0-9]*\.[0-9][0-9]\).*/\1/"`;
        echo "Votre facture s'élève à : $x €";;
    2 ) exit 0;;
esac;
