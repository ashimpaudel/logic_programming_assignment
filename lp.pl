sum-up-numbers-simple([],0). #base-statement, if the list is empty its sum is 0
sum-up-numbers-simple([X|Y], Z) :-

	#taking the logic from reverse function given in slides
	sum-up-numbers-simple(Y, W) #if W is the sum of Y
	+ (W, X, Z) #adding x to W generates Z 
	#then Z is the sum of [X|Y]

