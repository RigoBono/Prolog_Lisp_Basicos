;Alfredo Rigoberto Alvarez Suarez
;Lisp


;Funcion que retorna una sublista con los numeros negativos de una lista
(defun numerosNegativos (list)
(let ((aux))
;Inicia ciclo
(dotimes (i (length list))
;Inicia condicion
(
if(< (nth i list) 0)
(push (nth i list)  aux)
;Termina condicion
)

;Termina ciclo
)
(reverse aux)))


;Funcion que retorna una lista con los elementos mayores a 0 y menores a 5 de una lista
(defun MayorMenor (list)
(let ((aux))
;Inicia ciclo
(dotimes (i (length list))
;Inicia condicion
(
if(< (nth i list) 5)
;Inicia segunda condicion
(
if(> (nth i list) 1)
(push (nth i list)  aux)
;Termina segunda condicion
)

;Termina condicion
)

;Termina ciclo
)
(reverse aux)))


;Funcion que muestra la cantidad de 0's de una lista
(defun Ceros (list)
(let ((aux))
;Inicia ciclo
(dotimes (i (length list))
;Inicia condicion
(
if(= (nth i list) 0)
(push (nth i list)  aux)
;Termina condicion
)

;Termina ciclo
)
(print "Numero de ceros es:")
(print (length aux))
(reverse aux)

))


;Muestra lista sin repetidos
(defun EliminaRepetidos (list)
(let ((aux))
(dotimes (i (length list))
(if(= (count (first list) aux) 0)
(push (first list) aux)
(pop list))
(if(> (count (first list) aux) -1)
(pop list)))
(pop aux)
(reverse aux)))










;Funciones recursivas
;Combinatoria
(defun combinatorio(x y)
(if(OR (= x y) (= y 1)) (if(= x y)1 x)
(+ (combinatorio (- x 1) (- y 1)) (combinatorio (- x 1) y))
))


;De decimal a binario
(defun decimal-binario (n)
(if (= (/ n 2) 0) 'fin
(progn (setf b (mod n 2)) (format t "~a~%" b) ))
(if(= (mod n 2) 0) (decimal-binario(/ n 2))
(decimal-binario(/ (- n 1) 2)))
)

;Multiplos de 3 en una lista
(defun multiplos3 (L)
(if(null L) 'fin
(if(= (mod (car L) 3) 0) (progn (setq b (car L)) (format t "~a~%"b )(multiplos3 (cdr L))) 
(multiplos3 (cdr L))
)))
