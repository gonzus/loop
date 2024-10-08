use strict;
use warnings;

exit main();

sub main {
  printf("--------------------------\n");

  my $top = 20000;
  my $expected = $top * $top;
  printf("Perl: running up to %d (%d) iterations\n", $top, $expected);

  my $total = 0;
  for ( 0 .. $top - 1 ) {
    for ( 0 .. $top - 1 ) {
      $total += 1;
    }
  }
  printf("%s\n", $total == $expected ? "OK" : "BAD");
  return 0;
}
