
@files = `ls -l`;

foreach my $file (@files) {
    print $file;
}

$PATH = "i am perl var";
system('echo $PATH'); # $PATH 作为shell环境变量
system("echo $PATH"); # $PATH作为Perl变量

if (!defined($pid = fork())){
    die "无法创建子进程";
}
elsif ($pin == 0) {
    print "通过子进程输出\n";
    exec("date") || die "无法输出日期\n";
}
else {
    print "通过父进程输出";
    $res = waitpid($pin,0);
    print "完成的进程ID: $ret\n";
}

1;

local $SIG{CHLD} = "IGNORE";

if(!defined($PID = fork())){
    die "无法创建子进程: $!";
}
elsif ($PID == 0) {
    print "通过子进程输出\n";
}
else {
    print "通过父进程输出";
    $ret = waitpid ($PID, 0);
    print "完成的进程ID: $ret\n";
}

kill('INT',104,102)