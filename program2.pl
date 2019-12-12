#!/usr/bin/perl
# pedro schmidt 
#pschmidt98@gmail.com or pedro.schmidt@und.edu
# csci260
#assignment 2

use strict;
use warnings;

 



my $amount = 500.00; #initial amount #user moneeey
my $bet = 0.00;
my $dice = 0; #between 1-6
my $random_number; #RANDOMIZATION
my $point = 0; #player points
my $choice; #opton to bet or not
my $num_of_rolls; #keep track of rolls
my $total_dice;#total value of roll
my $current_amount = $amount + $bet; # how much money user has 

sub rules
{
print"\n welcome to craps here is $amount amount of dollars \n";
print "\n Rules for craps:\n";
print "\n Total value of dice after first roll:\n";
print "\n 7 or 11 - player wins 2,3,or 12 - player loses: \n";
print "\n Any other value and the player rolls again their total of dice is now their point: \n";
}

#this will call the random generator into the function then will decide if the player won or not 
sub result
{
    generator();
	# after first roll 	
if ($dice == 2 or $dice == 3 or $dice == 12)
	{
		print ("\n You Lost : \n  ", + $dice); # lost , subtract the betting amount
        $point = $total_dice;
		$current_amount = $amount - $bet;
        $total_dice = 0;
printf("\n any other value roll again \n");
	}

	#after first roll 
elsif ($dice == 7 or $dice == 11 )
	{
	print "\n you win:\n", + $dice; # won, add the betting amount
    $point = $total_dice;
	$current_amount = $amount + $bet*2;
    
    printf("\n any other value roll again \n", + $total_dice);
    }
   else{
        rolls();
        }
      }
sub rolls
{
#keep rolling point system
    
	$point = $dice; #point

	$dice = (int 6.0) * $random_number + 1.0 + (int 6.0)* $random_number + 1.0;
	print ("\n new points added \n", + $dice);
    
    
	
if ($dice = $point) 
	{
        $current_amount = $current_amount + $bet;
    print"\n you won \n";
	print ("\n Current balance \n", + $current_amount); # won add the betting amount
    bet();
    result();
    last;
	  #break out of a lopp , a win   
}
elsif ($dice = $point)
	{
        $current_amount = $current_amount - $bet;
        print "\n you lost \n ";
		print ("\n lost with 7 \n" , + $current_amount); #lost subtract the betting amount 
		bet();
		last;
	}
    bet();
}


sub generator
{
	#random number generator 
    #generator
    print "\n rolling dice...... \n";

    print ("\n new roll \n");
    $random_number = 1 + int rand(12);
    $dice = (int 6.0) * $random_number + 1.0 + (int 6.0) * $random_number + 1.0;
   
    print($random_number, " \n");


        print("\n*************\n
               \n***    *   ***\n
               \n***    *   ***\n
               \n***    *   ***\n
               \n**************\n");  
     

		
}
sub bet
{
   
    print ("\n how much money do you want to bet? \n");
    $bet = <STDIN>;
    $current_amount = $current_amount - $bet;
    $total_dice += $dice;
    print"\n total point score \n", + $total_dice;
     print"\n are you done playing : yes or no \n ";
    chomp($choice = <STDIN>);
    if($choice eq         'yes')
       {
        
         print ("\n final balance:\n" , $current_amount - $bet);
        exit;
       }
    if ($choice eq 'no')
    {
     $current_amount = $current_amount - $bet;
    print "\n current balance:\n",  $current_amount - $bet;
    generator();
    result();
    rolls();
    bet();
    $num_of_rolls++;
  
    }
    


}

sub main
{
    rules();
    
    print" \n 'bet' or 'leave' the program\nenter your choice:\n";
     chomp($choice = <STDIN>);
    if($choice eq 'bet')
    {
      print "\n current balance:\n", + $current_amount;
    
    print "\n how much would you like to place a bet? \n";
    $bet = <STDIN>;
    generator();       
    result();
    rolls();
    bet();
 
    }
     if($choice eq 'leave')
    {
        print"\n final balance \n" , + $current_amount;
        exit;
    }
    
}
main();

