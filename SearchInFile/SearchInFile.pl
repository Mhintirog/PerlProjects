#!/usr/bin/perl

open(FH, "<Arxeio.txt"); 

while(<FH>)
{
   print $_;
}

close(FH);

open(FH , "<Arxeio.txt" );
open(FH2 , ">NeoArxeio.txt" );

while (<FH>)
{
print FH2 $_;
}

close(FH);
close(FH2);

      
    open(FH, "<Arxeio.txt"); 
	
    my $leksi = <FH>;
	
        if($leksi = ~ /Maria/ ) 
        { 
            print "Find it"; 
        } 
		else
		{
		print " Didn't find it";
    } 
	
	
    close(FH);




