#/bin/bash

if [ "$1_" = "_" ] ; then
	echo "No file specified"
	exit
fi

echo "Writing $1 to flash"

/Applications/ModusToolbox/tools_2.0/openocd/bin/openocd -s /Applications/ModusToolbox/tools_2.0/openocd/scripts/ -c \
"source /Applications/ModusToolbox/tools_2.0/openocd/scripts/interface/kitprog3.cfg ; transport select swd ; source /Applications/ModusToolbox/tools_2.0/openocd/scripts/target/psoc6.cfg ; psoc6 sflash_restrictions 1 ; program $1 verify exit"
