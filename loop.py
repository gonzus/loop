print(f'--------------------------');

top = 20000
expected = top * top;
print(f'Python: running up to {top} ({expected}) iterations');

total = 0;
for i in range(top):
    for j in range(top):
        total += 1
print(f'{"OK" if total == expected else "BAD"}')
