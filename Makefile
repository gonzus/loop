first: run

TIME=time
# TIME=/usr/bin/time

loop: loop.c
	cc -O -o loop loop.c

run: c node php perl python

c: loop
	$(TIME) ./loop

node:
	$(TIME) node loop.js

php:
	$(TIME) php loop.php

perl:
	$(TIME) perl loop.pl

python:
	$(TIME) python3 loop.py

clean:
	rm -f loop *.o

.DUMMY = clean
