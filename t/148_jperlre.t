# This file is encoded in Char::Arabic.
die "This file is not encoded in Char::Arabic.\n" if q{あ} ne "\x82\xa0";

use Char::Arabic;
print "1..1\n";

my $__FILE__ = __FILE__;

if ('あ-' =~ /(あ[い-])/) {
    if ("$1" eq "あ-") {
        print "ok - 1 $^X $__FILE__ ('あ-' =~ /あ[い-]/).\n";
    }
    else {
        print "not ok - 1 $^X $__FILE__ ('あ-' =~ /あ[い-]/).\n";
    }
}
else {
    print "not ok - 1 $^X $__FILE__ ('あ-' =~ /あ[い-]/).\n";
}

__END__
