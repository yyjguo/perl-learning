#!/usr/bin/perl
=pod 引用
引用就是指针，Perl 引用是一个标量类型可以指向变量、数组、哈希表（也叫关联数组）甚至子程序，可以应用在程序的任何地方。
定义变量的时候，在变量名前面加个\，就得到了这个变量的一个引用，比如:
=cut
# 取消引用
$var = 10;
$a = \$var;
print "$a\n";
print "$var 为 :",$$a,"\n";

#循环引用
my $foo = 100;
$foo = \$foo;
print $$foo,"\n";

sub Hash {
    my (%hash) = @_;
    foreach $item (%hash){
        print "元素: $item\n";
    }
}
%hash = ('name'=>'afanail','age'=>23);

$p = \&Hash;
&$p(%hash);