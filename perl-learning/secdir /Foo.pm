package Foo;
use strict;
use warnings FATAL => 'all';

1;

#运行CGI脚本,每分钟调用成百上千次,web服务器mod_perl扩展模块解决重复编译的问题
#编译后的是bytecode