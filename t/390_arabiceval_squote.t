# This file is encoded in Char::Arabic.
die "This file is not encoded in Char::Arabic.\n" if q{��} ne "\x82\xa0";

use Char::Arabic;

print "1..12\n";

# Char::Arabic::eval '...' has Char::Arabic::eval "..."
if (Char::Arabic::eval ' Char::Arabic::eval " if (Char::Arabic::length(q{�����������������������������������������������}) == 47) { return 1 } else { return 0 } " ') {
    print qq{ok - 1 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 1 $^X @{[__FILE__]}\n};
}

# Char::Arabic::eval '...' has Char::Arabic::eval qq{...}
if (Char::Arabic::eval ' Char::Arabic::eval qq{ if (Char::Arabic::length(q{�����������������������������������������������}) == 47) { return 1 } else { return 0 } } ') {
    print qq{ok - 2 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 2 $^X @{[__FILE__]}\n};
}

# Char::Arabic::eval '...' has Char::Arabic::eval '...'
if (Char::Arabic::eval ' Char::Arabic::eval \' if (Char::Arabic::length(q{�����������������������������������������������}) == 47) { return 1 } else { return 0 } \' ') {
    print qq{ok - 3 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 3 $^X @{[__FILE__]}\n};
}

# Char::Arabic::eval '...' has Char::Arabic::eval q{...}
if (Char::Arabic::eval ' Char::Arabic::eval q{ if (Char::Arabic::length(q{�����������������������������������������������}) == 47) { return 1 } else { return 0 } } ') {
    print qq{ok - 4 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 4 $^X @{[__FILE__]}\n};
}

# Char::Arabic::eval '...' has Char::Arabic::eval $var
my $var = q{ if (Char::Arabic::length(q{�����������������������������������������������}) == 47) { return 1 } else { return 0 } };
if (Char::Arabic::eval ' Char::Arabic::eval $var ') {
    print qq{ok - 5 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 5 $^X @{[__FILE__]}\n};
}

# Char::Arabic::eval '...' has Char::Arabic::eval (omit)
$_ = "if (Char::Arabic::length(q{�����������������������������������������������}) == 47) { return 1 } else { return 0 }";
if (Char::Arabic::eval ' Char::Arabic::eval ') {
    print qq{ok - 6 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 6 $^X @{[__FILE__]}\n};
}

# Char::Arabic::eval '...' has Char::Arabic::eval {...}
if (Char::Arabic::eval ' Char::Arabic::eval { if (Char::Arabic::length(q{�����������������������������������������������}) == 47) { return 1 } else { return 0 } } ') {
    print qq{ok - 7 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 7 $^X @{[__FILE__]}\n};
}

# Char::Arabic::eval '...' has "..."
if (Char::Arabic::eval ' if (Char::Arabic::length(q{�����������������������������������������������}) == 47) { return "1" } else { return "0" } ') {
    print qq{ok - 8 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 8 $^X @{[__FILE__]}\n};
}

# Char::Arabic::eval '...' has qq{...}
if (Char::Arabic::eval ' if (Char::Arabic::length(q{�����������������������������������������������}) == 47) { return qq{1} } else { return qq{0} } ') {
    print qq{ok - 9 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 9 $^X @{[__FILE__]}\n};
}

# Char::Arabic::eval '...' has '...'
if (Char::Arabic::eval ' if (Char::Arabic::length(q{�����������������������������������������������}) == 47) { return \'1\' } else { return \'0\' } ') {
    print qq{ok - 10 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 10 $^X @{[__FILE__]}\n};
}

# Char::Arabic::eval '...' has q{...}
if (Char::Arabic::eval ' if (Char::Arabic::length(q{�����������������������������������������������}) == 47) { return q{1} } else { return q{0} } ') {
    print qq{ok - 11 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 11 $^X @{[__FILE__]}\n};
}

# Char::Arabic::eval '...' has $var
my $var1 = 1;
my $var0 = 0;
if (Char::Arabic::eval ' if (Char::Arabic::length(q{�����������������������������������������������}) == 47) { return $var1 } else { return $var0 } ') {
    print qq{ok - 12 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 12 $^X @{[__FILE__]}\n};
}

__END__
