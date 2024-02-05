#!/bin/bash

source ${psxfs['templates']}/default.sh

altPWD="\$(source /home/main/psx/datacollector.d/pwd2.bash)"
kubeContext="$color\$(source /home/main/psx/datacollector.d/kubecontext.bash)$StyleOff"
gitBranch="$color\$(source /home/main/psx/datacollector.d/gitbranch.bash)$StyleOff"

PS1="$hostname$gitBranch $infoField\! $kubeContext $altPWD $promptSymbol"
PS2="$color> $StyleOff"