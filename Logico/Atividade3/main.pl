main :- read(Term), dobro(Term, R), write(R).

dobro(Term, R) :- R is Term * 2.
