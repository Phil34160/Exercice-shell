#!/bin/bash
#exo compare chaine avec fonction
echo -e "Entrez 3 chaines de caractères qui seront passées en argument dans la fonction test\n"
echo -e "entrez votre 1ere chaine : \n"; read a
echo -e "\nentrez votre 2eme chaine : \n"; read b
echo -e "\nentrez votre 3eme chaine : \n"; read c
a1="${a// }"
b1="${b// }"
c1="${c// }"
function test (){
if [ -z "$1" -o -z "$2" -o -z "$3" ]
    then
        echo -e "\nVeuillez ne laisser aucune(s) chaine(s) vide(s) !";
    elif [ $1 != $2 -a $1 != $3 -a $2 != $3 ] # les opérateurs -a / -o ne sont pas compatibles avec ==
        then
            echo -e "\nVos 3 chaines ne sont pas équivalentes !";
                elif [ $1 == $2 -a $2 != $3 ]  
                    then
                        echo -e "\nVos chaines 1 et 2 sont identiques !";
                            elif [ $1 == $3 -a $2 != $1 ]
                                then
                                    echo -e "\nVos chaines 1 et 3 chaines sont identiques !";
                                        elif [ $2 == $3 -a $1 != $3 ]
                                            then 
                                                echo -e "\nVos chaines 2 et 3 sont identiques !";
                                                    else
                                                        echo -e "\nVos 3 chaines sont identiques !";
fi
}
test $a1 $b1 $c1
exit 0;