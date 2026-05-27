#!/bin/bash
#
# if setup went wrong, delete everything

[[ "$(read -e -p 'Are you sure you want to delete everything? [yes_sure!/NO]> '; echo $REPLY)" == yes_sure! ]] && echo KILLALLNOW || exit

# delete wrong input & output RIA stores + aliases
rm -rf /p/project1/icei-hbp-00000000004/ria-qcworkflow/inputstore/7e4/4fb3c-4741-430e-bb59-b8830301b855
rm -f /p/project1/icei-hbp-00000000004/ria-qcworkflow/inputstore/alias/ds006444-mriqc
rm -rf https://hub.trr379.de/f.hoffstaedter/ds006444-mriqc
rm -f /p/project1/icei-hbp-00000000004/ria-qcworkflow/alias/ds006444-mriqc

# remove faulty dataset 
cd ..
datalad drop --what datasets --reckless kill -r -d ds006444-mriqc
