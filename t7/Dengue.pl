regraF(C) :- nth0(I,C,f), I < 3.

regraM(C) :- C = [m,_,_,_,_,_,_].
regraM(C) :- C = [_,_,_,_,_,_,m].

regraL(C) :- nth0(I,C,l), I =\= 0, I =\= 6.

regraP(C) :- nth0(I,C,p), I > 3.

regraT(C) :- nth0(I,C,t), I < 7.

ordem(Casas):-
    Casas = [_,_,_,_,_,_,_],
    regraF(Casas),
    nextto(h,g,Casas),
    regraL(Casas),
    regraM(Casas),
    regraP(Casas),
    regraT(Casas).

/*
1.
a)?- ordem([f,t,h,l,p,g,m]).
b)?- ordem([h,g,f,l,t,p,m]).
c)?- ordem([l,t,f,h,g,m,p]).
d)?- ordem([m,f,d,h,l,g,t]).
e)?- ordem([m,l,h,g,f,p,t]).

2.
a)?- ordem(Casas),nextto(t,l,Casas),nextto(l,f,Casas), Casas = [_,g,_,_,_,_,_].
b)?- ordem(Casas),nextto(t,l,Casas),nextto(l,f,Casas), Casas = [_,_,g,_,_,_,_].
c)?- ordem(Casas),nextto(t,l,Casas),nextto(l,f,Casas), Casas = [_,_,_,g,_,_,_].
d)?- ordem(Casas),nextto(t,l,Casas),nextto(l,f,Casas), Casas = [_,_,_,_,g,_,_].
e)?- ordem(Casas),nextto(t,l,Casas),nextto(l,f,Casas), Casas = [_,_,_,_,_,g,_].

3.
a)?- ordem([h,_,_,f,_,_,_]).
b)?- ordem([h,_,_,g,_,_,_]).
c)?- ordem([h,_,_,l,_,_,_]).
d)?- ordem([h,_,_,m,_,_,_]).
e)?- ordem([h,_,_,p,_,_,_]).
*/
