$filename = shift;
open(FILE,$filename);
@data = <FILE>;

$x = $data[1];
$y = $data[3];
print($x."\n");
print($y."\n");
$mismatch = 0;
$match = 0;
$gapx = 0;
$gapy=0;
chomp($x);
chomp($y);

for ( my $i=0; $i<length($x); $i++)
{  print(substr($x,$i,1)."  "."\n");
   print(substr($y,$i,1)."  "."\n");
        if(substr($x,$i,1) eq substr( $y,$i,1)&& substr($x,$i,1)ne "-" && substr($y,$i,1) ne "-")
        {
        $match = $match + 1;
	$mv += 5;
print("Match is ".$match."for x and y value".substr($x,$i,1)." ".substr($y,$i,1)."\n")
        }
        elsif (substr($x,$i,1) eq '-'|| substr($y,$i,1) eq '-')
        {
        $gap = $gap+1;
        if(substr($x,$i,1) eq "-" && substr($x,$i-1,1) eq "-")
	{	
		$gapvalue=-1;
	}
	elsif(substr($y,$i,1) eq "-" && substr($y,$i-1,1) eq "-")

	{
		$gapvalue=-1;

	}
	else
	{
		$gapvalue=-20;	
	}
        print("gap is ".$gap."for x and y values".substr($x,$i,1)."
".substr($y,$i,1)."\n");
        print("gap value is ".$gapvalue."\n");
	$gapscore+=$gapvalue;
	print("gap score is = ".$gapscore."\n");
	}
        else
        {
        $mismatch=$mismatch+1;
        print("Mismatch is ".$mismatch."for x and y
values".substr($x,$i,1)." ".substr($y,$i,1)."\n");
	$mmv+=-4;        
}
}
$score=$mv+$mmv+$gapscore;
print("Number of mismatches in the sequence = ".$mismatch."\n");
print("Number of matches in the sequence = ".$match."\n");
print("Number of gaps in the sequence 1 = ".$gap."\n");
print("The score is  = ".$score."\n");

