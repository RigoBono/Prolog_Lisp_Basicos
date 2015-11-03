/*
nombre: Alfredo Rigoberto Alvarez Suarez
materia: Taller de programacion logica y funcional.
activiad: validar los dias ingresados por el usuario 
al momento de cosultar el signo. Ej: Decir falso si el usuario ingresa
30 de febreto.*/

/* horoscopo(Signo,DiaIni,MesIni,DiaFin,MesFin) <-
pertenecen al signo del horoscopo Signo los nacidos
entre el DiaIni del MesIni y el DiaFin del MesFin */

mes(1).
terminames(1,31).

mes(2).
terminames(2,28).

mes(3).
terminames(3,31).

mes(4).
terminames(4,30).

mes(5).
terminames(5,31).

mes(6).
terminames(6,30).

mes(7).
terminames(7,31).

mes(8).
terminames(8,31).

mes(9).
terminames(9,30).

mes(10).
terminames(10,31).

mes(11).
terminames(11,30).

mes(12).
terminames(12,31).


horoscopo(aries,21,3,20,4).
horoscopo(tauro,21,4,20,5).
horoscopo(geminis,21,5,20,6).
horoscopo(cancer,21,6,20,7).
horoscopo(leo,21,7,21,8).
horoscopo(virgo,22,8,22,9).
horoscopo(libra,23,9,22,10).
horoscopo(escorpio,23,10,22,11).
horoscopo(sagitario,23,11,20,12).
horoscopo(capricornio,21,12,19,1).
horoscopo(acuario,20,1,18,2).
horoscopo(piscis,19,2,20,3).





/* signo(Dia,Mes,Signo) <- los nacidos el Dia de Mes pertenecen al
signo del zodiaco Signo */


signo(Dia,Mes,Signo) :-
terminames(Mes,Y),
Dia=<Y,
horoscopo(Signo,D1,M1,D2,M2),
( (Mes=M1,Dia>=D1) ; (Mes=M2,Dia=<D2) ).



