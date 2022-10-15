#!/bin/bash

if [[(($2 -lt $1))]]
then
   inicio=$2
   fin=$1
else
inicio=$1
fin=$2
fi

odds=0
mult3=0

suma_odd(){
   ((odds+=$element))
}

count_mult3(){
   ((mult3+=1))
}

if [[(($inicio -lt 100))]]
then
   echo "El numero $inicio es menor al rango permitido, el numero ingresado tiene que ser mayor a 99 y menor a 1001"
   exit 0
fi

if [[(($inicio -gt 1000))]]
then
   echo "El numero $inicio es mayor al rango permitido, el numero ingresado tiene que ser menor a 1001 y mayor a 99"
   exit 0
fi

if [[(($fin -lt 100))]]
then
   echo "El numero $fin es menor al rango permitido, el n�mero ingresado tiene que ser mayor a 99 y menor a 1001"
   exit 0
fi

if [[(($fin -gt 1000))]]
then
   echo "El numero $fin es mayor al rango permitido, el n�mero ingresado tiene que ser menor a 1001 y mayor a 99"
   exit 0
fi


for ((element=inicio;element<=fin;element++))
do
   if [[ (($(( $element % 2)) == 1 )) ]]
   then
      suma_odd 
   fi
   
   if [[ (($(( $element % 3)) == 0 )) ]]
   then 
   count_mult3
   fi
done

echo "La suma de los numeros impares en la secuencia de $inicio a $fin es de: $odds"
echo "El numero de elementos m�ltiplos de 3 en la secuencia de $inicio a $fin es de: $mult3"
