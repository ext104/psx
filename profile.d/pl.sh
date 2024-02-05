#!/bin/bash

source ${psxfs['templates']}/default.sh

altPWD="\$(source /home/main/psx/datacollector.d/pwd2.bash)"
kubeContext="\$(source /home/main/psx/datacollector.d/kubecontext.bash)"
pl=$(echo -e "\xee\x82\xb0")
pll=$(echo -e "\xee\x82\xb2")
hostname="\e[0;30;45m fedora\e[m\e[0;97;45m.janna \e[m\e[0;35;43m$pl\e[m"
PS1="$hostname$branch $kubeContext $altPWD $promptSymbol"
PS2="$color> $StyleOff"
