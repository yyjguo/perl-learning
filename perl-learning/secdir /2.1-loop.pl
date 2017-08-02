#!/usr/bin/perl
=pod until
多了until 与while相反
多了foreach
continue 语句可用在 while 和 foreach 循环中。

=cut
@list = (2,12,36,42,51);
foreach $a (@list){
    print "a的值为:$a\n";
}

@list = (1,3,4,5);
foreach $a (@list){
    print "a = $a\n"
}continue{
    if ($a ==4){
    last;
    }
}
# 使用 unix 的 date 命令执行
$t = qx{date};
print "qx{date} = $t\n";