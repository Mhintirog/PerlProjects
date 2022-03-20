$x='MNFLWKGRRFLIAGILPTFEGAADEIVDKENKTYKAFLASKPPEETGLERLKQMFTIDEFGSISSELNSVYQAGFLGFLIGAIYGGVTQSRVAYMNFMENNQATAFKSHFDAKKKLQDQFTVNFAKGGFKWGWRVGLFTTSYFGIITCMSVYRGKSSIYEYLAAGSITGSLYKVSLGLRGMAAGGIIGGFLGGVAGVTSLLLMKASGTSMEEVRYWQYKWRLDRDENIQQAFKKLTEDENPELFKAHDEKTSEHVSLDTIK';
$k=7; #megethos parathiroy einai symmetriko k einai 2k+1 dhladh 11

@hydrovalue=(); #orismos pinaka poy apouhkeuei tis meses times ydrobobikothtas gia kaue parathiro

%hyd =('A' => 0.100, 
	  'C' => -1.420,
	  'D' => 0.780,
	  'E' => 0.830,
	  'F' => -2.120,
	  'G' => 0.330,
	  'H' => -0.500,
	  'I' => -1.130,
	  'K' => 1.400,
	  'L' => -1.180,
	  'M' => -1.590,
	  'N' => 0.480,
	  'P' => 0.730,
	  'Q' => 0.950,
	  'R' => 1.910,
	  'S' => 0.520,
	  'T' => 0.070,
	  'V' => -1.270,
	  'W' => -0.510,
	  'Y' => -0.210
	  );
	  
	  
	  
for($i=$k; $i<length($x)-$k;$i++){   
	$q=0;
	
	for($j=$i-$k; $j<=$i+$k; $j++){     
		$a=substr($x,$j,1);            
		
		#print "$a";  #typonei to parauyro
		
		$p=$hyd{$a}; 
		$q=$q+$p;  
	}
	$q=$q/(2*$k+1); 
	$hydrovalue[$i]=$q; 
	$t=substr($x,$i,1);  
	print "$i\t$t\t$hydrovalue[$i]";  
        print"\n";	
	
}



