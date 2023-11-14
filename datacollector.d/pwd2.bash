#!/bin/bash

if [[ $(whoami) != 'root' ]]
then
	Color='\e[1;35m'
else
	Color='\e[1;31m'
fi

# Получение текущего пути из встроенной переменной
directories=(${PWD//\// })

# Вывод корневой директории "/"
echo -n "/"

# Итерация по массиву директорий, начиная с первого элемента
for (( i=0; i<${#directories[@]}; i++ ))
do
    # Пропуск пустых элементов (например, для корня)
    [ -z "${directories[$i]}" ] && continue

    # Вычисление альтернативного пути
    alterCD="$(( ${#directories[@]} - i - 1 ))"
    alterCD=$([ $alterCD -gt 0 ] && echo ".$alterCD" || echo "")

    # Вывод пути
    echo -en "${directories[$i]}$Color${alterCD}\e[m/"
done
echo
