#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';
=pod 进程管理
Perl直接运行其他程序并如何管理这些孩子(新生的子进程)
"办法不止有一种",Perl的可移植性非常高.
本章主要以Unix环境为主,如果不是Unix系统,难免会碰到一些差异.

system函数 Perl中,启动子进程最简单的方法是system函数,比如说从Perl调用Unix的date命令,需要告诉system要运行的外部程序的名字:
   system 'date';
你所运行的Perl程序称为子进程,当它运行时,system命令根据当前的父进程创建一份拷贝,这份拷贝称为子进程.子进程会立即切换到要运行的外部命令上,比如这里的date,它继承了原来进程中Perl的标准输入 标准输出 标准错误,也就是说由外部命令date输出的日期与时间字符串会立即传送到当前的Perl程序的STDOUT句柄所指向的地方.
通常system函数的参数就是那些一般在shell中键入的命令.只要把命令放入参数里面就可以了:
    system "ls -l \$HOME";
但是这样写很快就会乱成一团.

环境变量 Perl中环境变量可通过特殊的哈希%来获取,其中每一个键都代表一个环境变量.在程序运行时,%ENV会保留从父进程(通常为shell)继承而来的设定值.修改此哈希就能改变环境变量,它会被新进程继承.也可以由Perl本身来使用.

假如现在需要运行系统的make程序(进而运行其他程序),并且想以你的私有目录作为寻找命令(包括make自己)的首选位置,假如还要禁用IFS环境变量,以免make或其后的命令做出不正常的举动,就可以这么写:

新创建的进程一般会继承父进程的环境变量,当前的工作目录,标准输入,输出与错误流和另外一些'小秘密'.可以参考系统与程序设计相关文档来了解更多细节.但是请记住:修改从父进程继承的环境变量并不能影响shell或者其他父进程.

exec函数 到目前为止,我们提到的system函数所有语法也都适用exec函数,一个例外,system函数会创建子进程,子进程会在Perl睡眠期间执行任务.而exec函数却导致Perl进程自己去执行任务.这类似于子程序调用与'goto'语句的差别;

通过文件句柄执行外部进程
perl其实可以启动一个异步运行的子进程,并和他保持通信,直到子进程结束为止.

用fork进行深入和复杂的工作

=cut


  $ENV{'PATH'} = "/home/rootbeer/bin:$ENV{'PATH'}";

    delete $ENV{'IFS'};
    my $make_res = system 'make';


#例如,要运行/tmp 目录下的bedrock命令并带上-o argsl 以及程序本身所调用的参数,可以这样写:
#当我们运行到exec时,Perl找到bedrock并且跳进去执行.此后就没有Perl进程了.
chdir '/tmp' or die "Cannot chdir /tmp: $!";
exec 'bedrock','-o','args1','@ARGV';

