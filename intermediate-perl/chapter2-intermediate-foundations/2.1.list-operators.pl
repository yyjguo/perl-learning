#!/usr/bin/perl
my @odd_digit_sum = grep digit_sum_is_odd($_),@input_numbers;
sub digit_sum_is_odd {
    my $input = shift;
    my @digits = split //, $input; #assume no nondigit characters
    my  $sum;
    $sum += $_ for @digits;
    return $sum % 2;
}
#now there is the block form. Rather than define an explicit subroutine that we'd use for only a single test, we can put the body of a subroutine directly in line in the grep operator, using the block forms:[*]
my @res = grep {
    block;
    of;
    code;
}

#like all testing expression, it's evaluated in a scalar context. we would have been wrong to keep the return because we're no longer in a separate subroutine
my @odd_digit_sum = grep {
    my $input = $_;
    my @digits = split //, $input; #assume no nondigit characters
    my $sum;
    $sum += $_ for @digits;
    $sum % 2;
} @input_numbers;

#we can optimize a few things out of that routine since we don't need the intermediate variables;
my @odd_digit_sum = grep {
    my $sum;
    $sum += $_ for split //;
    $sum % 2;
} @input_numbers;

#feel free to crank up the explicitness if it helps you and your coworkers understand and maintain the code. that's the main thing that matters.

#!/usr/bin/perl
# let's start with a simple example 
#for each of the seven items map places into $_
my @input_numbers = (1,2,4,8,16,32,64);
my @result = map $_ + 100, @input_numbers;

# let's see what happens when each input produces two output items
my @result = map { $_, 3 * $_ } @input_numbers;

# we can store those pairs in a hash, if we need a hash showing what number is three times a small power of two:
my %hash = @result;

# or, without using the intermediate array from the map
my %hash = map { $_, 3 * $_ } @input_numbers;

# map is pretty versatile; we can produce any number of output items for each input item.we end up with 1,2,4,8,1,6,3,2,6,and 4.
my @result = map { split //, $_ } @input_numbers;

# suppose we want only the split digits of numbers ending in 4
my @res = map {
    my @digits = split //, $_;
    if ($digits[-1] == 4){
        @digits;
    }else {
        ( );
    }
} @input_numbers;



