#!/bin/bash

sty=${STY/*./}	# Имя запущенного screen'а

# Если пользователь root отображать красный цвет
if [[ $(whoami) == "root" ]]
then
	color="\e[1;31;100m"
else
  color="\e[1;35;100m"
fi

EmptyColor="\e[1;100m"

pl0="\e[0;100m $StyleOff\e[0;90m"$(echo -e "\xee\x82\xb0")"$StyleOff"
pl1="$color "$(echo -e "\xee\x82\xb1")" $StyleOff"

# infoField - поле с отключаемыми значениями
if [[ $sty ]]		# Имя screen'а
then
    infoField="$EmptyColor$sty$StyleOff$pl1$color$WINDOW$StyleOff$pl1"
fi

if [[ $note ]]		# Значение заметки
then
    infoField="$EmptyColor$note$StyleOff$pl1$infoField"
fi

if [[ $timeSet ]]	# Установлено ли время
then
    infoField="$EmptyColor"'\t'"$StyleOff$pl1$infoField"
fi

parse_git_branch() {
    git branch 2> /dev/null | sed -e "/^[^*]/d" -e 's/* \(.*\)/\1 \xee\x82\xb1 /'
}

gitbranch="\$(parse_git_branch)"

if [[ $gitbranch ]]
then
    infoField="$color"$gitbranch"$StyleOff$infoField"
fi

hostname="$color`hostname -s`$StyleOff$EmptyColor$Domain$StyleOff"	# Отображение fqdn машины в цвете
currentDirectory="$Underline\w$StyleOff"	# Отображение текущей директории
promptSymbol="$color"'\$'"$StyleOff"		# Символ приглашения строки
