#!/bin/bash

source ${psxfs['templates']}/default.sh

PS1="$color┌──|$StyleOff $NameOS $hostname$infoField\! $currentDirectory $color|\n└──●$StyleOff "
PS2="$color> $StyleOff"
