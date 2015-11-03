/*
Nombre: Alfredo Rigoberto Alvarez Suarez 
Materia: Taller de programacion logica y funcional
Fecha: 15 de febrero del 2015.
Desarrollo: 
Investigar que es corte.
Implementar almenos 5 funciones para listas con corte.

Corte:
Podemos definir el Corte como un predicado que siempre se cumple, es decir, que genera un resultado verdadero en la primera ejecución, y falla en el proceso de backtracking, impidiendo dicho retroceso. Su aplicación principal es generar código más eficiente por el efecto que causa en la reducción o poda del árbol de búsqueda generado durante el procedimiento de resolución.
*/

/*Determina si lo que recibe es una lista*/

lista([]):-!.
lista([X|Y]):-lista(Y).

/*Concatena dos listas*/

concatenar([],L,L).
concatenar([X|M],L,[X|Z]):-concatenar(M,L,Z).

/*Calcula la longitud de la lista*/

long([],0):-!.
long([X|Y],S):-long(Y,T), S is T + 1.

/*Devuelve el elemento que se encuentra en la enesima posicion*/

posicion_n([],N,[]):- !.
posicion_n([X|N],1,X):- !.
posicion_n([X|R],N,S):- M is N - 1,posicion_n(R,M,S).

/*Calcula la primer posicion donde aparece el elemento X en la lista*/

prim_pos(X,[],0):-!.
prim_pos(X,[X|M],1):-!.
prim_pos(X,[Y|M],S):-prim_pos(X,M,T),S is T + 1.
