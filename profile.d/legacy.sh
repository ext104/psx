#!/bin/bash

source ${psxfs['templates']}/default.sh

PS1="$hostname$infoField\! $currentDirectory $promptSymbol"
PS2="$color> $StyleOff"
