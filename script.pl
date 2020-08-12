use strict; 
use warnings; 

sub main 
{ 
	my $file = '/media/michael/A2947772947747B5/landTax/info.txt'; 
	open(FH, $file) or die("File $file not found"); 
	
	while(my $String = <FH>) 
	{ 
		$String =~ /(203-\S+)\s(.+)\W(\d{1,}.{0,})(\$[\S]+)/;
 
		print "$1\t$2\t$3\t$4\n";
	} 
	close(FH); 
} 
main(); 
