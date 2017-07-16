#!/usr/bin/perl

=pod perl 数组
数组是一个存储标量值的无序列表变量
=cut

@hits = (25,26,27);
@names = ('google','twitter','facebook');

print "\$hit[0] = $hits[0]\n";
print "\$hit[1] = $hits[1]\n";

print "\$names[1] = $names[1]\n";

=pod 创建数组
第二个数组使用qw// 运算符，它返回的是字符串列表，
数组元素以空格分隔，当然可以使用多行来定义数组。
=cut


@array = (1,3,'nihao');

@ajk = qw/google
twitter
facebook/;

print "$ajk[1]";


@var_100 = (1..100);
print "@var_100\n";
@var_abc = (a..z);
print "@var_abc\n";

@array = (1,3,4);
$array[50] = 4;

$size = @array;
$max_index = $#array;

print "数组大小：$size\n";
print "最大索引：$max_index\n";

=pod 数组方法
push     将列表的值放到数组的末尾
pop      弹出数组最后一个值，并返回它
shift    弹出数组第一个值，并返回它，
         数组的索引值也依次减一
unshift  将列表放在数组前面，并返回新数组的元素个数。
=cut

@sites = ('google','twitter','snapchat','facebook');
print "1. \@sites = @sites\n";

#在数组末尾添加一个元素
push(@sites,"linkin");
print "2. \@sites = @sites\n";

#在数组开头添加一个元素
unshift(@sites,"weibo");
print "4. \@sites = @sites\n";

#删除数组末尾的元素
pop(@sites);
print "4. \@sites = @sites\n";

#移除数组开头的元素
shift(@sites);
print "5. \@sites = @sites\n";
print "-------\n";
#切割数组
@sites = qw/google taobao qq weibo facebook ui/;

@sites2 = @sites[3,4,5];
@sites3 = @sites[3..5];
print "@sites2\n";
print "@sites3\n";

#替换数组元素
@nums = (1..20);
print "替换前 - @nums\n";
splice(@nums,5,5,21..25);
print "替换后 - @nums\n";

#字符串转化为数组
$string = "afanail";
$string2 = "zheng.jing.fa";
$string3 = "google,taobao,weibo";

@myName = split('',$string);
@myelename = split('.',$string2);
@myelenames = split(',',$string3);
print "@myName\n";
print "@myelename\n";
print "@myelenames\n";

#将数组转化为字符串
@s = (3..8);
@n = qw/zheng jing fa/;
$s = join(',',@s);
$n = join('-',@n);
print "$s\n";
print "$n\n";

#数组排序
@sites = qw(google taobao facebook);
print "排序前: @sites\n";


@sites = sort(@sites);
print "排序后: @sites\n";
#合并数组
@nums = (1,3,(2,4,5,5));
print "nums = @nums\n";

@odd = (1,3,5);
@even = (2,4,6);
@nums = (@odd,@even);
print "nums = @nums\n";

#列表中选择元素
$var = (5,4,3,2,1)[4];
print "var 的值为 = $var\n";

$var1 = (1..20)[1..3];
print "$var1\n";

@list = (5..10)[1..3];
print "@list\n";