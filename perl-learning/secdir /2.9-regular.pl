#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

#不要把正则表达式和shell的文件名匹配模式混为一谈
#\p{Space} 匹配包含
#\P{Space} 匹配不包含
#元字符 . \ * ? ()


=pod 1 简单的量词
*是用来匹配前面的条目的零次或多次的,前面的东西可以重复任意次

.匹配任意字符 除了换行符之外
+匹配前一个条目一次以上,算上刚才出现的,再加上任意次重复
?表示前一个条目可有可无,只会出现一次
. + ? 必须接在某个东西之后

.*匹配任意字符无限多次

=cut
#模式分组,圆括号(),对字符串分组

=pod 2 模式分组
()小括号的作用是对字符串分组
因此圆括号也是元字符
圆括号使得重新使用某些字符串成为可能.
反向引用:引用圆括号中的模式所匹配的文字,也称为捕获组;
反向引用:在反斜线的后面接上数字编号,\1 \2.相应的数字表示对应顺序的捕获组
/(.)\1/表示需要匹配连续出现俩个同样的字符
=cut

=pod 2 择一匹配
竖线 | 通常可以读成或
=cut

#字符集:指的是一组可能出现的字符,通过在方括号内表示,它只匹配单个字符,但可以是字符集中的列出的任何一个


=pod 4 模式匹配
默认情况下,模式匹配的操作对象是$_,绑定操作符=~告诉perl,拿右边的模式匹配左边的字符串,而不是匹配$_

=cut

=pod 5 grep
全局搜索正则表达式并打印
文件名通配
=cut

#使用简单的模式
$_ = "yabba dabba doo";
if (/abba/) {
    print "It matched!\n";
}

#/cake\tsprite/ 匹配coke 一个制表符 sprite


#模式匹配用来返回真值和假值.

=pod 6 Unicode属性
每个属性都有一个名字,完整的清单在Perluniprops文档中.
匹配某项属性,把属性名放在p\{PROPERTY}里面
把小写p变成大写,就表示否定意义,匹配指定属性以为的字符
=cut

if (/\p{Space}/) { #总共有26个不同的字符带此属性,空白字符
    print "The string has some whitespace.\n";

}
if (/\p{Digit}/) {#总共有411个不同的数字字符
    print "The string has a digit.\n";

}
if (/\P{Space}/) {#只要不是空白符都能匹配 ,自然不计其数
    print "The string has one or more non-whitespace characters.\n";
}

=pod 7 关于元字符
