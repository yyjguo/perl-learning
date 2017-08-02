use strict;
=pod pod 文档
pod文档以 =head1 开始， =cut结束， =head1 前与 =cut 后添加一空行
Perl 会忽略pod中的文档
POD是一种简单易用的标记性语音
=cut

print "Hello，World\n";

=head1 Hello,World
This is a simple demo.
=cut

print "你好，世界\n";

while (<DATA>) {
    print $_;
}

=begin html
=encoding utf-8

=head1 myname is zhengjingfa

cut
¡¡¡11¡




__END__

=head1 Hello,World
THis is a simple demo;
=cut

print "你哈"；