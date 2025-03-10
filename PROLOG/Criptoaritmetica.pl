% HECHOS.
num(0). 
num(1). 
num(2). 
num(3). 
num(4).
num(5). 
num(6). 
num(7). 
num(8). 
num(9).

% REGLAS
criptoaritmetica(C,R,O,S,A,D,N,G,E):-
num(C), num(R), num(O), num(S),
num(A), num(D), num(N), num(G),num(E),
R is (2*S) mod 10 , C1 is (2*S)//10,
\+ R = C,\+ R = O, \+ R = A, \+ R = N, \+ R = G, \+ R = E, \+ R = S,
E is (D + S +C1) mod 10, C2 is (D+S+C1)//10,
\+ E = S,\+ E = D, \+ E = A, \+ E = O, \+ E = G, \+ E = C, \+ E = N,
G is (A + O +C2) mod 10, C3 is (A+O+C2)//10,
\+ G = S, \+ G = D, \+ G = A, \+ G = O, \+ G = N,\+ G = C, \+ G = R,
N is (O + R +C3) mod 10, C4 is (O+R+C3)//10,
\+ N = O, \+ N = R, \+ N = S, \+ N = D, \+ N = A,\+ N = C,  
A is (R + C +C4) mod 10, C5 is (R+C+C4)//10,
\+ A = R, \+ A = C, \+ A = S, \+ A = D, \+ A = O,
D is (C5),\+ S = O, \+ C = O, \+ C = S, \+ D = O.

%CONSULTA
% criptoaritmetica(C,R,O,S,A,1,N,G,E).