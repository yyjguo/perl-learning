#!/usr/bin/perl

=pod 标量
什么是标量
标量是一个简单的数据单元。
标量可以是一个整数，浮点数，字符，字符串，段落或者一个完整的网页。
=cut
# 数字标量
$integer = 200;
$negative = -300;
$floating = 200.340;
$bigfloat = -1.2E-23;

# 八进制 377 , 十进制为 255 
$octal = 0377;

# 十六进制 FF, 十进制为 255 
$hexa = 0xff;

print "integer = $integer\n";
print "negative = $negative\n";
print "floating = $floating\n";
print "bigfloat = $bigfloat\n";
print "octal = $octal\n";
print "hexa = $hexa\n";

#字符串标量
$var = "字符串标量 - afanail!";
$quote = '我在单引号内 - $var';
$double = "我在双引号内 - $var";

$escape = "转义字符使用 -\tHello, World!";

print "var = $var\n";
print "quote = $quote\n";
print "double = $double\n";
print "escape = $escape\n";

# 标量运算
$str = "hello" . "world";       # 字符串连接
$num = 5 + 10;                  # 两数相加
$mul = 4 * 5;                   # 两数相乘
$mix = $str . $num;             # 连接字符串和数字

print "str = $str\n";
print "num = $num\n";
print "mix = $mix\n";

# 多行字符串，单引号或者前面的Heredoc
$string = '
阿发你啊量
	—— falafel克拉风景
';

print "$string\n";


=pod 特殊字符
特殊字符的应用
__FILE__,__LINE,__PACKAGE__ 分别表示当前执行脚本的文件名，行号，包名。
这些特殊字符是单独的标记，不能写在字符串中
=cut

print "文件名". __FILE__ . "\n";
print "行号" . __LINE__ . "\n";
print "包名" .__PACKAGE__ ."\n";

#无法解析
print "__FILE__ __LINE__ __PACKAGE__ \n";

=pod V字符串
一个以 v 开头,后面跟着一个或多个用句点分隔的整数,会被当作一个字串文本。
当你想为每个字符 直接声明其数字值时,v-字串提供了一种更清晰的构造这类字串的方法，而不像 "\x{1}\x{14}\x{12c}\x{fa0}" 这种不易于理解，看下面的实例：
=cut

@smile = v9786;
$foo = v102.111.111;
$martin = v77.97.114.116.105.110;

print "smile = $smile\n";
print "foo = $foo\n";
print "martin = $martin\n";
