%1. sum-up-numbers-simple(L, N)

sum-up-numbers-simple([],0). 
%base-statement, if the list is empty its sum is 0

%if only one element and  if that is a number
sum-up-numbers-simple(X, X):- 
	length(X, 1),
	[A|B] = X,
	number(A).

%if X is a list sum is 0 

sum-up-numbers-simple(X, 0) :-
	[A|B] = X,
	is_list(A).

%if only one element and  if that is not a number
sum-up-numbers-simple(X, 0):- 
	length(X, 1),
	[A|B] = X,
	not(number(A)).



sum-up-numbers-simple([X|Y], Z) :-

	%taking the logic from reverse function given in slides
	sum_helper(X, P),
	sum-up-numbers-simple(Y, W),
	Z is P + W.

	%if W is the sum of Y then Z is the sum of [X|Y]

sum_helper(X, 0):-
	not(number(X)).
sum_helper(X, X):-
	number(X).


	



%2. sum-up-numbers-general(L, N)



sum-up-numbers-general([],0). 
%base-statement, if the list is empty its sum is 0

sum-up-numbers-general(X, 0) :-
	not(is_list(X)),
	not(number(X)).

sum-up-numbers-general(X, X):- %
	number(X).

%write a function which returns 0 if not number



sum-up-numbers-general([X|Y], Z) :-

	%taking the logic from reverse function given in slides

	sum-up-numbers-general(X, P),
	sum-up-numbers-general(Y, W), 
	Z is P + W.

	%if W is the sum of Y then Z is the sum of [X|Y]

