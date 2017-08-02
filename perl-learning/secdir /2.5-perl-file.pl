#!/usr/bin/perl
use strict;
=pod file
Perl 使用一种叫做文件句柄类型的变量来操作文件。
从文件读取或者写入数据需要使用文件句柄。
文件句柄(file handle)是一个I/O连接的名称。
Perl提供了三种文件句柄:STDIN,STDOUT,STDERR，分别代表标准输入、标准输出和标准出错输出。
=cut

# open(DATA,"<file.txt");

open(DATA, "<file.txt") or die "file.txt 文件无法打开, $!";

while(<DATA>){
   print "$_";
}
# open(DATA, ">file.txt") or die "file.txt 文件无法打开, $!";

#TODO: MANY