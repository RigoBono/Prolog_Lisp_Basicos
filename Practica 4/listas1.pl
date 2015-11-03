/*
Alfredo Rigoberto Alvarez Suarez
Taller de programacion logica y funcional
Operaciones con listas y linea familiar.
4 de febrero del 2015
*/
progenitor(mollyprewett,[bill,george,ron,ginny,percy]).
progenitor(arthur,[bill,george,ron,ginny,percy]).

progenitor(bill,[victoire,dominique,louis]).
progenitor(fleurdelacour,[victoire,dominique,louis]).

progenitor(victorie,[teddyluppin]).

progenitor(percy,[lucy,molly]).
progenitor(audrey,[lucy,molly]).

progenitor(george,[fred,roxanne]).
progenitor(angelinajohnson,[fred,roxanne]).

progenitor(ron,[hugo,rose]).
progenitor(hermione,[hugo,rose]).

progenitor(ginny,[jamessirius,lilyluna,albusseverus]).
progenitor(harrypotter,[jamessirius,lilyluna,albusseverus]).

genero(hombre,[arthur,bill,george,fred,ron,hugo,louis,teddyluppin,percy,harrypotter,jamessirius,albusseverus]).



pertenece(E,L):-L=[E|_].
pertenece(E,[_|T]):-
	pertenece(E,T).

miembro(X,[Y|_]):-X==Y.
miembre(X,[_|Y]):-miembro(X,Y).

hermano(X,Y):-
	padre(E,X),
	padre(E,Y),
	X\==Y.
tio(X,Y):-
	hermano(X,R),
	padre(R,Y).	
prima(X,Y):-
	tio(R,Y),
	padre(R,X),
	mujer(X).

abuelo(X,Y):-
	X\==Y,
	hombre(X),
	padre(X,Z),
	padre(Z,Y).
	

padre(X,Y):-
	hombre(X),
	X\==Y,
	pertenece(Y,L),
	progenitor(X,L).	
hombre(X):-
	genero(hombre,L),
	pertenece(X,L).
	
mujer(X):-
	genero(hombre,L),
	not(pertenece(X,L)).


