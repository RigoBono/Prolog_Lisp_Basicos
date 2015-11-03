hombre(juan).
hombre(jorge).
hombre(jose).
hombre(julio).
hombre(jaime).
hombre(alvaro).
hombre(moy).
hombre(pedro).
hombre(gil).
hombre(byron).

mujer(perla).
mujer(ana).
mujer(katia).
mujer(mary).
mujer(susana).
mujer(lilia).
mujer(sol).
mujer(luna).

progenitor(juan,jose).
progenitor(juan,jorge).
progenitor(juan,perla).
progenitor(jose,julio).
progenitor(jose,jaime).
progenitor(jose,ana).
progenitor(jorge,alvaro).
progenitor(jorge,katia).
progenitor(jorge,mary).
progenitor(perla,susana).
progenitor(perla,moy).
progenitor(jaime,pedro).
progenitor(jaime,gil).
progenitor(katia,luna).
progenitor(mary,byron).

eshermana(X,Y):-
	mujer(X),
	progenitor(Z,X),
	progenitor(Z,Y).

estio(X,Y):-
	hombre(X),
	progenitor(Z,X),
	progenitor(R,Y),
	progenitor(Q,Z),
	progenitor(Q,R),
	not(Z==R).

esprima(X,Y):-
	mujer(X),
	progenitor(Z,X),
	progenitor(W,Y),
	not(Z==W),
	progenitor(V,Z),
	progenitor(V,W).

esabuelo(X,Y):-
	hombre(X),
	progenitor(Z,Y),
	progenitor(X,Z).
