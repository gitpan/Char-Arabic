# This file is encoded in Char::Arabic.
die "This file is not encoded in Char::Arabic.\n" if q{��} ne "\x82\xa0";

use Char::Arabic;
print "1..1\n";

my $__FILE__ = __FILE__;

eval q< '-' =~ /(*��)/ >;
if ($@) {
    print "ok - 1 $^X $__FILE__ die ('-' =~ /*��/).\n";
}
else {
    print "not ok - 1 $^X $__FILE__ die ('-' =~ /*��/).\n";
}

__END__
