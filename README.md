## Loop speed test for some languages

To run all supported languages:
```
make run
```

To run a specific set of supported languages:
```
make c php
```

To get help:
```
make help
```

Example run on my laptop (Mac M1):
```
$ make run
cc -O -o loop loop.c
time ./loop
--------------------------
C: running up to 20000 (400000000) iterations
OK
        0.22 real         0.00 user         0.00 sys
time node loop.js
--------------------------
Node: running up to 20000 (400000000) iterations
OK
        0.40 real         0.30 user         0.03 sys
time php loop.php
--------------------------
PHP: running up to 20000 (400000000) iterations
OK
        3.46 real         3.36 user         0.01 sys
time perl loop.pl
--------------------------
Perl: running up to 20000 (400000000) iterations
OK
        8.03 real         7.93 user         0.00 sys
time python3 loop.py
--------------------------
Python: running up to 20000 (400000000) iterations
OK
       22.23 real        22.13 user         0.01 sys
```
