#!/bin/bash

if [[ -f /etc/os-release ]]
then
	psx['OS']=$(cat /etc/os-release | grep 'PRETTY_NAME'| sed -e 's/PRETTY_NAME=//g' | sed -e 's/"//g')
else
	psx['OS']='unknown'
fi
