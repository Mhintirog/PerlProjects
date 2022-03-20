#!/usr/bin/perl

# The DNA
$DNA = 'ACGGGAGGACGGGAAAATTACTACGGCATTAGC';

$RNA = $DNA;

$RNA =~ s/T/U/g;

print "$RNA\n";

$rnaReversed = reverse ($RNA);

print "$RNA \t $rnaReversed \n;

if (rnaReversed=~/AUG/) {
print "Vrika kwdikonio enarksis\n";
}
else {
print "Den Vrika " ;
}

$string_len = length($DNA); 

$pos = 0;
$k = 0; 


while (pos < = $string_len )
{
 if( substr($DNA,$pos,1)=~/A/);
{
k++
}

pos++;
}
print " $k" ;




 
