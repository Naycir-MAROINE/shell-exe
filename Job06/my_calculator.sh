
if [ $2 = "+" ];then
   resultat=$(($1 + $3))
   echo "le resulta est egal à : " $resultat
elif [ $2 = "-" ];then
   resultat=$(($1 - $3))
   echo "le resultat est egal à : " $resultat
elif [ $2 = "x" ];then
   resultat=$(($1 * $3))
   echo " le resultat est egal à :" $resultat
elif [ $2 = "/" ];then
   resultat=$(($1 / $3)) 
	echo "le resultat est egal à:" $resultat
fi
