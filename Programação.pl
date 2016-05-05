regraF(T) :- T = [_,_,f,_,_,_,_].
regraF(T) :- T = [_,_,_,_,f,_,_].

regraL(T) :- nth0(I,T,l), I =\= 3, I =\= 5.

regraJ(T) :- nth0(I,T,j), I =:= 0 *-> nextto(j,h,T); true.

ativaK(T) :- nth0(I,T,k), I =:= 3.
regraK(T) :- nextto(k,l,T).

regraKL(T) :- ativaK(T) *-> regraK(T); true.

regraG(T) :- nextto(h,g,T).

programacao(Turnos):-
    Turnos = [_,_,_,_,_,_,_],
    lists:perm([f,g,h,j,k,l,m],Turnos),
    regraF(Turnos),
    regraL(Turnos),
    regraJ(Turnos),
    regraKL(Turnos),
    regraG(Turnos).
    

/*
1.
a)?- programacao([h,g,f,m,k,l,j]).
b)?- programacao([h,g,l,f,m,k,j]).
c)?- programacao([l,g,h,m,f,j,k]).
d)?- programacao([l,j,f,k,h,g,m]).
e)?- programacao([l,j,k,m,f,h,g]).

2.
a)?- programacao([j,_,_,f,_,_,_]).
b)?- programacao([j,_,_,g,_,_,_]).
c)?- programacao([j,_,_,k,_,_,_]).
d)?- programacao([j,_,_,l,_,_,_]).
e)?- programacao([j,_,_,m,_,_,_]).

5.
a)?- T = [j,_,_,_,_,_,_],programacao(T),nextto(k,h,T),nextto(l,f,T).
b)?- T = [_,j,_,_,_,_,_],programacao(T),nextto(k,h,T),nextto(l,f,T).
c)?- T = [_,_,j,_,_,_,_],programacao(T),nextto(k,h,T),nextto(l,f,T).
d)?- T = [_,_,_,j,_,_,_],programacao(T),nextto(k,h,T),nextto(l,f,T).
e)?- T = [_,_,_,_,j,_,_],programacao(T),nextto(k,h,T),nextto(l,f,T).
*/