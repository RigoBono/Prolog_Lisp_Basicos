;Listas en lisp 10 funciones
;1)  elt: devuelve el elemento que ocupa la posición x de la secuencia.  (elt '(a b c) 0) A
;2)	length: cuenta el número de elementos de nivel superior que hay en una lista. (length '(platon socrates aristóteles))	3
;3)	reverse: invierte el orden de los elementos de nivel superior de la secuencia.	(reverse '(platon socrates aristóteles))	(ARISTÓTELES SOCRATES PLATON)

;4)	replace: reemplaza los elementos de la seq1 con los elementos de seq2. seq1 se modifica de manera destructiva	(defvar sent '(1 2 3 4 5 6 7 8 9 0))
;(replace sent '("Second" "Third") :start1 1 :end1 9)	(1 "Second" "Third" 4 5 6 7 8 9 0)
;5)	La función null nos dirá si una lista esta vacía, es decir, que no tiene elementos. null devuelte T si la lista está vacía, caso contrario devuelte NIL. 
;("hola" "como" "estas")
;* (null lista)
;
;NIL
;*
;6)  Para saber si un objeto es una lista o no, usamos la función Listp. Los valores devueltos pueden ser T (verdadero) o nil (falso).
;("hola" "estoy a 200 km de casa" "vacaciones")
;* (listp una-lista)
;
;T
;* 
;7)	subseq es una función común que se usa para devolver parte de una lista.
;* (setq una-lista '("uno" "dos" "tres" "cuatro" "cinco")) 
;("uno" "dos" "tres" "cuatro" "cinco")
;
;* (setq otra-lista (subseq una-lista 1 3))
;("dos" "tres")
;8) Las listas se pueden unir con append:
;* (setq lista-uno '(1 2 3 4 5 6))
;(1 2 3 4 5 6)
;
;* (setq lista-dos '("esto" "es" "una" "lista"))
;("esto" "es" "una" "lista")
;
;* (setq lista-tres '("Cecy" "te" "amo")) 
;("Cecy" "te" "amo")
;
;* (setq lista-unica (append lista-uno lista-dos lista-tres))
;(1 2 3 4 5 6 "esto" "es" "una" "lista" "Cecy" "te" "amo") 
;9)	Las listas se ordenan con sort:
;* (setq lista-valores '(23 15 33 789 3 102 18)) 
;(23 15 33 789 3 102 18)
;
;* (sort lista-valores #'<)
;(3 15 18 23 33 102 789)
;10) La función rest devuelve la misma lista pero sin el primer elemento.
;* (set 'primos '(2 3 5 7 11 13 17 19 23))
;(2 3 5 7 11 13 17 19 23)

;* (set 'resto (rest primos))
;(3 5 7 11 13 17 19 23)

