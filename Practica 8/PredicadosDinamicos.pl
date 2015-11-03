:-dynamic prueba/1.
/*
Alfredo Rigoberto Alvarez Suarez.
*/
/*
Funciones:

assert:	Idéntico a asserta

asserta:Inserta una nueva cláusula como si se hubiera escrito al principio del programa.

assertz:Inserta una nueva cláusula como si se hubiera escrito al final del programa.

retract:Elimina únicamente la primera cláusula que unifique con el argumento. Siempre se elimina por el principio del programa.

retractall:Elimina todas las cláusulas que unifiquen con el argumento.

findall:genera una lista con todas las posibles soluciones de un
predicado

bagof:Falla cuando no hay soluciones.Tiene una solución por cada
variable libre que no haya sido indicada como parte de la solución.

setof:Similar a bagof/3. La única diferencia es que setof/3 elimina las soluciones duplicadas que pudieran existir.

Fuentes:
http://programacion.net/articulo/curso_avanzado_de_prolog_166/5
consultada el 3 de marzo del 2015.
http://programacion.net/articulo/curso_avanzado_de_prolog_166/3 consultada el 3 de marzo del 2015.

http://programacion.net/articulo/tutorial_basico_de_programacion_en_prolog_58/2
consultada el 3 de marzo del 2015.

http://cs.uns.edu.ar/~grs/Logica/004-2009.Prolog_%28un%20poco%20mas%29_Avanzado.ByN.pdf
consultada el 3 de marzo del 2015.
*/

prueba(abc).
prueba(123).

prueba2(123).
prueba2(uio).



/*
Ejemplos:
9 ?- asserta(prueba(666)).
true.

10 ?- asserta(prueba(wyz)).
true.

11 ?- assert(prueba(wyz)).
true.

12 ?- assert(prueba(098)).
true.

13 ?- assertz(prueba(qwe)).
true.

14 ?- assertz(prueba(234)).
true.

17 ?- findall(Y,prueba(X),R).
R = [_G4245, _G4242, _G4239, _G4236, _G4233, _G4230, _G4227, _G4224].

18 ?- findall(Y,prueba2(X),R).
R = [_G4927, _G4924].

19 ?- setof(Y,prueba2(X),R).
X = 123,
R = [_G5094]

28 ?- setof(Y,prueba(X),R).
X = 98,
R = [_G3231]

22 ?- retract(prueba(wer)).
true.

24 ?- retract(prueba(129)).
true.

26 ?- retractall(prueba(wer)).
true.

31 ?- retractall(prueba(129)).
true.

29 ?- bagof(Y,prueba(X),R).
X = 98,
R = [_G3231] .

30 ?- bagof(Y,prueba2(X),R).
X = 123,
R = [_G3213]

*/











