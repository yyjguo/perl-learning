use strict;
use warnings FATAL => 'all';
#!/usr/bin/perl

print "Hello,world!\n";
=pod
larry 推出了Perl
 1 Itermediate Perl
 2 Mastering Perl
 3 Programming perl
 额外练习 《Learning Perl Student Workbook》
=cut 



=pod scalar
标量称呼单个事物.
数字: 双精度浮点数,不存在整数值;
浮点数直接量: 直接键入源代码中的数据.
整数直接量: Perl允许你在整数直接量中插入下划线,将若干位数分开,写成72_89_33_87,与72893387一样.
非十进制:
0377  # 八进制,等于十进制255
0xff  # 十六进制,等于十进制255
0b11111 # 二进制
=cut

=pod 字符串
字符串通常是由可输出的字母,数字以及标点符号组成,其范围介于ASCII码的32到126之间.
想在源代码中使用Unicode书写直接量的话,得手工加上utf-8编译指令;
=cut

=pod 双引号字符串的反斜线转义
\n  换行
\r  回车
\t  水平制表符
\f  换页符
\b  退格
=cut

=pod 字符串操作符
可以用.连接字符串
"hello"."world"  #"helloworld"
重复
"fred"×2 # "fredfred"
5×4.8 #"5555"
=cut

=pod 数字和字符串之间自动转换
0377  # 十进制 255
'0377' # 十进制377
Perl会记住第一次转换结果,只是转换一次而已
Perl会完成自动转换数据的工作.
=cut


=pod
perl变量名称习惯是小写加上下划线或者驼峰法
使用全大写的情况是表示特殊含义的变量
使用好的命名方式
=cut


=pod 字符串中的标量内插
$meal = "brontosaurus steak";
$barney = "fred ate a $meal";
$barney = "fred ate a".$meal;
使用双引号更加简洁,打印变量最好不加双引号;
=cut

$what = "brontosaurus steak";
$n = 3;
print "fred ate $n $whats.\n";
print "fred ate $n ${what}s.\n";

=pod 借助代码点创建字符
$alef = chr(0x05D0);
$alpha = chr(hex('03b1'));
=cut

=pod 比较
字符串和数字
比较一个是数学一个是字符串
=cut

=pod 布尔值
perl并没有专门的"布尔"数据类型
数字0为假,其他为真
空字符为假,其他为真
既不是字符也不是数字,
转为数组与字符之后再进行判断
字符串'0'是唯一被当成假的非空字符串

连续俩次!反转得到表示布尔值的变量
数字1和undef
$still_true = !!'fred';
$still_false = !! '0';
=cut


=pod 获取用户输入
<STDIN>
$line = <STDIN>
if($line eq "\n"){
    pirnt "That was just blank line\n";
}else {
    print "That line of input was: $line";
}
=cut

=pod chomp操作符
如果字符串的末尾是换行符,
chomp()的任务就是去掉它
$text = "a line of text\n";
chomp($text);#返回实际移除的字符数
chomp可以加上括号也可以不加上括号
如果字符串后面有俩个以上字符串,chomp仅仅删除一个
结尾处没有换行符,什么也不做,直接返回零
=cut

=pod undef值
未初始化的标量的值为undef
0或者空字符串
如果想自己创建undef值,可以直接使用同名的
undef操作符
=cut

=pod defined函数
<STDIN>有时候会返回undef,
用defined函数判断返回值
如果undef,为假

=cut

