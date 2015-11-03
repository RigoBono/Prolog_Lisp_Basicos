/*
Nombre:Alfredo Rigoberto ALvarez Suarez
Materia: Taller de programacion logica y funcional
Fecha: 10 de febrero del 2015.
Actividad: Listas 2.
*/


/* miembro(Elem,Lista) <- el término Elem pertenece a la lista Lista */
/*miembro(X,[X|_]).
miembro(X,[_|Y]) :- miembro(X,Y).
*/
/* nel(Lista,N) <- el número de elementos de la lista Lista es N */
nel([],0).
nel([_|Y],N) :- nel(Y,M),
N is M+1.

/* es_lista(Lista) <- Lista es una lista */
es_lista([]).
es_lista([_|_]).

/* concatena(L1,L2,L3) <- concatenación de las listas L1 y L2
dando lugar a la lista L3 */
concatena([],L,L).
concatena([X|L1],L2,[X|L3]) :- concatena(L1,L2,L3).

/* ultimo(Elem,Lista) <- Elem es el último elemento de la lista Lista */
ultimo(X,[X]).
ultimo(X,[_|Y]) :- ultimo(X,Y).

/* inversa(Lista,Inver) <- Inver es la inversa de la lista Lista */
inversa([],[]).
inversa([X|Y],L) :- inversa(Y,Z),
concatena(Z,[X],L).

/* borrar(Elem,L1,L2) <- se borra el elemento Elem de la lista L1
obteniendose la lista L2 */
borrar(X,[X|Y],Y).
borrar(X,[Z|L],[Z|M]) :- borrar(X,L,M).

/* subconjunto(L1,L2) <- la lista L1 es un subconjunto de la lista L2 */
subconjunto([X|Y],Z) :- miembro(X,Z),
subconjunto(Y,Z).
subconjunto([],_).

/* insertar(Elem,L1,L2) <- se inserta el elemento Elem en la lista L1
obteniendose la lista L2 */
insertar(E,L,[E|L]).
insertar(E,[X|Y],[X|Z]) :- insertar(E,Y,Z).

/* permutacion(L1,L2) <- la lista L2 es una permutación de la lista L1 */
permutacion([],[]).
permutacion([X|Y],Z) :- permutacion(Y,L),
insertar(X,L,Z).

/*miembro2,Ejercicio 1*/
miembro(X,[X|_],N):- N is 1.
miembro(X,[_|Y],N) :- miembro(X,Y,N2),
		      N is N2+1.

/*BorrarN*/
/*borrarN(N,[_|_],R):-
		miembro(W,[_|_],N),
		borrar(W,[_|_],R1),
		R is R1.*/

/*Mayor de la lista*/

list_max(M, [X|Xs]):-
          list_max2(M, X, Xs).

list_max2(M, M, []):- !.

list_max2(X, Y, [Z|Zs]):-
          Z >= Y,
          !,
          list_max2(X, Z, Zs).

list_max2(X, Y, [Z|Zs]):-
          Z =< Y,
          list_max2(X, Y, Zs).
/*Pares e impares*/
dividir([ ],[ ],[ ]).
dividir([L|R],[L|P],I):-E is L mod 2,E=0,dividir(R,P,I),!.
dividir([L|R],P,[L|I]):-C is L mod 2,C>0,dividir(R,P,I),!.
/*Ordenar lista*/
/*47*/
ordenar([],[]):-!.
ordenar(L,R):-maximo(L,X),elim_prim_pos(X,L,L1),ordenar(L1,L2),!,
         concatenar(L2,[X],R).
/*Maximo*/
maximo([X],X):-!.
maximo([X,Y|M],X):-maximo([Y|M],Z),X>=Z.
maximo([X|M],Z):-maximo(M,Z),Z>X.
/*Elimina primera posicion*/
elim_prim_pos(X,[],[]):-!.
elim_prim_pos(X,[X|M],M):-!.
elim_prim_pos(X,[R|M],[R|L]):-elim_prim_pos(X,M,L).
/*Concatenar*/
concatenar([],L,L).
concatenar([X|M],L,[X|Z]):-concatenar(M,L,Z).
/*Borrar enesimo*/
borraN(Indice,L,L1):-
insert(_,Indice,L1,L). 
/*Insertar*/
insert(X,0,L1,[X|L1]).
insert(X,Pos,[C|R],[C|R2]):-
Pos1 is Pos-1,
insert(X,Pos1,R,R2). 

