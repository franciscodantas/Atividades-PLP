main :- read(Preco),
        read(Tamanho),
        tamanhos(Tamanho, 0, 0, 0, Preco),
        halt.

tamanhos(p, P, M, G, Preco) :- P1 is P + 1, read(Tamanho), tamanhos(Tamanho, P1, M, G, Preco),!.

tamanhos(g, P, M, G, Preco) :- G1 is G + 1, read(Tamanho), tamanhos(Tamanho, P, M, G1, Preco),!.

tamanhos(m, P, M, G, Preco) :- M1 is M + 1, read(Tamanho), tamanhos(Tamanho, P, M1, G, Preco),!.

tamanhos(-1, P, M, G, Preco) :- Soma is P + M + G,
                                calculaDesc(P, M, G, Desc),
                                valorDaCompra(Preco, Desc, Soma,R),
                                write(R), halt.

calculaDesc(P, M, G, Desc) :- (G >= 4 -> DescG is 4; DescG is 0),
                              (M >= 4 -> DescM is 6; DescM is 0),
                              (P >= 4 -> DescP is 8; DescP is 0),
                              Desc is DescP + DescM + DescG,!.

valorDaCompra(Preco, Desc, Soma, R) :- R is Soma * Preco * (1 - Desc/100),!.