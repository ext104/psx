#!/bin/bash

declare -A psx
psx['color']='\e[1;32m'
psx['StyleOff']='\e[m'
# Сборка массива из имен директорий
IFS='/' read -ra directories <<< `pwd`

# Вывод директории "/" в начале
echo -en '/'

for (( i=1; $i<"${#directories[@]}";i++))
do 
	# Если директория не "." или "..", то альтернативный путь = .n-i, т.е. отсчет с конца
	if [[ $i < $((${#directories[@]}-2)) ]]
	then
		alterCD="$((${#directories[@]}-$i))"
	
	# Если директория "..", то назначить альтернативный путь "."
	elif [[ $i == $((${#directories[@]}-2)) ]]
	then
		alterCD="."
	
	# Если директория ".", то назначить альтернативный путь ""
	else
		alterCD=""
	fi

	# Вывод пути в формате dir1[.n]/di2[..]/di3[.]
	echo -en "${directories[$i]}${psx['color']}[.$alterCD]${psx['StyleOff']}/"
	# Пример с учетом вывода "/" в начале - /dir1[.10]/dir2[.9]/dir3[.8]/dir4[.7]/dir5[.6]/dir6[.5]/dir7[.4]/dir8[.3]/dir9[..]/dir10[.]
done
echo -e '\n\n\n\n\n\n\n\n'
