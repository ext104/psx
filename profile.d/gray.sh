#!/bin/bash

source ${psxfs['templates']}/gray.sh

EmptyColor="\e[1;100m"
altPWD="\$(source /home/main/psx/datacollector.d/pwd4.bash)"
kubeContext="\$(source /home/main/psx/datacollector.d/kubecontext.bash)"
pl0="$EmptyColor $StyleOff\e[0;90m"$(echo -e "\xee\x82\xb0")"$StyleOff"
pl1="$color "$(echo -e "\xee\x82\xb1")" $StyleOff"


PS1="$EmptyColor $hostname$pl1$infoField$EmptyColor\!$StyleOff$pl1$EmptyColor$kubeContext$StyleOff$pl1$altPWD$pl1$promptSymbol$StyleOff$pl0\n"
PS2="$color> $StyleOff"