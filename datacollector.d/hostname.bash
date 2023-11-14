#!/bin/bash

# FQDN
psx['HostName']=$(hostname)
# Короткое имя
psx['ShortName']=$(hostname -s)
# Доменная часть хостнейма
psx['DomainName']=${psx['HostName']/${psx['ShortName']}/}
