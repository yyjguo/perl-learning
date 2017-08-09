#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';
=pod 字符串与排序
正则表达式引擎对你而言可能太过花哨，
多数时候只需要简单的字符串处理功能；

用index查找子字符串：
查找子字符串其实也就是要找出它在主字符串中的相对位置。

可以用rindex函数来取得子字符最后出现的位置，他会从最后的位置开始查找。他也有三个参数，最后一个参数用来限定返回值的上限；

用substr操作子字符串：substr函数只处理较长字符串中的一小部分内容

用sprintf格式化字符串：与printf有相同的参数，可选的文件句柄参数除外，但它返回的是所请求的字符串，而不会直接打印出来。
=cut
# index 例子
my $stuff = "Howdy world!";
my $where = index($stuff, "wor");
print $where, "\n";

my $where1 = index($stuff, "w");#$where => 2
my $where2 = index($stuff, "w", $where1 + 1); #$where2 => 6
my $where3 = index($stuff, "w", $where2 + 1); #where3为-1（没找到）；

#rindex 例子
my $fred = "Yabba dabba doo!";
my $where1 = rindex($fred, "abba");#$where1 为 7
my $where2 = rindex($fred, "abba", $where1 - 1); #$where2 为 1
my $where3 = rindex($fred, "abba", $where2 - 1); #where3 为 -1

#substr 操作子字符串
my $mineral = substr("Fred J. Flintstone", 8, 5); #返回"Flint"；
my $rock = substr "Fred J. Flintstone", 13, 10000; #返回stone
my $pebble = substr "Fred J.Flintstone", 13;
my $bule = substr "Fred J Flintstone", 3, 5, "adf";

#$date_tag 会得到类似"2038/01/19 3:00:08"的结果，如果格式前面没有置零，那么日期与时间字符串里面的数字就不会用零补足宽度，而只留下相应长度的空格。
my $date_tag = sprintf "%4d/%02d/%02d%2d:%02d:%02d", $yr, $mo, $da, $h, $m, $s;

#用sprintf格式化金额数字
my $money = sprintf "%.2f", 2.499997;

#模式开头的减号有什么用处？为什么不用/g修饰符来进行全局查找与替换？
sub big_money {
    my $number = sprintf "%.2f", shift @_;
    1 while $number =~ s/^(-?\d+)(\d\d\d)/$1,$2/;
    $number =~ s/^(-?)/$1\$/;
    $number;
}

#非十进制的数字字符的转换
hex('DEADBEEF');  #十进制的3_735_928_559
hex('0xDEADBEEF'); #十进制的3_735_928_559

oct('0377'); #十进制的255
oct('377');#十进制的255
oct('0xDEADBEEF');#十进制的3_735_928_559
oct('0b1101');#十进制的13
oct('0b$bits');#将变量$bits中的二进制数字转换到十进制

#高级排序 排序子程序是只是用来说明具体的规则 只要能比较俩个元素就行
sub any_sort_sub {#实际上这么写不能正确工作,这里只是为了方便说明问题
    my ($a, $b) = @_; #声明俩个变量并给他们赋值
    #在这里开始比较$a $b
    #...
}

# Perl排序子程序内部$a $b自动赋值好了 $a $b是俩个来自原始列表的元素
sub by_number {
    #排序子程序,使用$a $b和这俩个变量进行比较
    if ($a < $b) {-1}
    elsif ( $a < $b) {1}
    else {0}
}

#要使用这个子程序 把他的名称写在sort关键字与待排序的列表之间
my @res = sort by_number @some_numbers;

#飞碟操作符 <=> 只能用来比较数字 , 三路字符串比较操作符 cmp
sub by_number { $a <=> $b }
sub by_code_point { $a cmp $b }
#cmp 可以用来创建更复杂的排序顺序,例如不区分大小写
sub case_insensitive { "\L$a" cmp "\L$b"}

#如果排序子程序像我们的例子一样简单,只要把整个子程序内嵌到排序子程序名的位置就行了
my @numbers = sort {$a <=> $b} @some_numbers;
my @descending = reverse sort { $a <=> $b} @some_numbers;
my @descending = sort {$b <=> $a}@some_numbers;

#按哈希值排序
sub by_core { $score{$b} <=> $score{$a}}
my %score = ("barney"=> 195, "fred"=> 205,"dino"=> 30);
my @winners = sort by_core keys %score;

#按多个键排序
my %score = (
    "barney"=>195,"fred"=>205,
    "dino"=>30,"bamm-bamm"=>195,
);
sub by_score_and_name {
            $score{$b} <=> $score{$a} #根据分数降序排列
                or
                $a cmp $b #分数相同的再按名字的ASCII排序
        }
my @winners = sort by_score_and_name keys %score;

#五级排序
@patron_IDs = sort {
    $fines($b) <=> $fines($a) or
    $items{$b} <=> $items{$a} or
    $family_name{$a} cmp $family_name{$b} or
    $personal_name{$a} cmp $family_name{$b} or
    $a <=> $b
} @patron_IDs;

