#!/usr/bin/perl 
"use strict";
=pod variable
什么是变量？
变量是存储在内存中的数据，创建一个变量就会在内存上开辟一个空间。
解释器会根据变量的类型来决定其在内存中的存储空间，因此你可以为变量分配不同的数据类型，如整型、浮点型、字符串等。
不同类型的变量可以使用相同的名称
我们可以在程序中使用 use strict 语句让所有变量需要强制声明类型。
=cut

@age = (2,3,4);
@name = ("jane","smith","kangkang");

print "\$age[0] = $age[0]\n";
print "\$age[1] = $age[1]\n";
print "\$age[2] = $age[2]\n";

print "\$name[0] = $name[0]\n";
print "\$name[1] = $name[1]\n";
print "\$name[2] = $name[2]\n";

=pod 哈希变量
哈希是一个 key/value 对的集合
哈希 % 开始
如果要访问哈希值，可以使用 $name{key} 的形式来访问
=cut

%data = ('jane', 1, 'smith', 2, 'kangkang', 3);

print "\$data{jane} = $data{'jane'}\n";
print "\$data{smith} = $data{'smith'}\n";
print "\$data{kangkang} = $data{'kangkang'}\n";

=pod 变量上下文
上下文：指的是表达式所在的位置
上下文是由等号左边的变量类型决定的，等号左边是标量，则是标量上下文，等号左边是列表，则是列表上下文。
Perl 解释器会根据上下文来决定变量的类型。
=cut

@names = ('jane','smith','afanail');
@copy = @names; #复制数组；
$size = @names; #数组赋值给标量，返回数组元素个数；

print "名字为：@copy\n";
print "名字个数为：$size\n";

=pod 多种不同的上下文
序号	上下文及描述
1	标量 −
    赋值给一个标量变量，在标量上下文的右侧计算
2	列表 −
    赋值给一个数组或哈希，在列表上下文的右侧计算。
3	布尔 −
    布尔上下文是一个简单的表达式计算，查看是否为 true 或 false。
4	Void −
    这种上下文不需要关心返回什么值，一般不需要返回值。
5	插值 −
    这种上下文只发生在引号内。
=cut

