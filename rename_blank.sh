#!/bin/bash
# 
# Change blanks to _ recursively
#
# Requirements:
# * larry walls rename perl script (which should be named rename.pl)

find . -type d | tac | while read line
do
	echo jumping to $line
	cd "$line"
	rename_perl.pl "s/ /_/g" *
	echo jumping back
	cd -
done
