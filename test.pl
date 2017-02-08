sum-up-numbers-simple([],0). /* If list is empty set to 0*/
sum-up-numbers-simple([A|Z],N) :- 
number(A), 
sum-up-numbers-simple(Z,Summ), 
N is A + Summ. /* If the current element is a number recursively add the elements in the list*/
sum-up-numbers-simple([A|Z],N) :-
\+number(A),sum-up-numbers-simple(Z,N). /*If the current element is not a number recursivly continue through the list */