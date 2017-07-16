#!/usr/bin/perl
=pod format
Perl 是一个非常强大的文本数据处理语言。
Perl 中可以使用 format 来定义一个模板，然后使用 write 按指定模板输出数据。
=cut

$text = "google afanal taobao";
format STDOUT =
first: ^<<<<<
    $text
second: ^<<<<<
    $text
third: ^<<<<
    $text
.
write

=pod format1
格式行以 @ 或者 ^ 开头，这些行不作任何形式的变量代换。
@ 字段(不要同数组符号 @ 相混淆)是普通的字段。
@,^ 后的 <, >,| 长度决定了字段的长度，如果变量超出定义的长度,那么它将被截断。
<, >,| 还分别表示,左对齐,右对齐,居中对齐。
^ 字段用于多行文本块填充
=cut

=pod format2
格式	值域含义
@<<<	左对齐输出
@>>>	右对齐输出
@|||	中对齐输出
@##.##  	固定精度数字  
@*	多行文本
=cut

format EMPLOYEE =
===================================
@<<<<<<<<<<<<<<<<<<<<< @<<
$name $age
@#####.##
$salary
===================================
.

select(STDOUT);
$~ = EMPLOYEE;

@n = ("Ali","taobao","Jaffer");
@s = (2000.00,2500.00,4000.00);
@a = (20,30,40);

$i =0;
foreach (@n){
    $name = $_;
    $age = $a[$i];
    $salary = $a[$i++];
    write;
}

# TODO: why?
