#!/usr/bin/perl

# there is a second form of eval, whose parameter is a string expression instead of a block.

eval '$sum = 2 + 2';
print "The sum is $sum\n";

foreach my $operator ( qw(+ - * /)){
    my $result = eval "2 $operator 2";
    print "2 operator 2 is $result\n";
}
#if the eval can't properly compile and run the perl code we hand it, it sets $@ just like in its block form. 
print 'The quotient is',eval '5/',"\n";
warn $@ if $@;