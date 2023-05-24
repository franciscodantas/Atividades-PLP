main :- read(Term),
        floor(Term,R1),
        ceiling(Term,R2),
        abs(Term,R3),       
        format('Floor de ~1f = ~w', [Term, R1]),
        writeln(''),
        format('Ceil de ~1f = ~w', [Term, R2]),
        writeln(''),
        format('Abs de ~1f = ~1f', [Term, R3]),
        writeln(''),
        halt. 

floor(Term,Term) :- Term // 1 =:= Term.
floor(Term,R1) :- Term >= 0, R1 is integer(Term).
floor(Term,R1) :- R1 is integer(Term) - 1.

ceiling(Term,Term) :- Term // 1 =:= Term.
ceiling(Term,R2) :- Term >= 0, R2 is integer(Term) + 1.
ceiling(Term,R2) :- R2 is integer(Term).

abs(Term,R3) :- Term < 0, R3 is -Term.
abs(Term,Term).