#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';
#读取标准输入流

while (defined($line = <STDIN>)) {
    print "I saw $line"
}

#简写 尽量使用while循环的简写,让它每次处理一行
while (<STDIN>) {
    print "i saw $_";
}

#使用砖石操作符
#编写类似cat sed awk sort grep lpr等工具程序,

#它并不是从键盘取得输入,而是从用户指定的位置读取

while (definedI($line = <>)) {
    chomp();
    print "It was $line that I saw!\n";
}

#简写,chomp默认参数$_
while (<>) {
    chomp;
    print "It was $_ that I saw!\n";
}

#@ARGV数组
@ARGV  = qw# larry moe curly #;
while (<>) {
    chomp;
    print "It was $_ that i saw in some stooge-like file\n";
}

#通常在使用引号的场合,字符串后面最好加上\n
(print(2+3))*4;
#文件句柄,程序里代表Perl进程与外界之间的I/O联系的名称.是联系的名称而不是文件的名称

#使用全大写字母来命名文件句柄
#6个特殊的文件句柄是Perl保留的,STDIN STDOUT STDERR DATA ARGV ARGVOUT
#打开文件句柄的默认模式是读取
#最好为每一个open 配置一个 close
#只有在系统服务请求失败后的瞬间,$!才有用,
if (!open LOG, '>>', 'logfile') {
    die "cannot create logfile:$!"
}

#say 输出函数,末尾多个一个换行
#文件句柄打印后跟随的参数不需要加逗号
#数组是以数字来索引,哈希则是以名字来索引
