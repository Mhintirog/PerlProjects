open(FH1, ">", "results.txt") or die("Can't open file"); 

$/="\/\/\n";

while (<>)
{
if($_=~/^ID\s{3}(.*?)\s+(.*?)\;\s+(\d+\sAA.)/m)
{
#print ">$1|$3";
print FH1 ">$1";
}
if ($_=~/^AC\s{3}(.*?)\;/m)
{
print FH1 "|$1";
}

if($_=~/^SQ   SEQUENCE\s+(.*?)\;/m)
{
	print FH1 "|$1\n";
	$mikos=$1;
}



$i=0;
while($_=~/^FT\s{3}TRANSMEM\s+(\d+)\s+(\d+)\s+(.*)\./mg){

$i=$i+1;

@tmstart=$1; 
$arxi=$1;

@tmend=$2; 
$telos=$2;


print FH1 @tmstart;
print FH1 "\t";


print FH1 @tmend;
print FH1 "\n";


}



while ($_=~/^\s{5}(.*)/mg)
{

$sequence=$1;
$sequence=~s/\s//g;

print FH1 "$sequence";


}
print FH1 "\n";


for ($j=0; $j<$i; $j++)
{
for ($k=1; $k<=$mikos; $k++)
{
	if ($k<$arxi){
		print FH1 "-";
	}elsif ($k>=$arxi && $k<=$telos){
		print FH1 "M";
	}else {
		print FILE1 "-"
	}
}
}


print FH1 "\n\/\/\n";
}

close(FH1);