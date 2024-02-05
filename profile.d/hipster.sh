#!/bin/bash

source ${psxfs['templates']}/default.sh

altPWD="\$(source /home/main/psx/datacollector.d/pwd3.bash)"
kubeContext="\$(source /home/main/psx/datacollector.d/kubecontext.bash)"

PS1="$hostname$infoField\! $kubeContext $altPWD $promptSymbol"
PS2="$color> $StyleOff"
