%1. sum-up-numbers-simple(L, N)

sum-up-numbers-simple([],0). 
%base-statement, if the list is empty its sum is 0

%if X is a list sum is 0 

sum-up-numbers-simple(X, 0) :-
	is_list(X).

sum-up-numbers-simple(X, 0) :-
	not(is_list(X)),
	not(number(X)).


sum-up-numbers-simple(X, X):- %
	number(X).

%write a function which returns 0 if not number



sum-up-numbers-simple([X|Y], Z) :-

	%taking the logic from reverse function given in slides


	%sum-up-numbers-simple(X, P),
	number(X),
	sum-up-numbers-simple(Y, W), 
	Z is X + W.

	%if W is the sum of Y then Z is the sum of [X|Y]


%2. sum-up-numbers-general(L, N)


%1. sum-up-numbers-general(L, N)

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