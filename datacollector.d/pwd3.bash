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
echo -en "$Color/\e[m"

# Итерация по массиву директорий, начиная с первого элемента
for (( i=0; i<${#directories[@]}; i++ ))
do
    # Пропуск пустых элементов (например, для корня)
    [ -z "${directories[$i]}" ] && continue

    # Вывод пути
    echo -en "${directories[$i]}$Color/\e[m"
done
echo
