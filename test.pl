/* Question 1*/
sum-up-numbers-simple([],0). /* If list is empty set to 0*/
sum-up-numbers-simple([A|Z],N) :- 
number(A), 
sum-up-numbers-simple(Z,Summ), 
N is A + Summ. /* If the current element is a number recursively add the elements in the list*/
sum-up-numbers-simple([A|Z],N) :-
\+number(A),sum-up-numbers-simple(Z,N). /*If the current element is not a number recursivly continue through the list */

/* Question 2*/
sum-up-numbers-general([],0). /* If the list is empty return 0*/
sum-up-numbers-general([[]],0). /*if the lst inside the list is empty return 0*/
sum-up-numbers-general([A|Z],N) :-
number(A), 
sum-up-numbers-general(Z,Summ),
N is A + Summ. /*if the atom is a number recursivly add the number in the list*/
sum-up-numbers-general([A|Z],N) :-
atom(A),
sum-up-numbers-general(Z ,N). /* If the element is an atom continue through the list*/
sum-up-numbers-general([A|Z],N) :-
sum-up-numbers-general(Z,Summ),
N is A + Summ. /* check in the atom if it is a list and add the value recurslivly if it is a number*/


/* Question 4 */
common-unique-elements([],_,[]) /* Checks if the current atom in the list is a list, then returns a list*/
common-unique-elements([N|E1], E2, [N|E3]):-
	member(E2,N),
	!,
	common-unique-elements(E1,E2,E3).


