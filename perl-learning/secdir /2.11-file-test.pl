#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';
=pod 文件测试操作符
Perl提供了一组用于测试文件的操作符
借此返回特定的文件信息,所有这些操作符都写作-X的形式,其中X表示特定的测试操作符
实际上还有一个字面上写在-X的文件测试操作符,所以泛指和特指常常容易让人混淆,绝大多数操作符返回布尔真假值,虽然他们称为操作符,但实际上他们相应的文档却是写在perlfun里面的.
运行和创建新文件程序时,先检查指定的文件是否已经存在,以免意外覆盖重要的电子表格或是宝贵的生日档案.可以用-e文件测试操作符来测试文件是否存在.

-M文件测试操作符返回的是文件最后一次修改时间到当前程序启动时刻之间的天数.

-s 文件操作符返回的并不是布尔真假值,而是以字节计算的文件大小

所有这些文件测试符看起来都是同一种形式,连字符加上一个字母,字母测试的意义,后面跟上要测试的文件名或文件句柄.
=cut
#die 抛出的消息并没有包含$!,现在并不关心系统为何拒绝文件访问的请求.
    die "Oops! A file called '$filename' already exits.\n" if -e $filename;

#M文件测试操作符返回的是文件最后一次修改时间到当前程序启动时刻之间的天数
warn "Config file is looking pretty old!\n" if -M CONFIG > 28;

my @original_files = qw/ fred barney betty wilma pebbles dino bamm-bamm /;
my @big_old_files;
foreach my $filename (@original_files) {
    push @big_old_files, $filename if -s $filename > 100_000 and -A $filename >90;
}
