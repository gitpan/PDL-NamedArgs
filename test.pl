#!/opt/perl/bin/perl
use PDL;
use lib './blib/arch';
use lib './blib/arch/auto/';
use lib './blib/lib';
use lib './blib';
use lib '.';
use PDL::NamedArgs;
use PDL::R::math;

#sub pbinom
#{
#   my($status,%argHash)=parseArgs('q, size, prob, lower_tail=1, log_p=0',@_);
#
#   die ("pbinom error\n$status\n") if $status;
#
#   print "(q, size, prob, lower_tail, log_p) = ";
#   print "($argHash{q}, $argHash{size}, $argHash{prob}, $argHash{lower_tail}, $argHash{log_p})\n";
#}

# Simple tests with only numeric values
print "\n" . pbinom(.5, 50, 3,1,0);
print  "\n" .pbinom(.5,size=>50,3,log_p=>0);
print  "\n" .pbinom(prob=>3,q=>.5,size=>50);
print  "\n" .pbinom(prob=>3,size=>50,.5);

# Torture test with both numeric & alpha values
print  "\n" .pbinom(blah, junk, foo,1,0);
print  "\n" .pbinom(blah,size=>junk,foo,log_p=>0);
print  "\n" .pbinom(prob=>foo,q=>blah,size=>junk);
print  "\n" .pbinom(prob=>foo,size=>junk,blah);

$a=pdl(1,3,5);
# Simple tests with only numeric values
print pbinom($a, 50, 3,1,0);
print pbinom($a,size=>50,3,log_p=>0);
print pbinom(prob=>3,q=>$a,size=>50);
print pbinom(prob=>3,size=>50,$a);
