sum-up-numbers-simple(X, 0) :-
	not(number(X)).

sum-up-numbers-simple(X, X):-
	number(X).

%write a function which returns 0 if not number
chec

sum-up-numbers-simple([],0). %base-statement, if the list is empty its sum is 0


sum-up-numbers-simple([X|Y], Z) :-

	%taking the logic from reverse function given in slides
	sum-up-numbers-simple(X, P),
	sum-up-numbers-simple(Y, W), %if W is the sum of Y
	%Z is 0 not(number(X));
	Z is P + W.%#adding x to W generates Z 
	%then Z is the sum of [X|Y]

%failed-test case = [100,a] 100 True
