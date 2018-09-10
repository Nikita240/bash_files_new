#!/bin/bash
#
#

# ------------------------------------------------------------------------------
# Print external/public IP
# ------------------------------------------------------------------------------
#
extip()
{
	printf "Public IP is: ${BETTER_YELLOW} $_bf_ext_ip"
}


# ------------------------------------------------------------------------------
# Print all 256 bash colors
# Source: http://misc.flogisoft.com/bash/tip_colors_and_formatting
# ------------------------------------------------------------------------------
#
colors()
{
	for fgbg in 38 48 ; do #Foreground/Background
		for color in {0..256} ; do #Colors
			#Display the color
			echo -en "\e[${fgbg};5;${color}m ${color}\t\e[0m"
			#Display 10 colors per lines
			if [ $((($color + 1) % 10)) == 0 ] ; then
				echo #New line
			fi
		done
		echo #New line
	done
}


ansi_colors()
{
	T='gYw'   # The test text
	echo -e "\n                 40m     41m     42m     43m     44m     45m     46m     47m";
	for FGs in '    m' '   1m' '  30m' '1;30m' '  31m' '1;31m' '  32m' '1;32m' '  33m' '1;33m' '  34m' '1;34m' '  35m' '1;35m' '  36m' '1;36m' '  37m' '1;37m';
	    do FG=${FGs// /}
	    echo -en " $FGs \033[$FG  $T  "
	    for BG in 40m 41m 42m 43m 44m 45m 46m 47m;
	        do echo -en "$EINS \033[$FG\033[$BG  $T \033[0m\033[$BG \033[0m";
	    done
	    echo;
	done
	echo
}