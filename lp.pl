sum-up-numbers-simple([],0). %ase-statement, if the list is empty its sum is 0
sum-up-numbers-simple([X|Y], Z) :-

	%#taking the logic from reverse function given in slides
	sum-up-numbers-simple(Y, W), %#if W is the sum of Y
	Z is X + W.%#adding x to W generates Z 
	%#then Z is the sum of [X|Y]

