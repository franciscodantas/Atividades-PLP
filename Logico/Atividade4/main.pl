main:- read(Term), pegaMaior(Term,R,R2,_,1), write(R),write(" "), write(R2), halt.

pegaMaior([[H|T]], PassoExterno, R2, Maior, PassoExterno):- maior_elemento([H|T],Maior),nth1(R2,[H|T],Maior),!.
pegaMaior([[H|T]|T2], R, R2, Maior, PassoExterno):- Soma is PassoExterno + 1,
                                                pegaMaior(T2,R1,R3,Maior3,Soma),
                                                maior_elemento([H|T],Maior2),
                                                (Maior2 > Maior3 -> R is R1 - 1, nth1(R2,[H|T],Maior2), Maior is Maior2;R is R1, R2 is R3,Maior is Maior3,!).
                                                
maior_elemento([E],E).
maior_elemento([H|T],R):- maior_elemento(T,Resto), (H > Resto -> R = H; R = Resto).