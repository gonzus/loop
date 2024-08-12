first: run

TIME=time
# TIME=/usr/bin/time

run: c node php perl python  ## run loop in all supported languages

loop: loop.c
	cc -O -o loop loop.c

c: loop  ## run loop in C
	$(TIME) ./loop

node:  ## run loop in JavaScript (node)
	$(TIME) node loop.js

php:  ## run loop in PHP
	$(TIME) php loop.php

perl:  ## run loop in Perl
	$(TIME) perl loop.pl

python:  ## run loop in Python
	$(TIME) python3 loop.py

clean:  ## clean intermmediate files
	rm -f loop *.o

help:  ## display this help
	@grep -E '^[ a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?# "}; {printf "\033[36;1m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY : first run clean help
