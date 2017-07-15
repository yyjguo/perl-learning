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
