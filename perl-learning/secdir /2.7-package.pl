

$i = 10;
print "packageName: ",__PACKAGE__,"$i\n";

package Foo;
$i = 1;
print "packageName:",__PACKAGE__,"$i\n";
package main;
$i = 100;
print "packageName:",__PACKAGE__,"$i\n";
print "packageName:",__PACKAGE__,"$Foo::i\n";

package Foo;

print "BEGIN AND END DEMO \n";

BEGIN {
    print "This is a BEGIN BLOCK \n";
}

END {
    print "This is a END BLOCK \n";
}

1;