#!/bin/bash

source ${psxfs['templates']}/default.sh

altPWD="\$(source /home/main/psx/datacollector.d/pwd2.bash)"

PS1="$hostname$infoField\! $altPWD $promptSymbol"
PS2="$color> $StyleOff"