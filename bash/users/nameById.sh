#!/bin/bash
	who-has-uid() { perl -e 'print +(getpwuid('$1'))[0], "\n"'; }
	who-has-uid 0
#root
	who-has-uid 1
#daemon