<?php

printf("--------------------------\n");

$top = 20000;
$expected = $top * $top;
printf("PHP: running up to %d (%d) iterations\n", $top, $expected);

$total = 0;
for ($i = 0; $i < $top; $i++) {
  for ($j = 0; $j < $top; $j++) {
    $total += 1;
  }
}
printf("%s\n", $total == $expected ? "OK" : "BAD");

?>
