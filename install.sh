if [ -d ~/bin ] ; then
	if [ -e ~/bin/crconn ] ; then
		echo -e "Already installed!!"
	else
		cd ~/bin
		ln -s "$OLDPWD/exec.sh" crconn
		cd "$OLDPWD"
		chmod +x exec.sh
		echo -e "Install Success. Restart the shell to use 'crconn' to sign into CyberRoam."
	fi
else
	mkdir ~/bin
	cd ~/bin
	ln -s "$OLDPWD/exec.sh" crconn
	cd "$OLDPWD"
	chmod +x exec.sh
	echo -e "Install Success. Restart the shell to use 'crconn' to sign into CyberRoam."
fi

