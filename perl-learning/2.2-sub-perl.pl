#!/usr/bin/perl
$a =10;
sub getAge{
    if ($a == 10){
        print "$a\n";
    }
}
getAge();

sub Average {
    $n = @_;
    # $n = scalar(@_);
    $sum = 0;

    foreach $item (@_){
        $sum = $sum + $item;
    }
    $average = $sum / $n;
    print '传入的参数为: ',"@_\n";
    print "第一个参数的值为: $_[0]\n";
    print "传入参数的平均值为: $average\n";

}
Average(10,20,30);

sub PrintList {
    @list = @_;
    print "列表为: @list\n";
}
$a = 10;
@b = (1,3,4,5);
PrintList($a,@b);


sub PrintHash {
    %hash = @_;
    foreach $keys (keys %hash){
        $values = $hash{$keys};
        print "$keys : $values\n";

    }
}
%hash = ('name'=>'afanail','age'=>23);

PrintHash(%hash);

#如果没有使用 return 语句，则子程序的最后一行语句将作为返回值。
sub add_a_b {
    # 不使用 return
    $_[0] + $_[1];    
}
print add_a_b(1,3),"\n";


#私有变量

sub somefun {
    my $variable; #私有变量
    my ($another,@an_arr,%a_hash);

}

$string = "Hello,World!";

sub Hello{
    my $string;
    $string = "Hello,afanail";
    print "$string\n";
}
Hello();
print "$string\n";

# local 变量的临时赋值

$string = "hello,world";
sub printAfanil {
    local $string;
    $string = "hello,afanial";
    printMe();
    print "$string\n";
}
sub printMe{
    print "$string\n";
}
printAfanil();

# 静态变量
use feature 'state';
sub PrintCount {
    state $count = 0;
    print "counter 值为: $count\n";
    $count++;
}
# for (1..5){
#     PrintCount();
# }
for ($i = 1; $i<=5;$i++){
    PrintCount();
}

# 子程序调用过程中，会根据上下文来返回不同类型的值，比如以下 localtime() 子程序，在标量上下文返回字符串，在列表上下文返回列表:
$datestr = localtime();
print $datestr,"\n";

($sec,$min,$hour,$mday,$mon, $year,$wday,$yday,$isdst) = localtime(time);
printf("%d-%d-%d %d:%d:%d",$year+1990,$mon+1,$mday,$hour,$min,$sec);
