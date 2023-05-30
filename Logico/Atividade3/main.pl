main :- read(Array),
        read(Term),
        operacoes(Array,Term,1,R),
        write(R), halt().

operacoes([],Term,_,Term).
operacoes([H|T],Term,1,R):- Term2 is Term + H,
                            operacoes(T,Term2,2,R).

operacoes([H|T],Term,2,R):- Term2 is Term - H,
                            operacoes(T,Term2,3,R).

operacoes([H|T],Term,3,R):- Term2 is Term * H,
                            operacoes(T,Term2,4,R).

operacoes([H|T],Term,4,R):- H =:= 0,
                            operacoes(T,Term,1,R).
                        
operacoes([H|T],Term,4,R):- Term2 is Term / H,
                            operacoes(T,Term2,1,R).

    
