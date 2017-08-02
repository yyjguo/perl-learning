use strict;
#while (<>) {
#    chomp;
#    print join("\t",(split/:/)[0,2,1,5]),"\n";
#}
#CPAN 经常查阅Perl文档
#@lines = `perldoc -u -f atan2`;
#foreach  (@list) {
#    s/\w<([^>]+)>/\U$1/g;
#    print;
#}
#直接量 perl 完全支持Unicode
print "\n \r \t\f\b\a\e\007\x7f";

print 0377;
print '0377',"\n";
#如果标量从未被赋值过，就会用空字符串来代替
#打印标量的值可以不用双引号
