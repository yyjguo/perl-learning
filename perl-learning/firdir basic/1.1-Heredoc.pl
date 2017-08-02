use strict;
use warnings FATAL => 'all';
#!/usr/bin/perl

=pod Heredoc

一种在命令行和程序语言里定义一个字串的方法。
注意点： 1.必须后接分号；
2.END可以用任何语言代替，必须保证开始结束标识一致；
3.开始标识不带引号与带引号的作用一样，会解析转义；
4.结束标识必须占一行。必须行首开始。
5.当内容需要内嵌引号的时候，不需要加转义字符，本身对单双引号转义；
=cut


$a = 10;
$var = << "eof";
这是一个Here文档实例，使用双引号。
“可以输入双引号”，‘可以输入单引号’；
可以在这里输入字符串和变量；
例如： a = $a;
eof
print "$var\n";

$var = << 'dfc';
这是一个单引号的例子；
a = $a;
dfc
print "$var\n";

# perl Heredoc变量可以重复,例如上面的$var;

# perl 用反斜线来转义
$res = "zjf";
print "$res\n";
print '$res\n';

# perl标识符与其他编程语言一样；
=pod 列表和数组
list列表指的是标量的有序集合,
而数组则是存储列表的变量
列表指的是数据,数组指的是变量
列表的值不一定放在数组里面,
但每个数组变量都包含一个列表
即使不包含元素的空列表;
Perl 去除不必要的的限制的哲学概念
qw是单引号,
Perl的语法太宽松了
办法不止一种
=cut

=pod 列表的赋值
列表值可以赋值给变量
($fred,$barney,$dino)=("first","rubble","undef");
($fred,$barney)=($barney,$fred);#交换俩个变量的值
真正的perl程序员是不用索引的
Perl后面加不加括号都可以
=cut

=pod foreach
perl会自动存储foreach循环的变量并且
在循环结束之后还原
=cut

=pod $_
最喜欢用的默认变量$_
=cut
