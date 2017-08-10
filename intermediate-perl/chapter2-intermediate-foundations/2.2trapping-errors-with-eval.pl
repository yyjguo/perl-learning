#!/usr/bin/perl
#many lines of ordinary code have the potential to terminate a program prematurely if something goes wrong.

#perl uses the eval operator as its error-trapping mechanism
eval { $average = $total / $count };

#if the code in the block fails, no value is returned; this gives undef in a scalar context, or an empty list in a list context.thus,another way to calculate an average safely looks like this
my $average = eval{ $total / $count };

# eval can't trap the most serious of errors. eval doesn't catch syntax errors. it doesn't catch warning either