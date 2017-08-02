#！／usr/bin/perl

#这是一行注释
use strict;
use warnings;
print "Hello World\n";

=pod 注释
这是一个多行注释
多行注释
多行注释
=cut

=pod 注意
 =pod、=cut只能在行首
 以=开头，以cut结尾
 =后面要紧接一个字符，=cut后面可以不用
=cut

=pod 空白
空白会照样输出
空格和和分行出现在字符串内，会照样输出。
=cut

=pod 引号
 单引号无法解析会原样输出
 双引号可以正常解析转义字符与变量。
=cut

