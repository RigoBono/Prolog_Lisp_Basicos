/*Programa Arboles en PROLOG*/

tree(raiz(raiz,izq(izq,nil,nil),der(der,nil,nil))).

/*Funcion que cuenta nodos*/
cuentaNodos(nil,0).
cuentaNodos(a(_,HI,HD),R):-
	cuentaNodos(HI,RI),
	cuentaNodos(HD,RD),
	R is RI+RD+1.

/*Funcion que cuenta hojas*/
cuentaHojas(nil,0).
cuentaHojas(a(E,nil,nil),R):- R is 1.
cuentaHojas(a(E,HI,HD),R):-
	cuentaHojas(HI,RI),
	cuentaHojas(HD,RD),
	R is RI+RD.

/*Funcion que retorna si es un arbol lo que se ingreso*/
esArbol(nil).
esArbol(t(_,L,R)) :- esArbol(L), esArbol(R).

