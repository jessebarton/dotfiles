#!/bin/bash

Usage () {
	echo "Type in a server name"
	exit 1
}

if [ -z $1 ]; then
	Usage
fi

ARG=$1

case $ARG in
	servername)
        xfreerdp /u:'domain\user' /v:ip /dynamic-resolution
        ;;
	*)
		echo "Sorry, the options you provided do no match."
		Usage
		;;
esac
