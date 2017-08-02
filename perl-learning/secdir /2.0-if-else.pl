#!/usr/bin/perl

=pod 条件语句
注意: 数字0,字符串'0','',空list(),undef 为false,
其他值均为true.
=cut

$name = 'afanail';
$favorite = 10;
$status = ($favorite>20)?'热门网址':'非热门网址';
print "$name - $status\n";

=pod 
和js相比较而言,多了unless
swicth case 需要安装Switch模块
使用 use Switch;
=cut 
=pod 语法
use Switch;
swicthI(argument){
    case 1            {print "数字1"}
    case "a"          { print "字符串a"}
    case [1..10,42]   { print "数字在列表中"}
    case (\@array)    { print "数字在数组中" }
    case /\w+/        { print "正则匹配模式" }
    case qr/\w+/      { print "正则匹配模式" }
    case (\%hash)     { print "哈希" }
    case (\&sub)      { print "子进程" }
    else              { print "不匹配之前的条件" }

}
=cut

use Switch;
$var = 10;
@array = (10,20,30);
%hash = ('key1'=>10,'key2'=>20);

swicth($var){
    case 10         { print "数字 10\n"; next;}
    case "a"        { print "字符串 a"}
    case [1..10,43] { print "数字在列表中"}
    case (\@array)  { print "数字在数组中"}
    case (\%hash)   { print "在哈希中"}
    else            { print "没有匹配条件"}
}
