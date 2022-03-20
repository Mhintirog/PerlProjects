#!/usr/bin/perl

print "Dwse ton prwto arithmo";
chomp  ( $x1 = <STDIN>);

print "Dwse ton deutero arithmo";
chomp  ( $y1 = <STDIN>);

print "Dwse ton trito arithmo";
chomp  ( $x2 = <STDIN>);

print "Dwse ton tetarto arithmo";
chomp  ( $y2 = <STDIN>);

$result = sqrt((($x2-$x1)**2) + (($y2-$y1)**2));

print $result;


