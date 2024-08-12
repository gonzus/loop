first: run

loop: loop.c
	cc -O -o loop loop.c

run: C node php perl python

C: loop
	time ./loop

node:
	time node loop.js

php:
	time php loop.php

perl:
	time perl loop.pl

python:
	time python3 loop.py

clean:
	rm -f loop *.o

.DUMMY = clean
