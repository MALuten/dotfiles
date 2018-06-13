#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc


#Door Mees
export LANG=en_US.UTF-8

export TERM=rxvt-unicode
#export TERM='urxvt +sb'

if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
	echo "X start in:"
	for x in {3..0}; do
	        sleep .25
        echo -e "\t" $x
	done
	exec startx

fi
