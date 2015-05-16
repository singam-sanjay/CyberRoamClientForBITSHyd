if [ -e "~/bin" ] ; then
	if [ -e "~/bin/crconn" ] ; then
		echo -e "Already installed!!"
	else
		ln -s "$PWD/exec.sh" "~/bin/crconn"
	fi
else
	mkdir ~/bin
	ln -s "~/bin/crconn" "$PWD/exec.sh"
fi

