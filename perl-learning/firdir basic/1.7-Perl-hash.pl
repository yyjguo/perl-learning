#!/usr/bin/perl

=pod 哈希
哈希是 key/value 对的集合。
Perl中哈希变量以百分号 (%) 标记开始。
访问哈希元素格式：${key}。
=cut

%data = ('google','google.com','taobao','twitter');
print "\$data{'googlel'} = $data{'google'}\n";

=pod 创建哈希
一、为每个 key 设置 value
二、通过列表设置
三 也可以使用 => 符号来设置 key/value:
=cut
# 为每个key设置value
%data = ('google','','taobao','','twitter','');
$data{'google'}='google.com';
$data{'taobao'}='taobao.com';
$data{'twitter'}='twitter.com';
print "\$data{'google'}=$data{'google'}\n";

# 列表设置
%data = ('google','google.com','taobao','taobao.com');
print "\$data{'google'} = $data{'google'}\n";

# 使用 =>来设置
%data = ('google'=>'google.com','taobao'=>'taobao.com','twitter'=>'twitter.com');
%data = (-google=>'google.com',-taobao=>'taobao.com',-twitter=>'twitter.com');
$val = $data{-google};
print "$val\n";

# 访问哈希元素
%data = ('google'=>'google.com','taobao'=>'taobao.com','twitter'=>'twitter.com');
print "\$data{'google'} = $data{'google'}\n";

# #像数组一样读取哈希值
# %data = ('google'=>'google.com','taobao'=>'taobao.com','twitter'=>'twitter.com');
# @arr = @data{-taobao,-twitter};
# print "arr:@arr\n";

#读取所有的哈希 keys %HASH 
#该函数返回所有哈希的所有 key 的数组。

%data = ('google'=>'google.com','taobao'=>'taobao.com','twitter'=>'twitter.com');
@names = keys %data;
print "$names[0]\n";
print "$names[1]\n";
print "$names[2]\n";
@url = values %data;
print "$url[0]\n";
print "$url[1]\n";

if(exists($data{'facebook'})){
    print "facebook 的网址为 $data{'facebook'}\n";
}else {
    print "facebook 键不存在\n";
}

#哈希大小

%data = ('google'=>'google.com','taobao'=>'taobao.com','twitter'=>'twitter.com');
@keys = keys %data;
$size = @keys;
print "1-哈希大小: $size\n";
@values = values %data;
$size = @values;
print "2-哈希大小:$size\n";

#添加删除元素
delete $data{'taobao'};
@key = keys %data;
$size = @key;
print "3-hash-size: $size\n";

#增加元素
$data{'facebook'}= 'facebook.com';
print "\$data{'facebook'} = $data{'facebook'}\n";

#最好使得哈希名和键之间可以放进去一个for,比如family_name
#对任何需要逗号的地方都可以用胖箭头表示 =>