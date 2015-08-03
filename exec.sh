if [ -e "/tmp/CyberClient.*" ] ; then 
	rm "/tmp/CyberClient.*"
fi

if [ ! -e CR_ID.txt ] ; then
	echo -n "ID (f20**###):"; read CR_ID;
	echo -n "$CR_ID" >  CR_ID.txt
	unset CR_ID
fi


if [ ! -e ~/CyberClient.conf ] ; then
	CR_IP="172.16.0.30" #default is of BITS Hyderabad
	echo -n "Password :"; read CR_PSSWD;
	CR_ID=`cat CR_ID.txt`
	echo -e "$CR_IP\n$CR_PSSWD\ny" | ./crclient -u $CR_ID -i lo > /dev/null #using /dev/null suppresses output from stdout, except from stderr
	RET=$?
	unset CR_IP
	unset CR_PSSWD
	unset CR_ID
	exit $RET;
fi


./crclient -u `cat CR_ID.txt` -i lo > /dev/null
exit $?
