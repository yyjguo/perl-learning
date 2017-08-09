#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';
=pod 智能匹配与given-when结构
提供的智能匹配操作符和given-when控制结构
use 5.010001; #至少是 5.10.1 版

智能匹配操作符~~  会根据俩边的操作数的数据类型自动判断该用何种方式进行比较或匹配.
智能匹配操作符对不同操作数的处理: \page262 表15-1

given语句 given-when控制结构能够根据given后面的参数执行某个条件对应的语句块

笨拙匹配: 智能匹配操作符用于判断事物是否相同(或者差不多相同),所以在需要比较大小时,就不能用智能匹配了,此时还是直接用传统的比较操作符好了.
=cut

# 替代绑定操作符
print "I found Fred in the name!\n" if $name =~ /Fred/;

say "I found Fred in the name!" if $name ~~ /Fred/;

#替代哈希匹配
my $flag =0;
foreach my $key (keys %names) {
    next unless $key =~ /Fred/;
    $flag = $key;
    last;
}
print "I found a key matching 'Fred'.It was $flag\n" if $flag;

say "I found a key matching 'Fred'" if %names ~~ /Fred/;

say "I found a key matching 'Fred'" if /Fred/ ~~ %names;

#比较俩数组相等,用智能操作符替代
my $equal = 0;
foreach my $index (0..$#names1) {
    last unless $names1[$index] eq $names2[$index];
    $equal++;
}
print "The arrays have the same elements!\n" if $equal == @names2;

say "The arrays have the same elements!" if @names1 ~~ @names2;

my @nums = qw( 1 2 3 27 42 );
my $res = max( @nums );

#多个条目的when匹配,可以将given放到foreach里面循环测试.
foreach my $name (@names) {
    given ($name){
        #...
    }
}
#要遍历多个元素,可以直接省略given,让foreach将当前正在遍历的元素放入它自己的$_里.
foreach  (@names) {
    when ( /fred/i ){say 'Name has fred in it'; continue}
    default { say "I don't see a fred"}
}

