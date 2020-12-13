#! /bin/bash
# Reproduction d'un echiquier en shell
#  for i in {0..7}
#      do
#         for j in {0..7}
#             do
#                 l=$(((i+j)%2))
#                 if [ $l -eq 0 ]
#                 then
#                     printf "\e[48;5;16m  \e[0m" 
#                 else
#                     printf "\e[48;5;7m  \e[0m"
#                 fi
#            done;
#            echo  
#      done;
#  exit 0;
echo 'Entrez la dimension "n" de votre échiquier (n case par n case): '
read L
echo
for ((i=1;i<=$L;i++))
do
	for ((j=1;j<=$L;j++))
	do
		l=$(((i+j)%2))
		if [ $l -eq 0 ]
		then
			 printf "\e[48;5;7m  \e[0m" # white
		else
			 printf "\e[48;5;16m  \e[0m" # black
		fi
	done
	echo
done
echo
exit 0;
