#!/bin/bash

EmptyColor="\e[1;100m"

# Получение текущего пути из встроенной переменной
directories=(${PWD//\// })

# Вывод корневой директории "/"
echo -en "$color/\e[m"

# Итерация по массиву директорий, начиная с первого элемента
for (( i=0; i<${#directories[@]}; i++ ))
do
    # Пропуск пустых элементов (например, для корня)
    [ -z "${directories[$i]}" ] && continue

    # Вычисление альтернативного пути
    alterCD="$(( ${#directories[@]} - i))"
    alterCD=$([ $alterCD -gt 0 ] && echo ".$alterCD" || echo "")

    # Вывод пути
    echo -en "$EmptyColor${directories[$i]}$StyleOff$color${alterCD}\e[m$color/\e[m"
done
echo
