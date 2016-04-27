repete(0, _, []).
repete(N, C, L) :- 
    N > 0,
    L = [C | T],
    N1 is N - 1,
    repete(N1, C, T).

zeroInit([0|_]).

has5(L) :- L = [_,_,_,_,_].

hasN(L,N) :- length(L,X), N =:= X.

potN0(0,[1]).
potN0(N,L) :- N > 0, L = [H|T], H is 2^N, N1 is N - 1, potN0(N1, T).

zipmult([],[],[]).
zipmult(L1,L2,L3) :- L1 = [H1|T1], L2 = [H2|T2], L3 = [H3|T3], H3 is H1 * H2, zipmult(T1,T2,T3).

potencias(N,L) :- potencias2(N,0,L).
potencias2(N,NP,L) :- NP < N, L = [H|T], H is 2^NP, N1 is NP + 1, potencias2(N,N1,T).
potencias2(N,NP,L) :- NP =:= N, L = [].

positivos([],[]).
positivos(L1,L2) :- L1 = [H1|T1], H1 > 0, L2 = [H2|T2], H2 is H1, positivos(T1,T2).
positivos(L1,L2) :- L1 = [H1|T1], H1 =< 0, positivos(T1,L2).

mesmaPosicao(A,L1,L2) :- L1 = [H1|_], L2 = [H2|_], A =:= H1, A =:= H2.
mesmaPosicao(A,L1,L2) :- L1 = [_|T1], L2 = [_|T2], mesmaPosicao(A,T1,T2).

comissao(0,_,[]).
comissao(NP,LP,C) :- NP>0, LP = [H1|T1], C = [H2|T2], H2 is H1, N is NP - 1, comissao(N,T1,T2).
comissao(NP,LP,C) :- NP>0, LP = [_|T1], comissao(NP,T1,C).

azulejos(0,0).
azulejos(NA,NQ) :- NA > 0, Raiz is floor(sqrt(NA)), RA is NA - Raiz * Raiz, azulejos(RA,C), NQ is C + 1. 