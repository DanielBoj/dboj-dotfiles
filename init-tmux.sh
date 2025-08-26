#!/bin/bash
# Tmux session intialization script
# Author: dboj
# Date: 2025-08-02
# Update: 2025-02-08
# Version: 0.2

if [[ -z $TMUX ]]; then
	echo "Starting tmux session..."
	
	sleep 1

	if tmux has-session -t dboj 2>/dev/null; then
		echo "Session 'dboj' already exists. Do you want to attach to it? (y/n)"
		read -r answer
		if [[ $answer == "y" || $answer == "Y" ]]; then
			tmux attach -t dboj
			exit 0
		else
			echo "Creating a new session..."
			tmux new -n main
		fi
	else
		tmux new -s dboj -n main
	fi
fi

