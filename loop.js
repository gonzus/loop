console.log(`--------------------------`);

let top = 20000;
let expected = top * top;
console.log(`Node: running up to ${top} (${expected}) iterations`);

let total = 0;
for (let i = 0; i < top; i++) {
  for (let j = 0; j < top; j++) {
    total += 1;
  }
}
console.log(`${total == expected ? "OK" : "BAD"}`);
