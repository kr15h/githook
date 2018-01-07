#!/bin/bash

PULL_REQ_DIR=[ABSOLUTE PATH TO YOUR GITHOOK DIRECTORY]/pool
PULL_REQ_FILE=pull
HUGO_DIR=[ABSOLUTE PATH TO DIRECTORY CONTAINING HUGO CODE]
WEB_DIR=[ABSOLUTE PATH TO PUBLIC WEBSERVER DIRECTORY]

if [ -f $PULL_REQ_DIR/$PULL_REQ_FILE ]
then
	rm -f $PULL_REQ_DIR/$PULL_REQ_FILE ]
	cd $HUGO_DIR

	# Pull from origin
	git reset --hard
	git pull origin master

	# Compile html website and output it to htdocs
	hugo -d ../htdocs/

	unset PULL_REQ_DIR
	unset PULL_REQ_FILE
	unset WEB_DIR
	unset HUGO_DIR
fi
