% Bienvenido/a a nuestro sistema experto de recomendación de DEPORTES.
sugerir(Deporte) :- write('¿Prefieres jugar en equipo o individual?: '), read(Preferencia),
    write('¿Te gustan más los deportes de interior o exterior?: '), read(Lugar),
    write('En este momento te recomiendo el siguiente deporte: '),
    recomendar(Deporte, Lugar,Preferencia).

% Base de conocimientos de deportes
% Deportes individuales al aire libre:
deporte(interior, individual, atletismo).
deporte(interior, individual, ciclismo_de_ruta).
deporte(interior, individual, triatlon).
deporte(interior, individual, golf).

% Deportes individuales en interiores:
deporte(exterior, individual, gimnasia).
deporte(exterior, individual, esgrima).
deporte(exterior, individual, levantamiento_de_pesas).

% Deportes en equipo al aire libre:
deporte(exterior, equipo, futbol).
deporte(exterior, equipo, rugby).
deporte(exterior, equipo, hockey_sobre_cesped).
deporte(exterior, equipo, voleibol_playa).

% Deportes en equipo en interiores:
deporte(interior, equipo, baloncesto).
deporte(interior, equipo, voleibol).
deporte(interior, equipo, balonmano).
deporte(interior, equipo, futbol_sala).


% Reglas de inferencia basadas en las preferencias del usuario
recomendar(Deporte, Lugar, individual) :-
    deporte(Lugar, individual, Deporte).

recomendar(Deporte, Lugar, equipo) :-
    deporte(Lugar, equipo, Deporte).
