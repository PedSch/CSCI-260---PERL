#!/usr/bin/perl
# pedro schmidt 
#pschmidt98@gmail.com or pedro.schmidt@und.edu
# csci260
#assignment 1

use strict;
use warnings;

print("\nPART 1 \n");
#part 1 
#entering a name that will demonstrate different ways to spell pedro schmidt using functions we learned in class 
#declaring variables
my ($firstname , $lastname ,$fullname,$index);



print "enter full name in first last format"; 
chomp($fullname = <>);

#firstname 
$index = index($fullname, ' ');
$firstname = substr($fullname,0,$index);
print "$firstname\n";

#printlastname 
$lastname = substr($fullname, $index +1);
print "$lastname\n";

#lastname #firstname; 
print "$lastname $firstname\n";

#print caps
print uc "$firstname $lastname\n";

#print different lines
print "$firstname\n$lastname"; 
 
print("\nPART 2 \n");

#part 2 
# entering a 3 digit number that will demonstrate the following hundreths, tens, and one place Using different arithmetics
print "please enter a value";
my ($int_value, $int_value2, $hundreds_place, $tens_place, $ones_place);

print "\nthree digit number such as 250:\n";
chomp ($int_value = <>);

#print hundreths place
$hundreds_place = sprintf("%3d", $int_value2);

#print tens place
$int_value2 = $int_value2 /10;
$tens_place = sprintf("%3d",$int_value2 % 10);

#print ones place
$ones_place = sprintf("%3d", $int_value2 %10);

#printf original number
$int_value2 = $int_value;

#Print out the number from the hundreds place (for example, 3 in 316)
print "Hundreds place:\t\t$hundreds_place\n";

#Print out the number from the ten’s place (for example, 1 in 316)
print "Tens place:\t\t$tens_place\n";

#Print out the number from the one’s place (for example, 6 in 316)
print "Ones place:\t\t$ones_place\n";

#Print out the original number
print "Original number:\t$int_value";

