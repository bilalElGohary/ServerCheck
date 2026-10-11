#!/bin/bash

ip=$1
option=$2

if [[ $option == "-c" || $option == "--check" ]]; then
	while true
		do
		if ping -q -c 2 -W 1 $ip > /dev/null; then
			echo "Server (${ip}): Is up."
			break
		else
			echo "Server (${ip}): Is currently down."
		fi
		sleep 2
		done
fi
