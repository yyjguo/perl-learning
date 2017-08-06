#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

=pod 用s///进行查找替换
如果匹配失败,则说明什么事情都不会发生,变量也不会受影响

用/g 进行全局替换,s/// 只会进行一次替换,/g修饰符可以让s///进行所有可能的 不重复的替换

不同的定界符:就像m// qw//一样,我们可以改变s///的定界符.但是替换运算符会用到三个定界符,所以情况又有点不同.

绑定操作符:可以用绑定操作符为s/// 选择不同的替换目标

无损替换: 同时保留原始字符串和替换后的字符串

大小写转换: \U转义字符会将其后所有字符转换为大写,\L则反之.\E关闭大小写转换功能;使用小写形式\u和\l他们只会影响紧跟其后的第一个字符.这里的转换同样可以用在任何双引号内的字符串中.

split操作符: 用法 my @fileds = split /separator/, $string;

join函数: 不会使用模式,他的功能与split相反,join会把片段拼接成一个字符串.用法: my $result = join $glue, @pieces; 列表至少要有俩个元素,否则胶水无法涂进去

非贪婪量词:匹配的字符串越短越好 + 对应 +? 在贪婪量词后加一个?

=cut

$_ = "He is out bowling with Barney tonight.";
s/Barney/Fred/;
print "$_\n";

$_ = "home,sweet home!";
s/home/cave/g;
print "$_\n"; #打印"cave,sweet cave

#替换缩减空白
$_ = "input  data\t may have    extra whitespace.";
s/\s+/ /g;

#删除开头结尾的空白
s/^\s+//;
s/\s+$//;
s/^\s+|\s+$//g;

#以井号为定界符
s#^https://#http://#;

#有左右之分的成对字符,必须使用俩对
s{fred}{barney};
s[fred][barney];

#绑定操作符
$file_name =~ s#^.*/##s; #将$file_name中所有的Unix风格的路径全部去除

#无损替换
my $original = "Fred ate 1 rib";
my $copy = $original =~ s/\d+ ribs?/10 ribs/r;

#split 操作符,如果俩个分隔符连在一起,就会产生空字段
my @fileds = split /:/, "abc:def:g:h"; #("abc","def","g","h")
my @fields = split /:/, "abc:def::g:h"; #("abc","def","","g","h")

#split 会保留开头处的空字段,舍弃结尾处的空字段
my @fileds = split /:/, ":::a:b:c:::"; #("","","","a","b","c")

#利用split的/\s+/模式根据空白符分隔字段
my $some_input = "This is a \t   test.\n";
my @args = split /\s+/, $some_input; #("This","is","a","test.")

#默认split会以空白符分隔$_中的字符串:
my @fileds = split; #等同于 split /\s+/, $_;
# 一次更新多个文件
chomp(my $date = `date`);
$^I = ".bak";
while (<>) {
    s/^Author:.*/Author: Randal L. Schwartz/;
    s/^Phone:.*\n//;
    s/^Date:.*/Date:$date/;
    print;
}

