% HECHOS.
color(rojo).
color(azul).
color(blanco).

% REGLAS
colorea_mapa(A,B,C,D,E,F,G,H,I) :-
color(A), color(B), color(C), color(D), color(E), color(F), color(G), color(H), color(I),
\+ A=B, \+ A=C, 
\+ B=D, \+ B=C,\+ B=E,
\+ C=E, \+ C=F, 
\+ D=E, \+ D=F, \+ D=G, 
\+ E=F, 
\+ F=G, \+ F=H, \+ F=I, 
\+ G=I, 
\+ H=I.

%CONSULTA
% colorea_mapa(A,B,C,D,E,F,G,H,I).