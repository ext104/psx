#!/bin/bash

sty=${STY/*./}	# Имя запущенного screen'а

# Если пользователь root отображать красный цвет
if [[ $(whoami) == "root" ]]
then
	color=$RedColor
fi

# infoField - поле с отключаемыми значениями
if [[ $sty ]]		# Имя screen'а
then
    infoField="$sty:$color$WINDOW$StyleOff:"
fi

if [[ $note ]]		# Значение заметки
then
    infoField="$note:$infoField"
fi

if [[ $timeSet ]]	# Установлено ли время
then
    infoField='\t'" $infoField"
fi

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

infoField="$color\$(parse_git_branch)$StyleOff $infoField"	# Добавление в поле значения branch

hostname="$color`hostname -s`$StyleOff$Domain"	# Отображение fqdn машины в цвете
currentDirectory="$Underline\w$StyleOff"	# Отображение текущей директории
promptSymbol="$color"'\$'"$StyleOff\n"		# Символ приглашения строки
